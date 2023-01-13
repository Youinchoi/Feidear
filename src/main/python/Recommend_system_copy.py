#!/usr/bin/env python
# coding: utf-8

# In[2]:


import pandas as pd
import numpy as np
from surprise import SVD, accuracy
from surprise import Reader, Dataset


# In[9]:


rating = pd.read_csv("data/mldataset_202301121706.csv", encoding='utf-8')
rating = pd.DataFrame(rating, columns=["u_id","r_fetv_name","r_fetv_est"])

rating.head()


# In[10]:


rating['u_id'].value_counts()
rating['r_fetv_name'].value_counts()

# 평가한 적 없는 축제 가려냄
tab=pd.crosstab(rating['u_id'], rating['r_fetv_name'])
tab


# In[11]:


# 두 개의 집단변수를 가지고 나머지 rating을 그룹화
rating_g = rating.groupby(['u_id', 'r_fetv_name'])
rating_g.sum()
tab = rating_g.sum().unstack() # 행렬구조로 변환
tab


# In[50]:


temp = tab[tab.isna()].iloc[0] # type: ignore
temp = temp.index.to_list()
res=[]
for t in temp :
    res.append(t[-1])
res


# In[51]:


#rating 데이터셋 생성
reader = Reader(rating_scale=(1,5))
data = Dataset.load_from_df(df=rating, reader=reader)

data


# In[13]:


train = data.build_full_trainset() # 훈련셋
test = train.build_testset() # 검정셋


# In[14]:


#help(SVD)
# 모델 생성
model = SVD(n_factors=100, n_epochs=20, random_state=123)
model.fit(train) # model 생성


# In[52]:


# jungin 사용자에게 축제 추천
user_id = 'jungin' # 추천대상자
item_ids = res # 추천 대상 축제 리스트
actual_rating = 0 # 실제 평점

result = []
for item_id in item_ids :
    predict = model.predict(user_id, item_id, actual_rating)
    #print(predict)
    
    #pred = np.sort(predict, axis=0)
    #print(pred)
    temp = [predict.uid, predict.iid, predict.est]
    result.append(temp)
result.sort(key=lambda x:(x[0], x[1]), reverse=True)

num = 1
print('***',user_id,'님이 좋아하실 만한 축제 Top 3 ***')
for r in result[:3] :
    print('Top',num,'::',r[1])
    num+=1


# In[ ]:




