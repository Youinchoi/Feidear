<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ include file='../header.jsp' %>
<style>
        .word {
        display: block;
        width: 100%;
        overflow: hidden;
        text-overflow: ellipsis;
        white-space: normal;
        line-height: 1.2;
/*        height: 4.8em;*/
        text-align: left;
        word-wrap: break-word;
        display: -webkit-box;
        -webkit-line-clamp: 3 ;
        -webkit-box-orient: vertical;
    	}
    	
   	.single-comment-wrap a, .single-comment-wrap a:hover,
   	.single-comment-wrap a:focus, .single-comment-wrap a:active {
    text-decoration: none;
    outline: none;
    color: inherit;
    display: grid;
    text-align: left;
	}
</style>


    <!-- 상단바 밑 제목 area start -->
    <div class="breadcrumb-area jarallax" style="background-image:url(/images/bg/1.png);">
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
            <div class="row">
                <div class="col-xl-10 col-lg-12">
                    <div class="row">
                        <div class="col-lg-4">
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
                                    <a class="nav-link"  data-toggle="tab" href="#tabs_4"><i class="fa fa-bookmark" aria-hidden="true"></i>내 찜 목록</a>
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
                                    <div class="user-details">
                                        <h3 class="user-details-title">회원정보 변경</h3>
                                        <form action="updateUser" id="updateUser" name="updateUser" class="tp-form-wrap" method="post">
                                        <div class="tp-img-upload">
                                        
                                        <!-- 사진 업로드 파일VO 설정했던 걸로 설정 다시하고 받아와야함 -->
                                        
                                            <div class="tp-avatar-preview">
                                                <div id="tp_imagePreview" value="${user.u_image}" style="${user.u_image}">
                                                </div>
                                                	<input type="image" value="${user.u_image}">
                                            </div>
                                            <div class="tp-avatar-edit">
                                                <input type='file' name="u_image" id="tp_imageUpload"accept=".png, .jpg, .jpeg" />
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
                                
                                
                           <!-- 내찜목록 start -->
                                <div class="tab-pane fade" id="tabs_4">
                                    <div class="user-recent-view">
                                        <h3 class="user-details-title">내 찜 목록</h3>
                                          <span>
                                          <input type="checkbox" value='selectall' onclick='selectAll(this)'/>전체 선택
                                        &nbsp;
                                          <input type="button" class="btn btn-yellow mt-3 text-center" value="찜 삭제">
                                          </span>
                                        <br/><br/>
                                        <div class="row">
                                            <!-- 페이징 필요함 -->
                                            <div class="col-sm-6">
                                                <div class="single-destinations-list style-two">
                                                    <div class="checkboxes">
                                                       <input type="checkbox">
                                                    </div>
                                                    <div class="thumb">
                                                        <img src="/images/destination-list/4.png" alt="list">
                                                    </div>
                                                    <div class="details">
                                                        <p class="location"><img src="/images/icons/1.png" alt="map">위치</p>
                                                        <h4 class="title"><a href="tour-details">어쩌고 축제</a></h4>
                                                        <p class="content">뭘로쓰지</p>
                                                        <div class="tp-price-meta">
                                                            <h2>축제기간? <small>$</small></h2>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-sm-6">
                                                <div class="single-destinations-list style-two">
                                                    <div class="checkboxes">
                                                       <input type="checkbox">
                                                    </div>
                                                    <div class="thumb">
                                                        <img src="/images/destination-list/4.png" alt="list">
                                                    </div>
                                                    <div class="details">
                                                        <p class="location"><img src="/images/icons/1.png" alt="map">위치</p>
                                                        <h4 class="title"><a href="tour-details">어쩌고 축제</a></h4>
                                                        <p class="content">뭘로쓰지</p>
                                                        <div class="tp-price-meta">
                                                            <h2>축제기간? <small>$</small></h2>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-sm-6">
                                                <div class="single-destinations-list style-two">
                                                    <div class="checkboxes">
                                                       <input type="checkbox">
                                                    </div>
                                                    <div class="thumb">
                                                        <img src="/images/destination-list/4.png" alt="list">
                                                    </div>
                                                    <div class="details">
                                                        <p class="location"><img src="/images/icons/1.png" alt="map">위치</p>
                                                        <h4 class="title"><a href="tour-details">어쩌고 축제</a></h4>
                                                        <p class="content">뭘로쓰지</p>
                                                        <div class="tp-price-meta">
                                                            <h2>축제기간? <small>$</small></h2>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                           <!-- 내찜목록 end -->
                                
                                
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
                                                    <img src="/images/client/2.png" alt="img">
                                                </div>
                                                    <a href="/reviews/getReview?rv_no=${getReviewList.rv_no}">
                                                <div class="content" style="text-align:right;">
                                                    <h4 class="title">${getReviewList.rv_title}</h4>
                                                    <span class="date">${getReviewList.rv_regdate}</span>
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
                                    <li><a href="/user/getUser${pageMaker.makeQuery(idx)}&u_no=${sessionScope.u_no}">
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
                                    	<li><a class="next page-numbers" href="/user/getUser${pageMaker.makeQuery(pageMaker.endPage + 1)}&u_no=${sessionScope.u_no}"><i class="la la-long-arrow-right"></i></a></li>
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
        <div class="container">
            <div class="newslatter-area-wrap border-tp-solid">
                <div class="row">
                    <div class="col-xl-3 col-lg-6 col-md-5 offset-xl-2">
                        <div class="section-title mb-md-0">
                            <h2 class="title">Newsletter</h2>
                            <p>Sign up to receive the best offers</p>
                        </div>
                    </div>
                    <div class="col-xl-4 col-lg-6 col-md-7 align-self-center offset-xl-1">
                        <div class="input-group newslatter-wrap">
                            <div class="input-group-prepend">
                                <span class="input-group-text"><i class="fa fa-envelope"></i></span>
                            </div>
                            <input type="text" class="form-control" placeholder="Email">
                            <div class="input-group-append">
                                <button class="btn btn-yellow" type="button">Subscribe</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
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

    <!-- main js -->
    <script src="../js/main.js"></script>
    
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
	   
    
    </script>

<jsp:include page="../footer.jsp"></jsp:include>

</body>
</html>