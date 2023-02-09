import cx_Oracle as oci

import time
import folium

import psycopg2
import API

try:
    conn = psycopg2.connect(host='postgresql-feidear.alwaysdata.net', dbname='feidear_data', user='feidear',
                            password='gungang1229', port=5432)

    cur = conn.cursor()
    cur.execute('SELECT "RSTR_NAME", "RSTR_ADDR" FROM "RESTAURANT"') #테이블이랑 컬럼이름 축제테이블에 맞추기

    datas = cur.fetchall()
    for addr in datas:
        # API 파일에서 위도, 경도를 얻어옴
        wk = API.addr_to_w_k(addr[1])
        # 얻어온 값 저장 (순서대로)위도, 경도, 주소
        res2 = [str(wk[0]), str(wk[1]), addr[1]]
        print(res2)

        # 주소가 같은 행에 위도, 경도 추가 (update)
        #
        sql_test = '''
                        UPDATE "RESTAURANT" SET "RSTR_LAT" = %s , "RSTR_LONG" = %s WHERE "RSTR_ADDR" = %s
                '''
        cur.execute(sql_test, res2)
        conn.commit()

except psycopg2.DatabaseError as db_err:
    print(db_err)
finally:
    cur.close()
    conn.close()

print('*' * 100)

# **************************************
