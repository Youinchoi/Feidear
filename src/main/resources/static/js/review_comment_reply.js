$(function(){
	

	
    //'comment' 버튼 클릭했을 때
    $('#submitBtn').click(function(event){

        //사용자 입력값 받아옴				
        let param = { rv_no   : Number($('input[name="rv_no"]').val()),
                      u_no 	  : Number($('input[name="u_no"]').val()),
                      rv_cmt  : $('#rv_cmt').val(),
                      u_id 	  : $('#u_id').val()
                    };
                    
        $.ajax({
            type 	: 'post',
            url  	: '../replies/new',
            data 	: param,
            success : function(result){
					  $('#rv_cmt').val(''); 		// 댓글 저장 후 비우기
                	  rv_cmtList();					//댓글목록 다시 조회함.
            },
            error : function(err){
                console.log(err);
                alert('입력되지 않았습니다.ㅜㅜ');
            }//end of error
        })//end of ajax
        
    })//end of click
	
})//end of function


//수정 버튼을 클릭했을 때
$('#rv_cmtList').on("click","#modifyRply",function(event){

    //event.preventDefault();
	
    var content = $(this).parents("div.single-comment-wrap").find("p").text(); 	//p 태그의 값 저장
    //alert(content);
    // 수정할 경우 댓글 내용 끝에 (수정됨) 추가
    var idx = content.indexOf('( 수정됨 )'); 
    
    // 수정한 경우('수정됨'이 있을 경우), (수정됨) 삭제 > 계속 (수정됨)이 누적되지 않도록
    if (idx != -1){
	    content = content.slice(0, -8);	
	}
    
    
    // 수정할 댓글의 내용을 지워주기
    $(this).parents("div.single-comment-wrap").find("p").remove(); 				//li의 parent(ul)의 parent(div)의 자식(p태그) 삭제
    
    // 수정 버튼 누른 댓글 textarea 화면 크기 조정 ([참고] https://bydawn25.tistory.com/44) ([참고2] https://velog.io/@seungsang00/HTML-JacaScript-%ED%95%A8%EC%88%98%EB%A1%9C-textarea-%EB%86%92%EC%9D%B4-%EC%9E%90%EB%8F%99%EC%A1%B0%EC%A0%88%ED%95%98%EA%B8%B0)  
    // ([참고3] https://joyful-development.tistory.com/36)
    var input = $('<textarea rows="2" style="overflow-y: none; resize: none; width:100%; border-radius: 5px; border-color:#e8e7e3;"/>');
	
    input.attr('id','mReply');
    input.val(content);													//p태그의 값을 textarea에 설정
    $(this).parents("div.single-comment-wrap").find("div.content").append(input);					//div에 붙임

    $(this).attr('id','modifyRply2');
});//end of click


// 수정한 내용 DB에 update
$('#rv_cmtList').on("click","#modifyRply2",function(event){				//수정 버튼을 다시 눌렀을 때 
    
    let rv_no = $('input[name="rv_no"]').val();
    let cmt_no = $(this).parent().parent().parent().find('input[name="rv_cmt_no"]');
    var param = {	rv_cmt_no 	: Number(cmt_no.val()),
        			rv_cmt 		: $('#mReply').val() + " ( 수정됨 )"
        };
    //console.log(param);

    $.ajax({
        type:'post',
        url:'../replies/'+rv_no,
        data:param,
        success : function(result){
            rv_cmtList();
        },
        error : function(err){
            alert('수정_에러');
        }

    });//end of ajax

})//end of click(수정버튼을 다시 누름)

//삭제 버튼을 클릭했을 때
$('#rv_cmtList').on("click","#deleteRply",function(){
				
	Swal.fire({
			    title: '삭제 하시겠습니까?',
			    text: "버튼을 누를 시 댓글이 삭제됩니다.",
			    icon: 'warning',
			    showCancelButton: true,
			    confirmButtonColor: '#F0B153',
			    cancelButtonColor: '#d33',
			    confirmButtonText: '삭제'
	 }).then((result) => {
	    if (result.isConfirmed) {
		        $.ajax({
					type: "POST",
		            data: {rv_cmt_no: $(this).parent().parent().parent().find('input[name="rv_cmt_no"]').val()},
		            url: "../deleteReply",
		            success : function(result){
							  rv_cmtList();
		            },
		            error : function(err){
		                alert('에러'+err);
		            } // end of error
					        
	        	});//end of ajax
	        	
	    }//end if
	  })//END THEN	

})//end of click




rv_cmtList(); //목록조회 함수 호출
//댓글 목록 전체 조회
function rv_cmtList(event){
	
    $.ajax({
        type:'get',
        url: '../replies',
        data: {rv_no : $('input[name="rv_no"]').val()},
        dataType : 'json', 				// 라이브러리 필요(pom.xml)
        success : function(result){
            let rv_cmtList = $('#rv_cmtList');
            rv_cmtList.empty();
            
            for(row of result){
				
				// 사용자 프로필 사진을 등록하지 않았을 경우에 디폴트 사진
				if(row.u_file_path==null || row.u_file_path==undefined){
					var img = $('<img src="/upload_img_file/부적0.png" alt="img">')
				} else{
					var img = $('<img src="'+row.u_file_path+'" alt="img">')					
				}
				var rv_cmt_no = $('<input type="hidden" name="rv_cmt_no"/>');
				
				
				rv_cmt_no.val(row.rv_cmt_no);
				var thumb = $('<div class="thumb"/>')	
				
				thumb.append(img).trigger("create");
				thumb.append(rv_cmt_no).trigger("create");
				
				// h4 태그에 댓글 작성자 번호 넣기
                var h4 = $('<h4 class="title"/>');
                h4.html(row.u_id);
                
                // span 태그에 댓글 작성일자 넣기
                var span = $('<span class="date"/>');
                span.text(row.rv_cmt_regdate);
                
                // p 태그에 댓글 내용 넣기
                var p = $('<p/>');
                p.text(row.rv_cmt);
                
                var contentDiv = $('<div class="content"/>');
                
                contentDiv.append(h4).trigger("create");
                contentDiv.append(span).trigger("create");
                contentDiv.append(p).trigger("create");
                
                
                var div = $('<div class="single-comment-wrap"/>');
                div.append(thumb).trigger("create");
                div.append(contentDiv).trigger("create");
                
                var table = $('<table style="text-align:center;"/>');
                
                
                var li = $('<li/>');
                //수정 아이콘(버튼)
                var modLi=$('<td/>');
                modLi.html('<div id="modifyRply" class="btn btn-transparent" style="border:none; margin: 1vw;"><i class="fa fa-pencil-square-o" aria-hidden="true" style="padding-left:1em; padding-top:1em;"></i>수정</div>').trigger("create");

                //삭제 아이콘(버튼)
                var delLi=$('<td/>');
                delLi.html('<div id="deleteRply" class="btn btn-transparent" style="border:none; margin: 1vw;"><i class="fa fa-trash-o" aria-hidden="true" style="padding-left:1em; padding-top:1em;"></i>삭제</div>').trigger("create");
				
                                                            
               
                
                if($('input[name="u_no"]').val()==row.u_no || $('input[name="u_no"]').val()==1){
                    table.append(modLi).trigger("create");
                    table.append(delLi).trigger("create");
                    
                    div.append(table).trigger("create");					
                }
                li.append(div).trigger("create");
                rv_cmtList.append(li).trigger("create");
                
            }//end of for
            
        },//end of success
        error : function(err){
            alert('error 조회 에러에오');
            console.log(err);
        }
    });//end of ajax
}//end of rv_cmt List