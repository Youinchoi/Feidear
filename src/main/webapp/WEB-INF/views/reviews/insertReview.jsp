<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

	<!-- header -->
	<%@ include file='../header.jsp' %>

		<!-- 일단 이상 없음 -->
		<!-- Font Awesome -->
		<link href="/admin/vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">

		<!-- NProgress -->
		<link href="/admin/vendors/nprogress/nprogress.css" rel="stylesheet">

		<!-- iCheck -->
		<link href="/admin/vendors/iCheck/skins/flat/green.css" rel="stylesheet">

		<!-- bootstrap-progressbar -->
		<link href="/admin/vendors/bootstrap-progressbar/css/bootstrap-progressbar-3.3.4.min.css" rel="stylesheet">

		<!-- JQVMap -->
		<link href="/admin/vendors/jqvmap/dist/jqvmap.min.css" rel="stylesheet" />

		<!-- Switchery -->
		<link href="/admin/vendors/switchery/dist/switchery.min.css" rel="stylesheet">

		<!-- Dropzone.js -->
		<link href="/admin/vendors/dropzone/dist/min/dropzone.min.css" rel="stylesheet">

		<!-- 일단 이상 없는 것들 끝 -->
		<!-- Custom Theme Style 
			<link href="admin/build/css/custom.min.css"
			rel="stylesheet"> -->

		<!-- //. sign up Popup -->
		<div class="signUp-popup login-register-popup" id="signUp-popup">
			<div class="login-register-popup-wrap">
				<div class="row no-gutters">
					<div class="col-lg-6">
						<div class="thumb">
							<img src="images/others/signup.png" alt="img">
						</div>
					</div>
					<div class="col-lg-6 align-self-center">
						<div class="shape-thumb">
							<img src="images/others/signup-shape.png" alt="img">
						</div>
						<form class="login-form-wrap">
							<h4 class="text-center">Sign Up</h4>
							<div class="single-input-wrap style-two">
								<input type="text" placeholder="Name"> <span class="single-input-title"><i
										class="fa fa-user"></i></span>
							</div>
							<div class="single-input-wrap style-two">
								<input type="text" placeholder="Email"> <span class="single-input-title"><i
										class="fa fa-envelope"></i></span>
							</div>
							<div class="single-input-wrap style-two">
								<input type="text" placeholder="Password"> <span class="single-input-title"><i
										class="fa fa-lock"></i></span>
							</div>
							<label class="checkbox"> <input type="checkbox"> <span>Remember
									me</span>
							</label>
							<div class="single-input-wrap style-two">
								<button class="btn btn-yellow w-100">Sign Up</button>
							</div>
							<div class="sign-in-btn">
								I already have an account. <a href="#">Sign In</a>
							</div>
							<div class="social-wrap">
								<p>Or Continue With</p>
								<ul class="social-icon">
									<li><a class="facebook" href="#" target="_blank"><i
												class="fa fa-facebook  "></i></a></li>
									<li><a class="twitter" href="#" target="_blank"><i class="fa fa-twitter  "></i></a>
									</li>
									<li><a class="pinterest" href="#" target="_blank"><i
												class="fa fa-pinterest"></i></a></li>
								</ul>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
		<!-- //. sign up Popup End -->


		<!-- breadcrumb area start -->
		<div class="breadcrumb-area style-three jarallax" style="background-image:url(images/bg/1.png);">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<div class="breadcrumb-inner">
							<h1 class="page-title">축제 일기 등록</h1>
							<ul class="page-list">
								<li><a href="index">Home</a></li>
								<li>내가 다녀왔던 축제 리뷰 등록하기</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- breadcrumb area End -->



		<!-- 본문 내용 -->
		<!-- page content start -->
		<div class="row" style="width: 80%; margin: 0px auto; margin-top: 10%; text-align: center;">
			<div class="col-md-12 col-sm-12 ">
				<div class="tab-content" id="myTabContent">
					<form action="insertReview" method="post" enctype="multipart/form-data">
						<!-- (축제 일기) 리뷰 등록 페이지 시작 -->
						<div class="tab-pane active" id="contact" role="tabpanel" aria-labelledby="contact-tab">

							<!-- 글 제목 입력 input 시작 -->
							<div class="form-group row">
								<label class="col-form-label col-md-2 col-sm-2 ">글 제목</label>
								<div class="col-md-10 col-sm-10 ">
									<input type="text" name="rv_title" class="form-control" placeholder="글 제목을 입력하세요">
								</div>
							</div>
							<!-- 글 제목 입력 input 끝 -->

							<!-- 글 입력 Text Editor start -->
							<div class="x_content">
								<div id="alerts"></div>
								<!-- 작성 폼 버튼 시작 -->
								<div class="btn-toolbar editor" data-role="editor-toolbar" data-target="#editor-one">

									<div class="btn-group">
										<a class="btn" data-edit="bold" title="Bold (Ctrl/Cmd+B)"><i
												class="fa fa-bold"></i></a>
										<a class="btn" data-edit="italic" title="Italic (Ctrl/Cmd+I)"><i
												class="fa fa-italic"></i></a>
										<a class="btn" data-edit="strikethrough" title="Strikethrough"><i
												class="fa fa-strikethrough"></i></a>
										<a class="btn" data-edit="underline" title="Underline (Ctrl/Cmd+U)"><i
												class="fa fa-underline"></i></a>
									</div>

									<div class="btn-group">
										<a class="btn" data-edit="insertunorderedlist" title="Bullet list"><i
												class="fa fa-list-ul"></i></a>
										<a class="btn" data-edit="insertorderedlist" title="Number list"><i
												class="fa fa-list-ol"></i></a>
										<a class="btn" data-edit="outdent" title="Reduce indent (Shift+Tab)"><i
												class="fa fa-dedent"></i></a>
										<a class="btn" data-edit="indent" title="Indent (Tab)"><i
												class="fa fa-indent"></i></a>
									</div>

									<!-- 텍스트 정렬 버튼 시작 -->
									<div class="btn-group">
										<a class="btn" data-edit="justifyleft" title="Align Left (Ctrl/Cmd+L)"><i
												class="fa fa-align-left"></i></a>
										<a class="btn" data-edit="justifycenter" title="Center (Ctrl/Cmd+E)"><i
												class="fa fa-align-center"></i></a>
										<a class="btn" data-edit="justifyright" title="Align Right (Ctrl/Cmd+R)"><i
												class="fa fa-align-right"></i></a>
										<a class="btn" data-edit="justifyfull" title="Justify (Ctrl/Cmd+J)"><i
												class="fa fa-align-justify"></i></a>
									</div>
									<!-- 텍스트 정렬 버튼 끝  -->

									<!-- 링크 추가/제거 버튼 시작 -->
									<div class="btn-group">
										<a class="btn dropdown-toggle" data-toggle="dropdown" title="Hyperlink"><i
												class="fa fa-link"></i></a>
										<div class="dropdown-menu input-append">
											<input class="span2" placeholder="URL" type="text" data-edit="createLink" />
											<button class="btn" type="button">링크 추가</button>
										</div>
										<a class="btn" data-edit="unlink" title="링크 제거"><i class="fa fa-cut"></i></a>
									</div>
									<!-- 링크 추가/제거 버튼 끝 -->
								</div>
								<!-- 작성 폼 버튼 끝 -->

								<div id="editor-one" class="editor-wrapper"
									style="height: 500px; border: 1px solid #ced4da; border-radius: 5px; margin-bottom: 20px;">
								</div>

								<textarea name="descr" id="descr" style="display: none;"></textarea>
								
								<input type="hidden" name="rv_content" id="rv_content"/>

							</div>
							<!-- 글 입력 Text Editor end -->

							<!-- 첨부파일 입력 시작 -->
							<div class="x_content">
								<a>🧡 파일은 최대 6개까지 등록 가능합니다 🧡</a>
								<!-- <input type="file" name="file"> -->
								<!-- <form action="#" type="file" class="dropzone" name="file"
									style=" width: auto; border-line: solid 1px !important; border-radius: 5px; margin-top: 20px; padding: 20px;">
								</form> -->
								<br/>
								<input type="file" maxlength="60" size="40" name='file'>
								<br/>
							</div>
							<!-- 첨부파일 입력 끝 -->
							
							<!-- 전송 버튼 -->
							<button class="btn btn-primary" type="reset">초기화</button>
							<button class="btn btn-success" type="submit">등록</button>
							<!--</form>-->
						</div>
						<!-- 리뷰 등록 페이지 끝 -->
					</div>
				<!-- (축제 일기) 리뷰 등록 페이지 끝 -->
				</form>
			</div>
		</div>
	</div>
		<br />
		<div class="row" style="width: 80%; margin: 0px auto;"></div>

		<!-- newslatter area Start ( 공백용 ) -->
		<div class="newslatter-area pd-top-120">
			<div class="container">
				<div class="newslatter-area-wrap border-tp-solid">
				</div>
			</div>
		</div>
		<!-- newslatter area End -->

		<!-- footer -->
		<jsp:include page="../footer.jsp"></jsp:include>

		<!-- Additional plugin js -->
		<script src="/js/jquery-2.2.4.min.js"></script>
		<script src="/js/popper.min.js"></script>
		<script src="/js/bootstrap.min.js"></script>
		<script src="/js/jquery.magnific-popup.js"></script>
		<script src="/js/owl.carousel.min.js"></script>
		<script src="/js/wow.min.js"></script>
		<script src="/js/slick.js"></script>
		<script src="/js/waypoints.min.js"></script>
		<script src="/js/jquery.counterup.min.js"></script>
		<script src="/js/imagesloaded.pkgd.min.js"></script>
		<script src="/js/isotope.pkgd.min.js"></script>
		<script src="/js/swiper.min.js"></script>
		<script src="/js/jquery.nice-select.min.js"></script>
		<script src="/js/jquery-ui.min.js"></script>
		<script src="/js/jarallax.min.js"></script>


		<!-- main js -->
		<script src="/js/main.js"></script>

		<!-- 리뷰 작성 추가 폼 -->

		<!-- jQuery -->
		<script src="/admin/vendors/jquery/dist/jquery.min.js"></script>

		<!-- Bootstrap -->
		<script src="/admin/vendors/bootstrap/dist/js/bootstrap.bundle.min.js"></script>

		<!-- FastClick -->
		<script src="/admin/vendors/fastclick/lib/fastclick.js"></script>

		<!-- bootstrap-progressbar -->
		<script src="/admin/vendors/bootstrap-progressbar/bootstrap-progressbar.min.js"></script>

		<!-- iCheck -->
		<script src="/admin/vendors/iCheck/icheck.min.js"></script>

		<!-- Skycons -->
		<script src="/admin/vendors/skycons/skycons.js"></script>

		<!-- Flot -->
		<script src="/admin/vendors/Flot/jquery.flot.js"></script>
		<script src="/admin/vendors/Flot/jquery.flot.pie.js"></script>
		<script src="/admin/vendors/Flot/jquery.flot.time.js"></script>
		<script src="/admin/vendors/Flot/jquery.flot.stack.js"></script>
		<script src="/admin/vendors/Flot/jquery.flot.resize.js"></script>

		<!-- Flot plugins -->
		<script src="/admin/vendors/flot.orderbars/js/jquery.flot.orderBars.js"></script>
		<script src="/admin/vendors/flot-spline/js/jquery.flot.spline.min.js"></script>
		<script src="/admin/vendors/flot.curvedlines/curvedLines.js"></script>

		<!-- DateJS -->
		<script src="/admin/vendors/DateJS/build/date.js"></script>

		<!-- JQVMap -->
		<script src="/admin/vendors/jqvmap/dist/jquery.vmap.js"></script>
		<script src="/admin/vendors/jqvmap/examples/js/jquery.vmap.sampledata.js"></script>

		<!-- bootstrap-wysiwyg -->
		<script src="/admin/vendors/bootstrap-wysiwyg/js/bootstrap-wysiwyg.min.js"></script>
		<script src="/admin/vendors/jquery.hotkeys/jquery.hotkeys.js"></script>
		<script src="/admin/vendors/google-code-prettify/src/prettify.js"></script>

		<!-- jQuery Tags Input -->
		<script src="/admin/vendors/jquery.tagsinput/src/jquery.tagsinput.js"></script>

		<!-- Switchery -->
		<script src="/admin/vendors/switchery/dist/switchery.min.js"></script>

		<!-- Select2 -->
		<script src="/admin/vendors/select2/dist/js/select2.full.min.js"></script>

		<!-- Parsley -->
		<script src="/admin/vendors/parsleyjs/dist/parsley.min.js"></script>

		<!-- Autosize -->
		<script src="/admin/vendors/autosize/dist/autosize.min.js"></script>

		<!-- jQuery autocomplete -->
		<script src="/admin/vendors/devbridge-autocomplete/dist/jquery.autocomplete.min.js"></script>

		<!-- starrr -->
		<script src="/admin/vendors/starrr/dist/starrr.js"></script>

		<!-- 내가 만든 파일 -->
		<script src="/js/uploadphotos.js"></script>

		<!-- Dropzone.js ( 하단 첨부파일 ) -->
		<script src="/admin/vendors/dropzone/dist/min/dropzone.min.js"></script>

		<!-- Custom Theme Scripts (없으면 텍스트 입력 못 함 ㅠ ) -->
		<script src="/admin/build/js/custom.min.js"></script>

		</body>

		</html>