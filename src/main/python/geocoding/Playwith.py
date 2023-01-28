import cx_Oracle as oci

import time
import folium

import psycopg2
import API
try:
    conn = psycopg2.connect(host='postgresql-feidear.alwaysdata.net', dbname='feidear_data',user='feidear',password='gungang1229',port=5432)



    cur = conn.cursor()
    cur.execute('SELECT "PLAY_NAME", "PLAY_ADDR" FROM "PLAYWITH"')

    datas = cur.fetchall()
    for addr in datas:
        # API 파일에서 위도, 경도를 얻어옴
        wk = API.addr_to_w_k(addr[1])



        # 얻어온 값 저장 (순서대로)위도, 경도, 주소
        res2 = [str(wk[0]), str(wk[1]), addr[1]]
        print(res2)

        # 주소가 같은 행에 위도, 경도 추가 (update)
        sql2 = '''
                UPDATE "PLAYWITH" SET "PLAY_LAT" = :0 , "PLAY_LONG" = :1 WHERE "PLAY_ADDR" = :2
                '''
        # print(sql2)
        sql_test = '''
                        UPDATE "PLAYWITH" SET "PLAY_LAT" = %s , "PLAY_LONG" = %s WHERE "PLAY_ADDR" = %s
                '''
        cur.execute(sql_test, res2)

except psycopg2.DatabaseError as db_err:
    print(db_err)

# PostgreSQL의 Select 문 작성 : DB에 있는 주소 받아오기
# datas = []



cur.close()

print('*'*100)

# **************************************
conn.commit()
conn.close()



