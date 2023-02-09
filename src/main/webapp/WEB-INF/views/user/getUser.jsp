<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!-- header.jsp -->
<%@ include file='../header.jsp' %>
<!-- header.jsp 끝 -->
<style>
    .top-navbar .topbar-contact i {
        margin-top: 11px;
    }
</style>
   
<style>
        .word {
        display: block;
        width: 100%;
        overflow: hidden;
        text-overflow: ellipsis;
        white-space: nowrap;
        line-height: 1;
/*        height: 4.8em;*/
        text-align: right;
        word-wrap: break-word;
        -webkit-line-clamp: 1 ;
        -webkit-box-orient: vertical;
    	}
    	
    	.title {
        display: block;
        width: 100%;
        overflow: hidden;
        text-overflow: ellipsis;
        white-space: nowrap;
        line-height: 1;
/*        height: 4.8em;*/
        text-align: right;
        word-wrap: break-word;
        -webkit-line-clamp: 1 ;
        -webkit-box-orient: vertical;
        margin-top:19px;
    	}
    	
   	.single-comment-wrap a, .single-comment-wrap a:hover,
   	.single-comment-wrap a:focus, .single-comment-wrap a:active {
    text-decoration: none;
    outline: none;
    color: inherit;
    display: grid;
    text-align: left;
	}
	
	#deleteReview{
		width:1.8em;
		height:1.8em;
		position:relative;
		border-radius:4px;
		background:#F0B153;
		color:white; 
		border:none;
		text-align:-webkit-center;
		vertical-align:middle;
		margin:auto;
		cursor:pointer;
	}
	
	#XpButton {
	 display:block;
	 margin:auto;
	 float:right;
	}

	
