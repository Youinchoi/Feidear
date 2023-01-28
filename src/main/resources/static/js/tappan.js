$(function() {

/*********** 내후기에서 페이징 버튼 클릭해서 넘어온 경우 자동으로 tab pane 켜짐 ***********/
	if ($('div.thumb input#myReview').val() == "on" ) {
		
		//켜져야 하는 pane (내후기 팬)
		let testPane = $('ul.nav.nav-tabs.tp-tabs.style-two li:nth-child(5) a')
		let oriClass = testPane.attr('class')
		testPane.attr('class', oriClass+' active')
	
		//원래 켜져있던 pane (내후기 팬)		
		let oriPane = $('ul.nav.nav-tabs.tp-tabs.style-two li:nth-child(1) a')
		oriPane.attr('class', oriClass)
	
		//켜져야 하는 div (내후기 div)		
		let testDiv = $('div.tab-content.user-tab-content div#tabs_6')
		let oriDivClass = testDiv.attr('class')
		testDiv.attr('class', oriDivClass+' show active')
	
		//원래 켜져있던 div (내후기 div)		
		let oriDiv = $('div.tab-content.user-tab-content div#tabs_1')
		oriDiv.attr('class', oriDivClass);
		
	}//end of if

})
