<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    

  <jsp:include page="header.jsp"></jsp:include>

 
  
    <!-- breadcrumb area start -->
    <div class="breadcrumb-area jarallax" style="background-image:url(images/bg/1.png);">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb-inner">
                        <h1 class="page-title">Sign Up</h1>
                        <ul class="page-list"><br/>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- breadcrumb area End -->

    <!--  Form area Start -->
    <div class="contact-area pd-top-108">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-6">
                    <div class="section-title text-lg-center text-left">
                        <h2 class="title">[ 회원가입 ]</h2>
                    </div>
                </div>
            </div><br><br>
            <div class="row">
                <div class="col-xl-5 offset-xl-1 col-lg-6">
                    <div class="thumb">
                        <img src="images/others/human.jpg" alt="img">
                    </div>
                </div>
                			<div class="col-xl-3 col-lg-4">
                        	    <div class="wrapper">
							         <div class="title"><h1 style="font-size: 28px; color: #FF8C00">페이디어의 회원이 되어주세요!</h1></div><br><br>
							        
									 <form method="POST" action="user/insertUser">
							        	<!-- 이름 -->
								        <div class="userName">
									        <label class="single-input-wrap style-two">
									            <input type="text" class="input" placeholder="이름을 입력해주세요" name="u_name" id="name"/>
									        </label>
								        </div><br>
								        
							        	<!-- 이메일 -->
								        <div class="userEmail">
									        <label class="single-input-wrap style-two">
									            <input type="email" class="input" placeholder="이메일을 입력해주세요" name="u_email" id="email"/> 
									            <div id="emailError" class="error"></div>
									        </label>
								        </div><br>
								        
								        <!-- 아이디 -->
								        <div class="userId">
								        	<label class="single-input-wrap style-two">
									            <input id="signup_u_id"  type="text" placeholder="아이디를 입력해 주세요" name="u_id" >
								        	</label>
											<input type="button" id="btnCheck" class="btn btn-default" value="중복검사"/>
            								&nbsp&nbsp&nbsp<span id="result"></span>
								        </div><br> 
							        
								        <!-- 비밀번호 & 유효성 검사 -->
								        <div class="userPassword">
								       		<label class="single-input-wrap style-two">
									            <input id="signup_u_pw" type="password" placeholder="비밀번호를 입력해 주세요" name="u_pw">
								            </label>
								        </div><br>
										
								        <div class="passwordCheck">
								        	<label class="single-input-wrap style-two">
									            <input id="u_pwCheck" type="password" placeholder="비밀번호를 다시 입력해 주세요" name="u_pwCheckFF">
								            </label>
								        </div>
										<p id="pwCheckColor" style="color: #d21404; margin: 0;"></p>
								        

								    <div class="line"><hr></div><br/>
								     
									<div class="userAge">
							            <select id="age" name="u_age" required>
							                <option selected disabled> &nbsp&nbsp연령대를 선택해주세요&nbsp&nbsp </option>
							                	<option value="10">미성년자</option>
			                                    <option value="20">20대</option>
			                                    <option value="30">30대</option>
			                                    <option value="40">40대</option>
			                                    <option value="50">50대</option>
												<option value="60">60이상</option>
							            </select>
							            <div id="ageError" class="error"></div>
							        </div><br>

									<div class="line"><hr></div><br/>

									<div class="userGender">
										<input id="gender_man" type="radio" name="u_gender" value="male" checked>&nbsp&nbsp남성  
										&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp 
										<input id="gender_woman" type="radio" name="u_gender" value="female">&nbsp&nbsp여성
										<div id="genderError" class="error"></div>
									</div><br>

									<div class="line"><hr></div><br/>
							        
							        <div class="userGroup"> 
							            <input id="normal_user" type="radio" name="u_group" value="0" checked>&nbsp&nbsp일반 회원 
							            &nbsp&nbsp&nbsp&nbsp&nbsp<input id="fstv_user" type="radio" name="u_group" value="1">&nbsp&nbsp축제 관계자
										<div id="groupError" class="error"></div>
							        </div><br>
							        
							        <div class="line"><hr></div><br/>
							        
							        <div class="input-group-append">
							        	<div class="userSignup">
											<input type="submit" class="btn btn-yellow" value="가입하기" name="submit" />
                                		</div>
                            		</div>
							    </div>

							</form>
                        </div>
                </div>
            </div>
        </div><br><br><br><br>
    <!-- Form area End -->

    <!-- 빈 여백 -->
    <!-- newsletter area Start -->
    <div class="newslatter-area pd-top-108">
    <div><br><br><br></div>
    </div>
    <!-- newsletter area End -->
    

    <!-- Additional plugin js -->
    <script src="js/jquery-2.2.4.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.magnific-popup.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/wow.min.js"></script>
    <script src="js/slick.js"></script>
    <script src="js/waypoints.min.js"></script>
    <script src="js/jquery.counterup.min.js"></script>
    <script src="js/imagesloaded.pkgd.min.js"></script>
    <script src="js/isotope.pkgd.min.js"></script>
    <script src="js/swiper.min.js"></script>
    <script src="js/jquery.nice-select.min.js"></script>
    <script src="js/jquery-ui.min.js"></script>
    <script src="js/jarallax.min.js"></script>
    

    <!-- main js -->
    <script src="js/main.js"></script>

	<!-- login js 
	<script src="js/login.js"></script>
	<script src="js/modal.js"></script>
	<script src="js/sign-up.js"></script>-->

	<script type="text/javascript">

		// 가입부분 체크
		$(function(){
			
			// ##이메일
			let email = $('input[name="u_email"]')
			email.keyup(function(){
				$('#emailError').text("");

				// 이메일 확인
				if((email.val()).includes('@')){
				let emailId = email.val().split('@')[0]
				let emailServer = email.val().split('@')[1]
				
				if(emailId === "" || emailServer === ""){
					document.getElementById("emailError").innerHTML="이메일이 올바르지 않습니다."
					check = false
				}
				else{
					// document.getElementById("emailError").innerHTML
					$('#emailError').html()
				}
				}else{
				// document.getElementById("emailError").innerHTML="이메일이 올바르지 않습니다."
				$('#emailError').text("이메일이 올바르지 않습니다.")
				check = false
				}
			
		})// end of email func

	
		$('#btnCheck').click(function () {

		// alert('중복검사 클릭')

		if ($('#signup_u_id').val() != '') {
							  
			// 아이디를 서버로 전송 > DB 유효성 검사 > 결과 반환

			$.ajax({
				type: 'GET',
				url: 'user/idcheck.action',
				data: 'u_id=' + $('#signup_u_id').val(),
				dataType: 'json',
				success: function(result) {
					if (result == '0') {
						$('#result').text('사용 가능한 아이디입니다');
						$('#result').css('color','#70AD47');
					} else {
						$('#result').text('이미 사용중인 아이디입니다');
						$('#result').css('color','#d21404');
					}
				},
				error: function(a, b, c) {
					console.log(a, b, c);
				}
							
			});
						
		} else {
			alert('아이디를 입력하세요.');
			$('#signup_u_id').focus();
		}
				
		});// end of btnCheck (아이디 중복검사)


	// 비밀번호 유효성 검사
	$('#signup_u_pw').keyup(function(){
		$('#pwCheckColor').text('');
	}); 
	
	$('#u_pwCheck').keyup(function(){
		if($('#signup_u_pw').val()!=$('#u_pwCheck').val()){
			$('#pwCheckColor').text('');
	  		$('#pwCheckColor').html("패스워드가 불일치합니다");
	 	}else{
		  	$('#pwCheckColor').text('');
		  	$('#pwCheckColor').html("<font color='#70AD47'>패스워드가 일치합니다</font>");
	 	}
	});


	}) // end of function
	
	</script>


	<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>

		