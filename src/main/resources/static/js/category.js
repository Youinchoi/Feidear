$(function() {
	// 검색하기 버튼 클릭 시
	$('#selectSearchButton').click(function() {
//		alert($('#selectArea').val());

		// 시작 날짜 미입력 시 전부 검색되도록 아주 먼 과거로 설정
		if ($('#selectStartDate').val() == '') {
			$('#selectStartDate').val('01/01/2000');
		}		// 끝 날짜 미입력 시 전부 검색되도록 아주 먼 미래로 설정
		if ($('#selectEndDate').val() == '') {
			$('#selectEndDate').val('12/31/2030');
		}
		
		location.href = "/filteredFestivalList?fetv_area=" + $('#selectArea').val() + 
		"&fetv_startdate=" + $('#selectStartDate').val() + "&fetv_enddate=" + $('#selectEndDate').val();
//		alert($('#selectStartDate').val());
//		alert($('#selectEndDate').val());
	}); // selectSearchButton

}); // function()