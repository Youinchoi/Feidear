$(function(){
	var lat = $('#fetv_lat').val();
    var long = $('#fetv_long').val();
    var name = $('#fetv_addr').val();
	//식당 버튼을 눌렀을 때	
	$("#matjip").click(function(){		
		markUp(lat,long,name,"식당")
	})

	//주차장 버튼을 눌렀을 때	
	$("#parkingLot").click(function(){		
		markUp(lat,long,name,"주차장")
	})

	//숙소 버튼을 눌렀을 때	
	$("#hotel").click(function(){		
		markUp(lat,long,name,"숙소")
	})
	
})//end of function

function markUp(lat,long,name,where){
	// 마커를 클릭하면 장소명을 표출할 인포윈도우 입니다
    var infowindow = new kakao.maps.InfoWindow({zIndex:1});
	
	$("#map").remove();
	var mapdiv = $('<div id="map" style="width:100%;height:350px; margin-top: 2%;"></div>');
	$(".service-location-map").append(mapdiv);
	
    var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = {
    center: new kakao.maps.LatLng(lat, long), // 지도의 중심좌표
    level: 3 // 지도의 확대 레벨
    };  

    
    // 지도를 생성합니다    
    var map = new kakao.maps.Map(mapContainer, mapOption); 

    // 장소 검색 객체를 생성합니다
    var ps = new kakao.maps.services.Places(); 
    
    // 키워드로 장소를 검색합니다
    ps.keywordSearch(name+" "+where, placesSearchCB);
    
    // 키워드 검색 완료 시 호출되는 콜백함수 입니다
function placesSearchCB (data, status, pagination) {
	console.log(status)
if (status === kakao.maps.services.Status.OK) {

// 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해
// LatLngBounds 객체에 좌표를 추가합니다
var bounds = new kakao.maps.LatLngBounds();

for (var i=0; i<data.length; i++) {
displayMarker(data[i]);    
bounds.extend(new kakao.maps.LatLng(data[i].y, data[i].x));
    }       

// 검색된 장소 위치를 기준으로 지도 범위를 재설정합니다
map.setBounds(bounds);
    }
else if (status === kakao.maps.services.Status.ZERO_RESULT) {
	alert("검색 결과가 없습니다!")
}    
     
}//end of place search CB

 // 지도에 마커를 표시하는 함수입니다
function displayMarker(place) {
	
    // 마커를 생성하고 지도에 표시합니다
    var marker = new kakao.maps.Marker({
        map: map,
        position: new kakao.maps.LatLng(place.y, place.x) 
    });

    // 마커에 클릭이벤트를 등록합니다
    kakao.maps.event.addListener(marker, 'click', function() {
        // 마커를 클릭하면 장소명이 인포윈도우에 표출됩니다
        infowindow.setContent('<div style="padding:5px;font-size:12px;">' + place.place_name + '</div>');
        infowindow.open(map, marker);
    });
}//end of display marker

    
}//end of markUp