</style>


    <!-- 상단바 밑 제목 area start -->
    <div class="breadcrumb-area jarallax" style="background-image:url(/images/index/header.jpg);">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb-inner">
                        <h1 class="page-title">MY PAGE</h1>
                        <ul class="page-list">
                            <li><a href="/index">Home</a></li>
                            <li>마이 페이지</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- 상단바 밑 제목 area End -->

    <!-- 마이페이지 본문 area start -->
    
            <!-- 마이페이지 탭팬 리스트 start -->
    <div class="user-profile-area pd-top-120">
        <div class="container">
            <div class="row" id="tabs">
                <div class="col-xl-10 col-lg-12">
                    <div class="row">
                        <div class="col-lg-4" >
                            <ul class="nav nav-tabs tp-tabs style-two">
                                <li class="nav-item">
                                    <a class="nav-link active" data-toggle="tab" href="#tabs_1"><i class="fa fa-user"></i>회원정보 변경</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" data-toggle="tab" href="#tabs_2"><i class="fa fa-window-close-o" aria-hidden="true"></i>회원 탈퇴</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link"  data-toggle="tab" href="#tabs_3"><i class="fa fa-address-card"></i>비밀번호 변경</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link"  data-toggle="tab" href="#tabs_4"><i class="fa fa-bookmark" aria-hidden="true"></i>북마크</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link"  data-toggle="tab" href="#tabs_6"><i class="fa fa-book" aria-hidden="true"></i>내 후기</a>
                                </li>
                                <li class="text-center">
                                    <a class="btn btn-yellow" href="#" id="logoutBtn"><i class="fa fa-sign-in" aria-hidden="true"></i> <span>로그아웃</span></a>
                                </li>
                            </ul>
                        </div>
            <!-- 마이페이지 탭팬 리스트 end -->
                        
                        <!-- tabpan 목록 start-->
                        
                          
                          
                       <!-- 회 원 정 보 변 경 하 기 탭 팬 -->   
                       
                        <div class="col-xl-7 col-lg-8 offset-xl-1">
                            <div class="tab-content user-tab-content">
                                <div class="tab-pane fade show active" id="tabs_1" >
                                    <div class="user-details" >
                                        <h3 class="user-details-title">회원정보 변경</h3>
                                        <form action="updateUser" id="updateUser" name="updateUser" class="tp-form-wrap" method="post"  enctype="multipart/form-data">
                                        <div class="tp-img-upload">
                                        
                                            <div class="tp-avatar-preview">
                                                <div id="tp_imagePreview"
                                                 style='background-image:url("${user.file_path}");
                                                 display:block;'>
                                                </div>
                                            </div>
                                            <div class="tp-avatar-edit">
                                                <input type='file' name="file" id="tp_imageUpload" accept=".png, .jpg, .jpeg" />
                                                <label class="btn btn-transparent" for="tp_imageUpload"><i class="fa fa-picture-o"></i>사진 변경</label>
                                                <input type="hidden" name="u_id" value="${sessionScope.u_id}"> <!--잊지말고 세션 값을 잘 받아오자ㅠ....-->
                                                <input type="hidden" name="u_no" value="${sessionScope.u_no}">
                                                <h4>ID : ${sessionScope.u_id}</h4>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-12">
                                                <label class="single-input-wrap style-two">
                                                    <span class="single-input-title">이름</span>
                                                    <input type="text" id="u_name" name="u_name" value="${user.u_name}">
                                                </label> 
                                            </div>
                                            <div class="col-lg-12">
   
                                                <label class="single-input-wrap style-two">
                                                    <span class="single-input-title">자기 소개</span>
                                                    <textarea id="u_comment" name="u_comment">${user.u_comment}</textarea>
                                                </label>
                                            </div>
                                            <div class="col-md-6">
                                                <label class="single-input-wrap style-two">
                                                    <span class="single-input-title">Email</span>
                                                    <input type="text" id="u_email" name="u_email" value="${user.u_email}">
                                                </label>
                                            </div>
                                            <div class="col-md-6">
                                                <label class="single-input-wrap style-two">
                                                    <span class="single-input-title">전화번호</span>
                                                    <input type="text" id="u_phone" name="u_phone" value="${user.u_phone}">
                                                </label>
                                            </div>
                                            <div class="col-12">
                                                <input type="button" name="updateUserBtn" id="updateUserBtn" class="btn btn-yellow mt-3 text-center" value="변경사항 저장">
                                            </div>
                                        </div>
                                    </form>
                                    </div>
                                </div>
                           <!-- 회원정보 변경 end -->

                           
                           
                                
                                
                           <!-- 회원탈퇴 start -->
                                <div class="tab-pane fade" id="tabs_2">
                                    <div class="user-verification">
                                            <div class="col-lg-8" style="padding-left: 0px;">
                                                <h3 class="user-details-title">회원 탈퇴</h3>
                                                <div class="notice"><i class="fa fa-exclamation-triangle"></i>탈퇴 시 저장된 모든 기록이 삭제됨</div>
                                                <br/>
                                            </div>
                                        <form action="deleteMember" id="deleteMember" method="post">
                                        <div class="row">
                                            <div class="col-lg-7">
                                                <label class="single-input-wrap style-two">
                                                    <input type="password" placeholder="현재 비밀번호" id="pass" name="u_pw">
                                                    <input type="hidden" id="u_idtt" name="u_id" value="${user.u_id}">
                                                </label>
                                            </div>
                                            <div class="col-lg-7">
                                                <label class="single-input-wrap style-two">
                                                    <input type="password" placeholder="비밀번호 확인" id="u_pwCheck" name="u_pwCheck">
                                                </label>
                                            </div>
                                            </div>
                                                <input type="button" class="btn btn-yellow mt-3 text-center" id="deleteMemberBtn" value="회원 탈퇴">
                                        </form>
                                    </div>
                                </div>
                           <!-- 회원탈퇴 end -->
                                
                                
                           <!-- 비밀번호 변경 start -->
                                <div class="tab-pane fade" id="tabs_3">
                                    <div class="user-settings">
                                        <h3 class="user-details-title">비밀번호 변경</h3>
                                        <form action="modifyPassword" id="modifyPassword" method="post">
                                        <div class="row">
                                            <div class="col-lg-7">
					                                <c:if test="${not empty selected and not empty sessionScope.u_id}">
					                                    <input type="hidden" name="select" value="${selected}" id="selected"/>
					                                </c:if>
                                                <label class="single-input-wrap style-two">
                                                    <span class="single-input-title mb-3">비밀번호를 변경합니다.</span>
                                                    <input type="password" placeholder="현재 비밀번호" id="u_npw" name="u_npw">
                                                    <input type="hidden" name="u_id" value="${user.u_id}">
                                                    <input type="hidden" name="u_no" value="${user.u_no}">
                                                </label>
                                            </div>
                                            <div class="col-lg-7">
                                                <label class="single-input-wrap style-two">
                                                    <input type="password" placeholder="새 비밀번호" name="u_pw" id="u_pw">
                                                </label>
                                            </div>
                                            <div class="col-lg-7">
                                                <label class="single-input-wrap style-two">
                                                    <input type="password" placeholder="새 비밀번호 확인" name="u_npwCheck" id="u_npwCheck">
                                                </label>
                                            </div>
                                        </div>
                                                <input type="button" class="btn btn-yellow mt-3 text-center" id="modifyPasswordBtn" value="변경사항 저장">
                                        </form>
                                    </div>
                                </div>
                           <!-- 비밀번호 변경 end -->
                                
                                
                           <!-- 북마크 목록 start -->
                           <div class="tab-pane fade" id="tabs_4">
                            <div class="user-recent-view">
                                <h3 class="user-details-title"><i class="fa fa-bookmark" aria-hidden="true" style="color: darkorange;"></i>&nbsp북마크 목록</h3>
                                <span><br/>
                                <hr class="six" size="36px;"><br/><br/>
                                    <div class="col-sm-8">
                                        <div class="single-destinations-list style-two">
                                            <c:forEach items="${getWishList}" var="getWishList">
                                                <input type="hidden" id="myWish" name="myWish" value="${param.myWish}"/>
                                                <p id="XButton" value=${getWishList.wish_no}>
                                                <a class="bookmark"><input name="deleteWish" type="button" class="btn btn-yellow5" value="X" style="width: 100%;"></h5></a>
                                                </p>
                                            <div>
                                                <a href="/festival/festivalDetails?fetv_no=${getWishList.fetv_no}"><img src="/festival_imgs/${getWishList.fetv_image}" alt="list"></a>
                                            </div><br>
                                                <div class="details-bookmark">
                                                    <h5 name="fetv_area" style="color: darkorange;">${getWishList.fetv_area}</h5>
                                                    <h4 name="fetv_name"><a href="/festival/festivalDetails?fetv_no=${getWishList.fetv_no}">${getWishList.fetv_name}</a></h4>
                                                    <c:if test="${not empty getWishList.fetv_startdate}">
                                                    <b style="font-size: 1.4em; color: darkorange;"><i class="fa fa-calendar-o"></i>&nbsp&nbsp&nbsp${getWishList.fetv_startdate} &nbsp&nbsp~&nbsp&nbsp ${getWishList.fetv_enddate}</b><br>
                                                    </c:if>
                                                    <c:if test="${empty getWishList.fetv_startdate}">
                                                        <b style="font-size: 1.3em; color: rgb(97, 210, 201);"><i class="fa fa-exclamation-triangle"></i>&nbsp&nbsp&nbsp일정이 업데이트 될 예정입니다</b><br>
                                                        
                                                    </c:if><br>
                                                </div><br>
                                                <hr><br>
                                            </c:forEach><br>
                                        </div>
                                    </div>
                            </div>
                        </div>
                   <!--북마크 목록  end -->
                                
                                
                           <!-- 내 후기 start -->
                           <div class="tab-pane fade" id="tabs_6">
                            <div class="user-tour-details">
                                <h3 class="user-details-title">내 후기</h3>
                                <span class="user-tour-details-title">내가 작성한 후기</span>
                                <span>| 후기 모아보기</span>
                                <div class="comments-area tour-details-review-area">
                              <c:forEach items="${getReviewList}" var="getReviewList">
                                    <ul class="comment-list mb-0">
                                        <li>
                                           <div class="single-comment-wrap">
                                                <div class="thumb">
                                                    <img src="${user.file_path}" alt="img">
                                                    <input type="hidden" id="myReview" name="myReview" value="${param.myReview}"/>
                                                </div>
                                                <div style="text-align:right;">
                                                	<p id="XpButton" value=${getReviewList.rv_no}>
                                                	<a class="reviews">
                                                    <input name="deleteReview" id="deleteReview"
                                                    type="button" value="X">
                                                	</a>
                                                	</p>
                                                </div>
                                                    <a href="/reviews/getReview?rv_no=${getReviewList.rv_no}&u_no=${getReviewList.u_no}">
                                                <div class="content" style="text-align:right;">
                                                    <h4 class="title">${getReviewList.rv_title}</h4>
                                                    <span class="date" style="padding-top:unset;">${getReviewList.rv_regdate}</span>
                                                    <p class="word">${getReviewList.rv_content}</p>
                                                </div>
                                                    </a>
                                            </div>
                                        </li>
                                    </ul>
                          </c:forEach>           
                                </div>
                                
                    <!-- 페이징 시작 -->
                    <div class="row">
                        <div class="col-lg-12  text-md-center text-left">
                            <div class="tp-pagination text-md-center text-left d-inline-block mt-4">
                                <ul>
                                	<c:if test="${pageMaker.prev}">
                                    	<li><a class="prev page-numbers" href="/user/getUser${pageMaker.makeQuery(pageMaker.startPage - 1)}&u_no=${sessionScope.u_no}"><i class="la la-long-arrow-left"></i></a></li>
                                	</c:if>
                                	<c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="idx">                                	
                                    <li><a href="/user/getUser${pageMaker.makeQuery(idx)}&u_no=${sessionScope.u_no}&myReview=on">
                                    	<!--현재 파라미터로 넘겨받은 페이지의 숫자가 생성되는 숫자와 같으면(현재 페이지) -->
                                    	<c:if test="${param.page eq idx}">
                                    	<span class="page-numbers current">${idx}</span>
                                    	</c:if>
                                    	
                                    	<!--현재 파라미터로 넘겨받은 페이지의 숫자가 생성되는 숫자와 다르면(나머지 페이지) -->
                                    	<c:if test="${param.page ne idx}">
                                    	<span class="page-numbers">${idx}</span>
                                    	</c:if>
                                    	
                                    	</a></li>
                                	</c:forEach>
                                	<!-- 
                                    <li><span class="page-numbers current">2</span></li>
                                    <li><a class="page-numbers" href="#">3</a></li>
                                	-->                                	
                                    <c:if test="${pageMaker.next && pageMaker.endPage > 0}">
                                    	<li><a class="next page-numbers" href="/user/getUser${pageMaker.makeQuery(pageMaker.endPage + 1)}&u_no=${sessionScope.u_no}&myReview=on"><i class="la la-long-arrow-right"></i></a></li>
                                	</c:if> 
                                </ul>                          
                            </div>
                        </div>
                    </div>
                    <!-- 페이징 끝 -->       

                            </div>
                        </div>
                    </div>
                </div>
                   <!-- 내 후기 end -->
                       <!-- tabpan 목록 end-->
                    
                    </div>
                </div> 
            </div>
        </div>
    </div>
    <!-- 마이페이지 본문 area End -->
    
    <!-- 뉴스레터 area Start -->
    <div class="newslatter-area pd-top-120">
       
    </div>
    <!-- 뉴스레터 area End -->
    
    <!-- Additional plugin js -->
    <script src="../js/jquery-2.2.4.min.js"></script>
    <script src="../js/popper.min.js"></script>
    <script src="../js/bootstrap.min.js"></script>
    <script src="../js/jquery.magnific-popup.js"></script>
    <script src="../js/owl.carousel.min.js"></script>
    <script src="../js/wow.min.js"></script>
    <script src="../js/slick.js"></script>
    <script src="../js/waypoints.min.js"></script>
    <script src="../js/jquery.counterup.min.js"></script>
    <script src="../js/imagesloaded.pkgd.min.js"></script>
    <script src="../js/isotope.pkgd.min.js"></script>
    <script src="../js/swiper.min.js"></script>
    <script src="../js/jquery.nice-select.min.js"></script>
    <script src="../js/jquery-ui.min.js"></script>
    <script src="../js/jarallax.min.js"></script>

    <!-- 탭팬 새로고침 JS -->
        <script src="../js/tappan.js"></script>

    <!-- main js -->
    <script src="../js/main.js"></script>

    <!-- file js -->
    <script src="../js/uploadphotos.js"></script>
    
    <script type="text/javascript">
    
	    function selectAll(selectAll)  {
	         const checkboxes 
	            = document.querySelectorAll('input[type="checkbox"]');
	         
	         checkboxes.forEach((checkbox) => {
	           checkbox.checked = selectAll.checked
	         })
	       }// end selectAll 
	       
	       
	    //회원정보 변경 탭
	    
	    //이메일 공백 or @ 없이 입력할 시 
	    $('#updateUserBtn').click(function() {
	   var inputemail = $("#u_email").val();
	   var findString = "@";
        if(inputemail == "" | inputemail.indexOf(findString) == -1){
           Swal.fire({
                title : '변경 불가',
                text : '이메일을 정확히 입력해주세요 !',
                icon : 'error',
                confirmButtonColor: '#d33'
              });
            return false;
        }
        
        //전화번호 공백 or 13자 이하로 입력할 시 
        var inputtel = $("#u_phone").val();
        if(inputtel == "" | inputtel.length <13 ){
           Swal.fire({
                title : '변경 불가',
                text : '연락처를 정확히 입력해주세요 !',
                icon : 'error',
                confirmButtonColor: '#d33'
              });
            return false;
        }
       
       //모든 조건 만족 시 
       Swal.fire({
           title : '변경 성공',
           text : '회원 정보가 정상적으로 변경되었습니다!',
           icon : 'success',
           confirmButtonColor: '#F0B153'
         }).then((result) => {
         if (result.isConfirmed) {
            $("#updateUser").submit()
            }
          });
	    	
	    })
	        
	    //비밀번호 변경 탭    
	    $('#modifyPasswordBtn').click(function() {
	  
	      	//예전 비밀번호 확인(모델 값 가져와서 변수에 담을 때 "" 안에 안 넣으면 인식 못함)
	    	var oldPassword = "${user.u_pw}";
	    	var oldPasswordCheck = $('#modifyPassword').find("input[name='u_npw']").val();
	    	
	    	//새로 바뀐 비밀번호 중복 확인
	    	var newPassword = $('#modifyPassword').find("input[name='u_pw']").val();
	    	var newPasswordCheck = $('#modifyPassword').find("input[name='u_npwCheck']").val();    
	    	
	    	if(oldPassword !== oldPasswordCheck){
	    		Swal.fire({
            		title : '접근 불가',
                    text : '입력하신 현재 비밀번호가 일치하지 않습니다!',
                    icon : 'error',
                    confirmButtonColor: '#d33'
            	})
		    		return false;	    		
	    	}
	    	
		    if(newPassword !== newPasswordCheck) {
		    	Swal.fire({
            		title : '접근 불가',
                    text : '변경할 비밀번호가 일치하지 않습니다!',
                    icon : 'error',
                    confirmButtonColor: '#d33'
            	})
		    	return false;
		    }
		    
	    Swal.fire({
           title : '변경 완료',
           text : '비밀번호 변경이 완료되었습니다.',
           icon : 'success',
           confirmButtonColor: '#F0B153'
         }).then((result) => {
         if (result.isConfirmed) {
            $("#modifyPassword").submit()
            }
          }); 	
	    
	    });//end modifyPassword
	    
	   //회원 탈퇴 탭 
	   $('#deleteMemberBtn').click(function() {	//회원탈퇴 버튼 클릭 시 
	   
	   		var password = "${user.u_pw}";
	   		var nowPassword = $('#deleteMember').find("input[name='u_pw']").val();
	   		var nowPasswordCheck = $('#deleteMember').find("input[name='u_pwCheck']").val();
	    	
	   		if(password !== nowPassword){
	   			Swal.fire({
            		title : '접근 불가',
                    text : '입력하신 비밀번호가 일치하지 않습니다!',
                    icon : 'error',
                    confirmButtonColor: '#d33'
            	})
				return false;	   
	   		}
	   		
	   		if(nowPassword !== nowPasswordCheck){	   			
	   			Swal.fire({
            		title : '접근 불가',
                    text : '입력하신 비밀번호들이 일치하지 않습니다!',
                    icon : 'error',
                    confirmButtonColor: '#d33'
            	})
				return false;	   
	   		}	   			

		//비밀번호 둘 다 일치할 시
	   		Swal.fire({
            title: '정말로 삭제하시겠습니까?',
            text: "회원 탈퇴 시 모든 정보가 삭제됩니다!",
            icon: 'warning',
            showCancelButton: true,
            confirmButtonColor: '#F0B153',
            cancelButtonColor: '#d33',
            confirmButtonText: '회원 탈퇴'
          }).then((result) => {
            if (result.isConfirmed) {
              Swal.fire({
                title : '탈퇴 성공',
                text : '회원 탈퇴가 완료되었습니다.',
                icon : 'success',
                confirmButtonColor: '#F0B153'
              }).then((result) => {
              	$("#deleteMember").submit()
                   })//END THEN
            }//end if
          })//END THEN
	   
	   });//회원 탈퇴 end 
	   
	  //전화번호입력시 자동 하이픈 해주는 함수
      var autoHypenPhone = function(str){
          str = str.replace(/[^0-9]/g, '');
          var tmp = '';
          if( str.length < 4){
              return str;
          }else if(str.length < 7){
              tmp += str.substr(0, 3);
              tmp += '-';
              tmp += str.substr(3);
              return tmp;
          }else if(str.length < 11){
              tmp += str.substr(0, 3);
              tmp += '-';
              tmp += str.substr(3, 3);
              tmp += '-';
              tmp += str.substr(6);
              return tmp;
          }else{              
              tmp += str.substr(0, 3);
              tmp += '-';
              tmp += str.substr(3, 4);
              tmp += '-';
              tmp += str.substr(7);
              return tmp;
          } 
          return str;
    }
    
    //전화번호 칸의 값을 받아옴
    var tel = document.getElementById('u_phone');
	//전화번호 칸의 값이 바뀌면
    tel.onkeyup = function(){
      console.log(this.value);
      //함수 호출하여 하이픈 넣어줌
      this.value = autoHypenPhone( this.value ) ;  
    }
    //전화번호입력시 자동 하이픈 end
    
    
    //로그아웃 alert 창 띄우기
    $('#logoutBtn').click(function() {
    	Swal.fire({
            title: '로그아웃 하시겠습니까?',
            text: "확인을 누를 시 메인 화면으로 이동합니다.",
            icon: 'warning',
            showCancelButton: true,
            confirmButtonColor: '#F0B153',
            cancelButtonColor: '#d33',
            confirmButtonText: '로그아웃'
          }).then((result) => {
            if (result.isConfirmed) {
              Swal.fire({
                title : '로그아웃 성공',
                text : '메인으로 이동합니다.',
                icon : 'success',
                confirmButtonColor: '#F0B153'
              }).then((result) => {
              	location.href='/user/logout';
                   })//END THEN
            }//end if
          })//END THEN
        })    

    // 북마크 삭제버튼 누르면 뜨게 함
    $('.bookmark').click(function(){
    	//for each 문이 돌아가는 행 안에서 선택한 버튼의 부모의 value를 가져오기
		var th = $(this).parent().attr('value');
    	Swal.fire({
            title: '정말 삭제하시겠습니까?',
            text: "확인을 누를 시 북마크가 삭제됩니다.",
            icon: 'warning',
            showCancelButton: true,
            confirmButtonColor: '#F0B153',
            cancelButtonColor: '#d33',
            confirmButtonText: '확인'
          }).then((result) => {
            if (result.isConfirmed) {
              Swal.fire({
                title : '삭제 성공',
                text : '북마크가 삭제되었습니다.',
                icon : 'success',
                confirmButtonColor: '#F0B153'
              }).then((result) => {
              	location.href="/user/deleteWish?wish_no="+th;
                   })//END THEN
            }//end if
          })//END THEN
    })


    
    //내 후기 삭제버튼 누르면 뜨게 함
    $('.reviews').click(function(){
    	//for each 문이 돌아가는 행 안에서 선택한 버튼의 부모의 value를 가져오기
		var th = $(this).parent().attr('value');
    
    	Swal.fire({
            title: '정말 삭제하시겠습니까?',
            text: "확인을 누를 시 게시글이 삭제됩니다.",
            icon: 'warning',
            showCancelButton: true,
            confirmButtonColor: '#F0B153',
            cancelButtonColor: '#d33',
            confirmButtonText: '확인'
          }).then((result) => {
            if (result.isConfirmed) {
              Swal.fire({
                title : '삭제 성공',
                text : '게시글이 삭제되었습니다.',
                icon : 'success',
                confirmButtonColor: '#F0B153'
              }).then((result) => {
              	location.href="/user/deleteMyReview?rv_no="+th;
                   })//END THEN
            }//end if
          })//END THEN
    })

    </script>

<jsp:include page="../footer.jsp"></jsp:include>

</body>
</html>