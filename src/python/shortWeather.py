# -*- coding: utf-8 -*-
import json
import requests
import datetime
from datetime import timedelta

def shortWeather():
    rResult={}
    api_key = "T4MojdMpqILz3htCY4scr1MrqfcA0bEBSnU4i4WIHKyC9QhWRtUjS3f4QfB3p2c/bercxNuVLsdZdP4ucl3IoA=="

    url="http://apis.data.go.kr/1360000/VilageFcstInfoService_2.0/getVilageFcst"

    cities_kor = ['서울/인천/경기', '강원영서', '강원영동', '대전/세종/충남', '충북', '광주/전남', '전북', '대구/경북', '부산/울산/경남', '제주']
    cities = [(60,127),(73,134), (92,131), (69,107), (67,100),(58,74), (63,89), (89,90), (98, 76), (52, 38)]
    #오늘 날짜
    today = datetime.date.today()
    tomorrow = today + timedelta(days=1)
    tomorrow= tomorrow.strftime('%Y%m%d')
    today = today.strftime('%Y%m%d')
    #지금 시간

    result = {}
    num = 0
    for c in cities:
        params ={'serviceKey' : api_key, 'pageNo' : '1', 'numOfRows' : '10000', 'dataType' : 'JSON', 'base_date' : today,
         'base_time' : '0500', 'nx' : c[0], 'ny' : c[1] }
        city = cities_kor[num]
        # print(city)
        response = requests.get(url, params=params)
        # print(response.text)
        res = json.loads(response.text)
        # print(res)
        
        res = res['response']['body']['items']['item']
        # /print(res)

        result = {}
        result2 = {}
        temp2 = {}
        for i in range(len(res)):
            if res[i]['fcstTime'] == '1200' : 
                if res[i]['fcstDate'] == today :
                    if res[i]['category']=='TMP' :
                        temp = { 'TMP' : res[i]['fcstValue'] }
                        temp2.update(temp)
                    elif res[i]['category']=='POP' :
                        temp = {'POP' : res[i]['fcstValue'] }
                        temp2.update(temp)
                    temp3 = {'today' : temp2}
                    result.update(temp3)

                elif res[i]['fcstDate'] == tomorrow :
                    if res[i]['category']=='TMP' :
                        temp = { 'TMP' : res[i]['fcstValue'] }
                        temp2.update(temp)

                    elif res[i]['category']=='POP' :
                        temp = {'POP' : res[i]['fcstValue']}
                        temp2.update(temp)

                    temp3 = {'tomorrow' : temp2}
                    result2.update(temp3)
                    result.update(result2)
                    # print(temp2)
        
        temp = { city : result }
        rResult.update(temp)
        num += 1
    # print(rResult)
    return rResult

if __name__ == "__main__":
    shortWeather()# type: ignore