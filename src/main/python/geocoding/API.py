import json
import requests

# [2] 저장 시스템 -- DB에 위도, 경도 컬럼 추가

# API 키 -- kakao map 변환 이용
apikey = "e85db18bcff592af4a1796d3a00d3291"

# 주소 입력받아서 좌표로 변환
def addr_to_w_k(addr):
    try:
        url = 'https://dapi.kakao.com/v2/local/search/address.json?query={address}'.format(address=addr)
        headers = {"Authorization": "KakaoAK " + apikey}
        result = json.loads(str(requests.get(url, headers=headers).text))
        # print('rs : ',result)
        match_first = result['documents'][0]['address'] #주소

        return float(match_first['y']), float(match_first['x'])  # 튜플 형태로 위도, 경도 반환

    except: # 위도와 경도를 찾을 수 없는 경우
        return '찾을 수 없음', '찾을 수 없음'

# print(addr_to_w_/k('경기도 평택시 고덕면 고덕여염6길 86')) -- 위도, 경도 못받아옴

# addr_to_w_k();