#!/usr/bin/env python
# coding: utf-8

# 데이터프레임으로 바꿔주는 함수
def query_postgreSQL(query):
     import pandas as pd
     
     # postgreSQL 연결해주는 패키지 : 안깔려 있다면 설치하기
     import psycopg2 as pg
     from datetime import datetime
    # DB Connection
     conn = pg.connect(host="postgresql-feidear.alwaysdata.net", dbname="feidear_data", user="feidear_ji",
                            port="5432",
                            password="feidear1234")
     # Get a DataFrame

     query_result = pd.read_sql(query, conn) # type: ignore 
     # Close connection
     conn.close()
 
     return query_result

# 축제 추천 함수
def getRecommend(user):
    import pandas as pd
    import numpy as np

    # 커맨드창에 아래 명령어 입력해서 surprise 패키지 설치!!!
    # conda install -c conda-forge scikit-surprise

    from surprise import SVD, accuracy
    from surprise import Reader, Dataset
    
    ##-- SQL query
    query = """
        SELECT *
            FROM mldataset
    """

    rating = query_postgreSQL(query) # mldataset DB에 있는 정보를 dataframe으로 바꿈.
    rating = pd.DataFrame(rating, columns=["u_id","r_fetv_name","r_fetv_est"]) #사용자 id, 축제 이름, 축제 평가 정보만 컬럼으로 지정하여 dataframe 생성


    rating['u_id'].value_counts()
    rating['r_fetv_name'].value_counts()

    # 평가한 적 없는 축제 가려냄
    tab=pd.crosstab(rating['u_id'], rating['r_fetv_name'])

    # 두 개의 집단변수를 가지고 나머지 rating을 그룹화
    rating_g = rating.groupby(['u_id', 'r_fetv_name'])
    rating_g.sum()
    tab = rating_g.sum().unstack() # 행렬구조로 변환

    # Nan 값이 있는 축제 이름을 list로 저장함
    temp = tab.loc['jungin'][ tab.loc[user].isna() ]
    temp = temp.index.to_list()

    res=[]
    for t in temp :
        res.append(t[-1])

    #rating 데이터셋 생성
    reader = Reader(rating_scale=(1,5))
    data = Dataset.load_from_df(df=rating, reader=reader)

    train = data.build_full_trainset() # 훈련셋
    test = train.build_testset() # 검정셋


    #help(SVD)
    # SVD 모델 생성
    model = SVD(n_factors=100, n_epochs=20, random_state=123)
    model.fit(train) # model 생성

    # jungin 사용자에게 축제 추천
    user_id = user # 추천대상자
    item_ids = res # 추천 대상 축제 리스트
    actual_rating = 0 # 실제 평점

    result = []
    for item_id in item_ids :

        # 모델 예측
        predict = model.predict(user_id, item_id, actual_rating)

        # 예측 결과 (사용자아이디, 추천하는 축제 이름, 예상 평점) 를 배열로 저장함
        temp = [predict.uid, predict.iid, predict.est]
        result.append(temp)

    result.sort(key=lambda x:(x[0], x[2]), reverse=True) # 평점 순으로 정렬 (평점이 높은 것이 앞으로 오도록 함)
    
    # print(result)
    recomm = ""
    num = 1
    # print('***',user_id,'님이 좋아하실 만한 축제 Top 3 ***')
    for r in result[:6] :
        print('Top',num,'::',r[1])
        num+=1
        recomm += r[1]+","
    # print(recomm)
    return recomm

if __name__=="__main__" :

    result = getRecommend('jungin')



