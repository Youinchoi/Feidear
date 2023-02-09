# -*- coding: utf-8 -*-
"""
기상청 오픈 API 중기예보 조회 서비스
사용 기간 : 23.01.05 ~ 25.01.05 (2년간)
위치 기반 어쩌구 안됩니다 : 사업 사용 승인? 서류 받아야 사용자 위치를 받아서 쓸 수 있다고 함...
"""
import json
import requests
import shortWeather as s
from datetime import datetime

def GetWeatherAfter3Days(idx):
    # 인증키 (Decoding) : 안될 경우  Encoding으로 변경
    api_key = "T4MojdMpqILz3htCY4scr1MrqfcA0bEBSnU4i4WIHKyC9QhWRtUjS3f4QfB3p2c/bercxNuVLsdZdP4ucl3IoA=="

    url = 'http://apis.data.go.kr/1360000/MidFcstInfoService/getMidLandFcst' # 3~7일째 날씨 예보 url
    url2 = 'http://apis.data.go.kr/1360000/MidFcstInfoService/getMidTa'       # 3~7일째 기온 url

    # 중기육상예보구역 코드 정보
    cities = ['11B00000', '11D10000', '11D20000', '11C20000', '11C10000', '11F20000', '11F10000', '11H10000',
              '11H20000',
              '11G00000']
    cities_kor = ['서울/인천/경기', '강원영서', '강원영동', '대전/세종/충남', '충북', '광주/전남', '전북', '대구/경북', '부산/울산/경남', '제주']

    # 중기기온예보구역 코드 정보
    cities_t = ['11B10101', '11D10301', '11D20501', '11C20401', '11C10301', '11F20501', '11F10201', '11H10701', '11H20201', '11G00201']

    #오늘 날짜
    today = datetime.today().strftime("%Y%m%d") + "0600"
    # print(today)
    # print(type(today))

    rResult1 = {}
    num = 0
    # 중기육상예보구역 : 맑음 / 흐림 / 비 / 눈 ... 등을 표시
    for c in cities:
        params = {'serviceKey': api_key, 'pageNo': '1', 'numOfRows': '10', 'dataType': 'JSON', 'regId': c,
                  'tmFc': today}

        response = requests.get(url, params=params)
        res = json.loads(response.text)

        # rnSt 3 Am : 강수확률 3일후 오전
        # wf 3 Am : 날씨예보 3일후 오전
        res = res['response']['body']['items']['item'][0]

        rWeather = {}
        # print('=' * 20)
        # print('지역명 :', cities_kor[num])
        city = cities_kor[num]
        for day in range(3, 8):
            # print('*' * 5, day, '일', '*' * 5)

            # 강수
            rnAM = "rnSt" + str(day) + "Am"
            rnAM.replace(" ", "")

            rnPM = "rnSt" + str(day) + "Pm"
            rnPM.replace(" ", "")

            # 날씨 예보
            wfAM = "wf" + str(day) + "Am"
            wfAM.replace(" ", "")

            wfPM = "wf" + str(day) + "Pm"
            wfPM.replace(" ", "")

            weather = { rnAM : res[rnAM], rnPM : res[rnPM], wfAM : res[wfAM], wfPM : res[wfPM] }
            # print(weather)
            rWeather = dict(rWeather, **weather)
        # print(city)
        result = { city : rWeather }
        rResult1 = dict(rResult1, **result)
        num += 1

    num = 0 #도시 순서 초기화

    rResult2 = {}
    # 중기기온예보구역 : 영하 0도, 엉샹 3도 ... 등을 표시
    for c in cities_t:
        params = {'serviceKey': api_key, 'pageNo': '1', 'numOfRows': '10', 'dataType': 'JSON', 'regId': c,
                  'tmFc': today}

        response = requests.get(url2, params=params)
        res = json.loads(response.text)
        
        # rnSt 3 Am : 강수확률 3일후 오전
        # wf 3 Am : 날씨예보 3일후 오전
        res = res['response']['body']['items']['item'][0]

        rWeather = {}
        # print('=' * 20)
        # print('지역명 :', cities_kor[num])
        city = cities_kor[num]
        for day in range(3, 8):
            # print('*' * 5, day, '일', '*' * 5)

            # 최저 기온
            taMin = "taMin" + str(day)
            taMin.replace(" ", "")

            # 최고 기온
            taMax = "taMax" + str(day)
            taMax.replace(" ", "")

            weather = { taMin : res[taMin], taMax : res[taMax] }
            # print(weather)
            rWeather = dict(rWeather, **weather)
        # print(city)
        result = { city : rWeather }

        rResult2 = dict(rResult2, **result)
        num += 1
    # print(rResult2)

    # 중기 예보끼리 합치기
    rResult={}
    temp = list(rResult2.keys())
    # print("temp :",temp)
    for t in temp:
        if t in rResult1:
            temp1 = dict(rResult1[t], **rResult2[t])
            rResult[t] = temp1
        else:
            rResult1[t] = rResult2[t]
    

    # 중기예보 + 단기예보
    sResult = s.shortWeather()
    temp = list(sResult.keys())
    # print("temp :",temp)
    for t in temp:
        if t in rResult:
            temp1 = dict(rResult[t], **sResult[t])
            rResult[t] = temp1
        else:
            rResult[t] = sResult[t]


    city = cities_kor[idx]
    # print(rResult[city])
    return rResult[city]

    

if __name__ == "__main__":
    GetWeatherAfter3Days(4)# type: ignore