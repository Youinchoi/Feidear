$(function(){
	
	//FBTI test에서 넘어온 경우 자동으로 tab pane 켜짐
	if ($('ul input#selected').val() == "test" ) {

		let testPane = $('ul.nav.nav-tabs.tp-tabs.style-two li:nth-child(4) a')
		let oriClass = testPane.attr('class')
		testPane.attr('class', oriClass+' active')
		
		let oriPane = $('ul.nav.nav-tabs.tp-tabs.style-two li:nth-child(2) a')
		oriPane.attr('class', oriClass)
		
		let testDiv = $('div.tab-content.user-tab-content div#tabs_3')
		let oriDivClass = testDiv.attr('class')
		testDiv.attr('class', oriDivClass+' show active')
		
		let oriDiv = $('div.tab-content.user-tab-content div#tabs_1')
		oriDiv.attr('class', oriDivClass);
		
	}
	
	
	
	
    $('#selectArea').on('change',function(){
        //사용자 입력값 받아옴            
         let param= { idx : $(this).val()}
         	
         	//SmartController 로 연결하는 ajax
            $.ajax({
            type : 'get',
            url: '/smart/smartPage',
            data : param,
            success : function(result){
                rs = result.replace(/'/g, '"')
                rs = JSON.parse(rs) // 문자열로 넘어온 결과값을 JSON으로 변환하기 위해 '을 "으로 변환

                $('#areaName').text($('#searchArea span.current').text()+"의 날씨")		// 날씨 제목을 지역명이 포함되도록 변경
                
                let d = new Date();
                let day = d.getDay() //오늘 요일 받아옴
                var week_array = new Array('일요일', '월요일', '화요일', '수요일', '목요일', '금요일', '토요일'); // 요일 배열
                
            let weatherTbl = $('#weatherTbl') // 3~7일 날씨 테이블
            weatherTbl.empty();
            
            let todayTbl = $('#todayTbl');	// 오늘내일 날씨 테이블
            todayTbl.empty();
            
            let thead2 = $('<thead/>')	// 테이블 컬럼 이름 생성
            
            tdy = week_array[Number(day)] // 오늘 요일
            
            day = day + 1
            if (day>6) {
               day = day - 7;
            }
            
            
            tmrw = week_array[day] // 내일 요일
            day = day + 1
            
            thead2.html('<tr><th>'+tdy+'</th><th>'+tmrw+'</th></tr>')
            
            todayTbl.append(thead2); // 오늘 내일 테이블에 컬럼을 붙임
            
            /******오늘내일 기온강수량********/
            	//<tr> 생성
               var tTr = $('<tr/>')
               
               // 오늘 기온
               var nTmp = $('<td/>')
               nTmp.attr('class', 'tmp')
               nTmp.text(rs['today']['TMP']+"℃")
               
               // 내일 기온
               var tTmp = $('<td/>')
               tTmp.attr('class', 'tmp')
               tTmp.text(rs['tomorrow']['TMP']+"℃")
               
               // 기온 tr
               tTr.append(nTmp);
               tTr.append(tTmp);
               
               //<tr> 생성
               var pTr = $('<tr/>')
               
               // 오늘 강수량
               var nPop = $('<td/>')
               nPop.attr('class', 'pop')
               nPop.text("강수 확률 : "+rs['today']['POP']+"%")
               
               // 내일 강수량
               var tPop = $('<td/>')
               tPop.attr('class', 'pop')
               tPop.text("강수 확률 : "+rs['tomorrow']['POP']+"%")               
               
               // 강수량 tr
               pTr.append(nPop);
               pTr.append(tPop);
               
               // 기온 tr, 강수량 tr을 오늘내일table에 붙임
               todayTbl.append(tTr);
               todayTbl.append(pTr);
               
            /******3일 이후부터******/
            // thead 생성
            let thead = $('<thead/>')
            thead.html('<tr><th> 요일 </th><th> 오전 강수량 </th><th> 오후 강수량 </th><th> 오전 날씨예보 </th><th> 오후 날씨예보 </th></tr>')
            
                for(var i=3;i<8;i++){
               
               if (day>6){
                  day = day - 7;
               }
               
               //변수 생성
				rnStAm = "rnSt"+i+"Am" //오전강수량
                rnStPm = "rnSt"+i+"Pm" //오후강수량
                wfAm = "wf"+i+"Am" //오전날씨예보
                wfPm = "wf"+i+"Pm" //오후 날씨예보
                taMin = "taMin"+i //최저기온
                taMax = "taMax" + i //최고기온 
               
               
               //<tr> 생성
               var tr = $('<tr/>')
               
               //요일
               var date = $('<td/>')
               date.attr('class', 'dayTd')
               date.attr('rowspan','2')
               date.text(week_array[day])
               
               //오전강수량
               var rnAm  = $('<td/>')
               rnAm.attr('class','rnAm')
               rnAm.attr('rowspan','2')
               rnAm.text(rs[rnStAm]+"%")
               
               //오후강수량
               var rnPm  = $('<td/>')
               rnPm.attr('class','rnPm')
               rnPm.attr('rowspan','2')
               rnPm.text(rs[rnStPm]+"%")
               
               //오전날씨예보
               var wfAm1  = $('<td/>')
               wfAm1.attr('class','wfAm weatherIcon')
               
               //이미지 태그 생성
               var imgAm = $('<img/>')
               var src1 = image(rs[wfAm]) //이미지 경로 지정하는 함수 호출
               imgAm.attr('src', src1)
               imgAm.attr('alt', rs[wfAm])
               
               wfAm1.html(imgAm) // td에 img 붙임
               
               //오후날씨예보
               var wfPm1  = $('<td/>')
               wfPm1.attr('class','wfPm weatherIcon')
               
               //이미지 태그 생성2
               var imgPm = $('<img/>')
               var src2 = image(rs[wfPm])
               imgPm.attr('src', src2)
               imgPm.attr('alt', rs[wfPm])
               
               wfPm1.html(imgPm)               
               
               //최저/최고 기온 tr 생성
               var tr2 = $('<tr/>')
               
               //최저기온
               var taLow = $('<td/>')
               taLow.attr('class','taLow weatherIcon')
               taLow.text("최저 : "+rs[taMin]+"℃")
               
               //최고기온
               var taHigh = $('<td/>')
               taHigh.attr('class','taHigh weatherIcon')
               taHigh.text("최고 : "+rs[taMax]+"℃")
               
               
               // tr에 td들 붙임
               weatherTbl.append(thead).trigger("create");
               tr.append(date).trigger("create");
               tr.append(rnAm).trigger("create");
               tr.append(rnPm).trigger("create");
               tr.append(wfAm1).trigger("create");
               tr.append(wfPm1).trigger("create");
               
               tr2.append(taLow).trigger("create");
               tr2.append(taHigh).trigger("create");
               
               //기존 날씨 테이블에 붙임   
               weatherTbl.append(tr).trigger("create")
               weatherTbl.append(tr2).trigger("create")
               
               //하루 늘림
               day ++;
               
                }
            },//end of success
            error : function(err){
                console.log(err);
                alert('입력되지 않았습니다.');
            }//end of error
            })//end of ajax

    })//end of change
   

    
    
    
    /*********** 이미지 경로 지정하는 함수 ***********/
    function image(state){
      var src="";
      
      // 새로운 예보를 발견할때마다 계속 추가하겠습니다....
      switch(state){
         case "맑음" :
            src = "/images/weather/sunny.gif"
            return src;
         case "구름많음" :
            src = "/images/weather/cloudy.gif"
            return src;
         case "흐림" :
            src = "/images/weather/cloudy.gif"
            return src;
         case "흐리고 비" :
            src = "/images/weather/rainy.gif"
            return src;
         case "흐리고 비/눈" :
            src = "/images/weather/cloudysnow.gif"
            return src;
      }//end of switch
   }//end of function
   
   
   
   /* FBTI-test.jsp */
	let imgs = $('#effects_wrapper .fstv-list img');
	imgs.each(function(){
		$(this).click(function(){
			//alert($(this).attr('alt'))
			chk = $(this).parent().parent().find('input:checkbox[name="fetv_no"]');
			
			if (chk.prop('checked')){
				chk.prop('checked',false);
			}
			else {
				chk.prop('checked',true);
			}
			
			//tileDiv = chk.parent();
			//tileDiv.toggleClass('selected');

		});
		
	})//end of each
	
})//end of function