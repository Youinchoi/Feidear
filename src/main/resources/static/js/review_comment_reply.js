$(function(){
	

	
    //'comment' 버튼 클릭했을 때
    $('#submitBtn').click(function(event){

		
        //사용자 입력값 받아옴				
        let param = { rv_no   : Number($('input[name="rv_no"]').val()),
                     u_no : Number($('input[name="u_no"]').val()),
                     rv_cmt   : $('#rv_cmt').val()
                    };
                    
        if($('input[name="u_no"]').val()==null || $('input[name="u_no"]').val()==0){
			// alert("로그인이 필요합니다.");
			Swal.fire({
						title : '댓글 등록 불가',
						text  : '로그인이 필요합니다',
						icon  : 'error',
						confirmButtonColor: '#d33'
					});
					// 로그인 하지 않은 상태로 댓글 작성할 경우 textarea 비우기
					$('#rv_cmt').val('').change();	
					return false;
		}
        console.log(param);  
        $.ajax({
            type 	: 'post',
            url  	: '../replies/new',
            data 	: param,
            success : function(result){
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
$('#replyList').on("click","#modifyRply",function(event){

    event.preventDefault();

    var content = $(this).parents("div.media-body").find("p").text(); 	//p 태그의 값 저장
    $(this).parents("div.media-body").find("p").remove(); 				//li의 parent(ul)의 parent(div)의 자식(p태그) 삭제
        
    var input = $('<textarea/>');
    input.attr('id','mReply');
    input.val(content);													//p태그의 값을 textarea에 설정
    $(this).parents("div.media-body").append(input);					//div에 붙임

    $(this).attr('id','modifyRply2');
});//end of click

$('#replyList').on("click","#modifyRply2",function(event){			//수정 버튼을 다시 눌렀을 때 
    
    let rrno = $(this).parents("div.media-body").find('input[name="rno"]').val();
    var param = {		rno : rrno,
        replyer : $('#mReplyer').text(),
        reply : 	$('#mReply').val()
        };
        
    console.log(param);

    $.ajax({
        type:'post',
        url:'../replies/'+rrno,
        data:param,
        success : function(result){
            replyList();
        },
        error : function(err){
            alert('에러');
        }

    });//end of ajax

})//end of click(수정버튼을 다시 누름)

//삭제 버튼을 클릭했을 때

$('#rv_cmtList').on("click","#deleteRply",function(){
    let status=confirm("댓글을 삭제하시겠습니까?");
		
		if(status){
	        let rv_cmt_no=$(this).parents("ul.sinlge-post-meta").find('input[name="rv_cmt_no"]').val();
			
	        $.ajax({
	            type:'delete',
	            url:'../replies/'+rv_cmt_no,
	            success : function(result){
	                replyList();
	            },
	            error : function(err){
	                alert('에러');
	            }
	        
	        });//end of ajax
	    }//end of if
    

})//end of click




rv_cmtList(); //목록조회 함수 호출
//댓글 목록 전체 조회
function rv_cmtList(event)
{
	
    $.ajax({
        type:'get',
        url: '../replies',
        data: {rv_no : $('input[name="rv_no"]').val()},
        dataType : 'json', 				// 라이브러리 필요(pom.xml)
        success : function(result){
           
            
            let rv_cmtList = $('#rv_cmtList');
            rv_cmtList.empty();
            
            for(row of result){
				
				// 주석은 다시 달아서 보내드릴게요!!!
				var img = $('<img src="../images/blog-details/9.png" alt="img"/>')//나중에 수정하세요!
				var rv_cmt_no = $('<input type="hidden" name="rv_cmt_no"/>');
				rv_cmt_no.val(row.rv_cmt_no);
				var thumb = $('<div class="thumb"/>')	
				
				thumb.append(img).trigger("create");
				thumb.append(rv_cmt_no).trigger("create");
				//
                var h4 = $('<h4 class="title"/>');
                h4.html(row.u_no);
                
                //
                var span = $('<span class="date"/>');
                span.text(row.rv_cmt_regdate);
                
                //
                var p = $('<p/>');
                p.text(row.rv_cmt);
                
                var contentDiv = $('<div class="content"/>');
                
                contentDiv.append(h4).trigger("create");
                contentDiv.append(span).trigger("create");
                contentDiv.append(p).trigger("create");
                
                
                var div = $('<div class="single-comment-wrap"/>');
                div.append(thumb).trigger("create");
                div.append(contentDiv).trigger("create");
                
                var li = $('<li/>');
                //수정 아이콘(버튼)
                var modLi=$('<li/>');
                modLi.html('<a href="" id="modifyRply"><i class="fa fa-calendar"></i>수정</a>').trigger("create");

                //삭제 아이콘(버튼)
                var delLi=$('<li/>');
                delLi.html('<a href="" id="deleteRply"><i class="fa fa-trash-o" aria-hidden="true"></i>삭제</a>').trigger("create");

                li.append(div).trigger("create");
                if($('input[name="u_no"]').val()==row.u_no){
                    li.append(modLi).trigger("create");
                    li.append(delLi).trigger("create");						
                }
                
                
                rv_cmtList.append(li).trigger("create");
                

                
            }//end of for
            
        },//end of success
        error : function(err){
            alert('error 조회 에러에오');
            console.log(err);
        }
    });//end of ajax
}//end of rv_cmt List