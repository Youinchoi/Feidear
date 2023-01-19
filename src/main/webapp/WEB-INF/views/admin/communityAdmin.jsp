<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%String pjName = "/Feidear";%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- Meta, title, CSS, favicons, etc. -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon"
	href="images/favicon.ico"
	type="image/ico" />

<title>FeiDear Admin | 커뮤니티 관리</title>

<!-- Bootstrap -->
<link
	href="vendors/bootstrap/dist/css/bootstrap.min.css"
	rel="stylesheet">
<!-- Font Awesome -->
<link
	href="vendors/font-awesome/css/font-awesome.min.css"
	rel="stylesheet">
<!-- NProgress -->
<link
	href="vendors/nprogress/nprogress.css"
	rel="stylesheet">
<!-- iCheck -->
<link
	href="vendors/iCheck/skins/flat/green.css"
	rel="stylesheet">

<!-- bootstrap-progressbar -->
<link
	href="vendors/bootstrap-progressbar/css/bootstrap-progressbar-3.3.4.min.css"
	rel="stylesheet">
<!-- JQVMap -->
<link
	href="vendors/jqvmap/dist/jqvmap.min.css"
	rel="stylesheet" />
<!-- Switchery -->
<link
	href="vendors/switchery/dist/switchery.min.css"
	rel="stylesheet">
<!-- Dropzone.js -->
<link
	href="vendors/dropzone/dist/min/dropzone.min.css"
	rel="stylesheet">
<!-- Custom Theme Style -->
<link href="build/css/custom.min.css"
	rel="stylesheet">

<!-- sweet alert창 -->
<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.js"></script>
<link rel="stylesheet"href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.css" />

<style type="text/css">
@font-face {
	font-family: 'TmoneyRoundWindRegular';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-07@1.0/TmoneyRoundWindRegular.woff')
		format('woff');
	font-weight: normal;
	font-style: normal;
}

a {
	text-decoration: none;
}

#myTab li a {
	font-size: 1.1vm;
	white-space: nowrap;
	font-size: 15px;
}

#fstvReview .x_content {
	margin-bottom: 20px;
}
</style>
</head>

<body class="nav-md" style="font-family: TmoneyRoundWindRegular">
	<div class="container body">
		<div class="main_container">

			<!-- 사이드 바 시작 -->
			<div class="col-md-3 left_col">
				<div class="left_col scroll-view">

					<!-- 대시보드(어드민 인덱스) 이동 -->
					<div class="navbar nav_title">
						<a href="index" class="site_title"><i
							class="fa fa-lightbulb-o" style="border: 0;"></i> <span>FeiDear
								Admin</span></a>
					</div>

					<div class="clearfix"></div>

					<!-- 어드민 사이드 메뉴 이동 -->
					<div id="sidebar-menu"
						class="main_menu_side hidden-print main_menu">
						<div class="menu_section">
							<ul class="nav side-menu">
								<li><a href="../index"><i
										class="fa fa-arrow-circle-right" aria-hidden="true"></i>사용자
										페이지 이동</a></li>
								<li><a><i class="fa fa-trophy"></i>축제 관리<span
										class="fa fa-chevron-down"></span></a>
									<ul class="nav child_menu">
										<li><a href="manageFestivals">축제 목록</a></li>
										<li><a href="insertFestival">축제 등록</a></li>
									</ul></li>
								<li><a href="manageUsers"><i class="fa fa-users"></i>회원
										관리</a></li>
								<li class="active"><a href="communityAdmin"><i
										class="fa fa-comments"></i>커뮤니티 관리</a></li>
								<li><a href="manageQnA"><i
										class="fa fa-question-circle"></i>문의사항 관리</a></li>
								<li><a href="eventAdmin"><i
										class="fa fa-calendar-check-o"></i>이벤트 관리</a></li>

							</ul>
						</div>
					</div>
					<!-- /sidebar menu -->
				</div>
			</div>
			<!-- 사이드 바 끝 -->


			<!-- 상단바 시작 -->
			<!-- top navigation -->
			<div class="top_nav">
				<div class="nav_menu">
					<div class="nav toggle">
						<a id="menu_toggle" style="padding : 15px 15px 15px;"><i class="fa fa-bars"></i></a>
					</div>
					
				</div>
			</div>
			<!-- /top navigation -->
			<!-- 상단바 끝 -->


			<!-- 본문 내용 -->
			<!-- page content -->
			<div class="right_col" role="main">

				<div class="row"
					style="width: 80%; margin: 0px auto; margin-top: 10%; text-align: center;">
					<div class="col-md-12 col-sm-12 ">

						<!-- 탭 -->
						<div class="table-responsive">
							<ul class="nav nav-tabs bar_tabs" id="myTab" role="tablist">
								<li class="nav-item"><a class="nav-link active"
									id="sReview-tab" data-toggle="tab" href="#sReview" role="tab"
									aria-controls="sReview" aria-selected="true">간편 리뷰</a></li>
								<li class="nav-item"><a class="nav-link"
									id="fstvReview-tab" data-toggle="tab" href="#fstvReview"
									role="tab" aria-controls="fstvReview" aria-selected="false">축제
										일기</a></li>
								<li class="nav-item"><a class="nav-link" id="contact-tab"
									data-toggle="tab" href="#contact" role="tab"
									aria-controls="contact" aria-selected="false">매거진 등록</a></li>
								<li class="nav-item"><a class="nav-link"
									id="sMagazine-tab" data-toggle="tab" href="#sMagazine" role="tab"
									aria-controls="sMagazine" aria-selected="true">매거진 목록</a></li>
							</ul>
						</div>
						<div class="tab-content" id="myTabContent">

							<!-- 간편리뷰 테이블 -->
							<div class="tab-pane fade show active" id="sReview"
								role="tabpanel" aria-labelledby="home-tab">
								<h2
									style="margin: 20px auto; font-size: 32px; font-weight: bolder; white-space: nowrap;">간편
									리뷰</h2>
								<div class="table-responsive">
									<table class="table" id="sReviewTbl"
										style="font-size: 1vw; white-space: nowrap;">
										<thead>
											<tr>
												<th colspan="2"
													style="text-align: center; border-bottom: none; color: gray; white-space: nowrap; font-size: 1.25vw">
													간편리뷰</th>
												<th colspan="2"
													style="text-align: center; border-bottom: none; color: gray; white-space: nowrap; font-size: 1.25vw">
													공개여부</th>
											</tr>
											<tr>
												<th class="column-title"
													style="text-align: center; border-top: none;">축제 이름</th>
												<th class="column-title"
													style="text-align: center; border-top: none;">리뷰 내용</th>
												<th class="column-title"
													style="text-align: center; border-top: none;">공개</th>
												<th class="column-title"
													style="text-align: center; border-top: none;">비공개</th>
											</tr>
										</thead>
										<tbody>
											<!-- 테이블 데이터 출력 -->
											<!-- radio 버튼의 name을 tr 마다 다르게 둘 것 -->
											<tr>
												<td class=" "><a href="#">1121000040</a></td>
												<td class=" "><a href="#">May 23, 2014 11:47:56 PM
												</a></td>
												<td class="a-center" style="text-align: center"><input
													type="radio" class="flat" name="table_records1"></td>
												<td class="a-center" style="text-align: center"><input
													type="radio" class="flat" name="table_records1"></td>
											</tr>
											<tr>
												<td colspan="2"></td>
												<td colspan="2" style="text-align: center;">
													<button class="btn btn-secondary source">수정</button>
												</td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
							<!-- 간편리뷰 테이블 끝 -->

							<!-- 축제일기 테이블 -->
							<div class="tab-pane fade" id="fstvReview" role="tabpanel"
								aria-labelledby="fstvReview-tab">

								<h2
									style="margin: 20px auto; font-size: 32px; font-weight: bolder;">축제
									일기 관리</h2>
								<div class="table-responsive">
									<table class="table" id="fReviewTbl"
										style="font-size: 1vw; white-space: nowrap;">
										<thead>
											<tr>
												<th rowspan="2"
													style="text-align: center; font-size: 1.25vw; white-space: nowrap; color: gray; vertical-align: middle;">
													리뷰 제목</th>
												<th rowspan="2"
													style="text-align: center; font-size: 1.25vw; white-space: nowrap; color: gray; vertical-align: middle;">
													좋아요 수</th>
												<th colspan="2"
													style="text-align: center; border-bottom: none; font-size: 1.25vw; white-space: nowrap; color: gray; vertical-align: middle;">
													공개 여부</th>
												<th rowspan="2"
													style="text-align: center; font-size: 1.25vw; white-space: nowrap; color: gray; vertical-align: middle;">
													베스트 선정</th>
											</tr>
											<tr>
												<th class="column-title"
													style="text-align: center; border-top: none;">공개</th>
												<th class="column-title"
													style="text-align: center; border-top: none;">비공개</th>
											</tr>
										</thead>
										<tbody>
											<!-- 테이블 데이터 출력 -->
											<!-- radio 버튼의 name을 tr 마다 다르게 둘 것 -->
											<tr>
												<td class=" "><a href="#">1121000040</a></td>
												<td class=" "><a href="#">May 23, 2014 11:47:56 PM
												</a></td>
												<td class="a-center" style="text-align: center"><input
													type="radio" class="flat" name="table_records1"></td>
												<td class="a-center" style="text-align: center"><input
													type="radio" class="flat" name="table_records1"></td>
												<td class="a-center" style="text-align: center"><label>
														<input type="checkbox" class="js-switch" checked />
												</label></td>
											</tr>
											<tr>
												<td class=" "><a href="#">1121000040</a></td>
												<td class=" "><a href="#">May 23, 2014 11:47:56 PM
												</a></td>
												<td class="a-center" style="text-align: center"><input
													type="radio" class="flat" name="table_records1"></td>
												<td class="a-center" style="text-align: center"><input
													type="radio" class="flat" name="table_records1"></td>
												<td class="a-center" style="text-align: center"><label>
														<input type="checkbox" class="js-switch" />
												</label></td>
											</tr>
											<tr>
												<td class=" "><a href="#">1121000040</a></td>
												<td class=" "><a href="#">May 23, 2014 11:47:56 PM
												</a></td>
												<td class="a-center" style="text-align: center"><input
													type="radio" class="flat" name="table_records1"></td>
												<td class="a-center" style="text-align: center"><input
													type="radio" class="flat" name="table_records1"></td>
												<td class="a-center" style="text-align: center"><label>
														<input type="checkbox" class="js-switch" />
												</label></td>
											</tr>

											<tr>
												<td colspan="2"></td>
												<td colspan="3" style="text-align: right;">
													<button class="btn btn-secondary source">저장</button>
												</td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
							<!-- 축제일기 테이블 끝-->

						 <!-- 매거진 등록 페이지 -->
						 <div class="tab-pane fade" id="contact" role="tabpanel"
								aria-labelledby="contact-tab">
								<h2
									style="margin: 20px auto; font-size: 32px; font-weight: bolder;">매거진
									등록</h2>
							<!--입력 폼 시작-->
							<form action="saveMagazine" id="saveMagazine" method="post" enctype="multipart/form-data">

								<!-- 글 제목 입력 input -->
								<div class="form-group row">
									<label class="col-form-label col-md-2 col-sm-2 ">글 제목</label>
									<div class="col-md-10 col-sm-10 ">
										<input type="text" class="form-control" id="mgz_title" name="mgz_title"
											placeholder="글 제목을 입력하세요">
									</div>
								</div>

								<div class="x_content">
									<!-- 글 입력 Text Editor -->
									<div id="alerts"></div>
									<div class="btn-toolbar editor" data-role="editor-toolbar"
										data-target="#editor-one">
										<div class="btn-group">
											<a class="btn dropdown-toggle" data-toggle="dropdown"
												title="Font"> <i class="fa fa-font"></i><b class="caret"></b>
											</a>
											<ul class="dropdown-menu">
											</ul>
										</div>

										<div class="btn-group">
											<a class="btn dropdown-toggle" data-toggle="dropdown"
												title="Font Size"><i class="fa fa-text-height"></i>&nbsp;<b
												class="caret"></b></a>
											<ul class="dropdown-menu">
												<li><a data-edit="fontSize 5">
														<p style="font-size: 17px">Huge</p>
												</a></li>
												<li><a data-edit="fontSize 3">
														<p style="font-size: 14px">Normal</p>
												</a></li>
												<li><a data-edit="fontSize 1">
														<p style="font-size: 11px">Small</p>
												</a></li>
											</ul>
										</div>

										<div class="btn-group">
											<a class="btn" data-edit="bold" title="Bold (Ctrl/Cmd+B)"><i
												class="fa fa-bold"></i></a> <a class="btn" data-edit="italic"
												title="Italic (Ctrl/Cmd+I)"><i class="fa fa-italic"></i></a>
											<a class="btn" data-edit="strikethrough"
												title="Strikethrough"><i class="fa fa-strikethrough"></i></a>
											<a class="btn" data-edit="underline"
												title="Underline (Ctrl/Cmd+U)"><i
												class="fa fa-underline"></i></a>
										</div>

										<div class="btn-group">
											<a class="btn" data-edit="insertunorderedlist"
												title="Bullet list"><i class="fa fa-list-ul"></i></a> <a
												class="btn" data-edit="insertorderedlist"
												title="Number list"><i class="fa fa-list-ol"></i></a> <a
												class="btn" data-edit="outdent"
												title="Reduce indent (Shift+Tab)"><i
												class="fa fa-dedent"></i></a> <a class="btn" data-edit="indent"
												title="Indent (Tab)"><i class="fa fa-indent"></i></a>
										</div>

										<div class="btn-group">
											<a class="btn" data-edit="justifyleft"
												title="Align Left (Ctrl/Cmd+L)"><i
												class="fa fa-align-left"></i></a> <a class="btn"
												data-edit="justifycenter" title="Center (Ctrl/Cmd+E)"><i
												class="fa fa-align-center"></i></a> <a class="btn"
												data-edit="justifyright" title="Align Right (Ctrl/Cmd+R)"><i
												class="fa fa-align-right"></i></a> <a class="btn"
												data-edit="justifyfull" title="Justify (Ctrl/Cmd+J)"><i
												class="fa fa-align-justify"></i></a>
										</div>

										<div class="btn-group">
											<a class="btn dropdown-toggle" data-toggle="dropdown"
												title="Hyperlink"><i class="fa fa-link"></i></a>
											<div class="dropdown-menu input-append">
												<input class="span2" placeholder="URL" type="text"
													data-edit="createLink" />
												<button class="btn" type="button">링크 추가</button>
											</div>
											<a class="btn" data-edit="unlink" title="링크 제거"><i
												class="fa fa-cut"></i></a>
										</div>

									</div>

									<div id="mgz_content2" class="editor-wrapper"
									style="height: 500px; border: 1px solid #ced4da; border-radius: 5px; margin-bottom: 20px;"></div>
									<textarea name="descr" id="descr" style="display: none;"></textarea>
									<input type="hidden" id="mgz_content" name="mgz_content" />

								</div>
								<!-- 첨부파일 입력 시작 -->
										<div class="x_content">
											<a>파일은 최대 6개까지 등록 가능합니다</a>
											<br/>
											<input type="file" maxlength="60" size="40" name='file'>
											<br/>
										</div>
										<!-- 첨부파일 입력 끝 -->

								<!-- 전송 버튼 -->
								<button class="btn btn-primary" type="reset">초기화</button>
								<input type="button" id="subButton" class="btn btn-success" value="등록">

							 </form>
							 <!--입력 form 끝-->
						</div>
						<!-- 매거진 등록 페이지 끝-->


						<!-- 매거진 보기 테이블 -->
						<div class="tab-pane fade show" id="sMagazine"
						role="tabpanel" aria-labelledby="home-tab">
						<h2
							style="margin: 20px auto; font-size: 32px; font-weight: bolder; white-space: nowrap;">매거진 목록 보기</h2>
						<div class="table-responsive">
							<table class="table" id="sMagazineTbl"
								style="font-size: 1vw; white-space: nowrap;">
								<thead>
									<!-- 테이블 데이터 출력 -->
									<tr>
										<th class="column-title"
										style="text-align: center; border-top: none;">글 번호</th>
										<th class="column-title"
										style="text-align: center; border-top: none;">매거진 제목</th>
										<th class="column-title"
										style="text-align: center; border-top: none;"></th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${magazineList}" var="magazineList">
									<!-- 테이블 데이터 출력 -->
									<!-- radio 버튼의 name을 tr 마다 다르게 둘 것 -->
										<tr>
										<td class=" "><a href="#">${magazineList.mgz_no}</a></td>
										<td class=" "><a href="/magazine-details?mgz_no=${magazineList.mgz_no}">${magazineList.mgz_title}</a></td>
										<td colspan="2" style="text-align: center;" id="delete_mgz" class="delete_mgz">
											<button class="btn btn-secondary source2">삭제</button>
										</tr>
									</c:forEach>
									<tr>
										<td colspan="2"></td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
					<!-- 매거진 보기 테이블 끝 -->

				  <!--탭팬 끝나는 div-->
				  </div>


				 </div>



				</div>

			</div>
		</div>
	</div>
	<br />

	<div class="row" style="width: 80%; margin: 0px auto;"></div>
	<!-- /page content -->

	<!-- footer content -->
	<footer>
		<div class="pull-right">FeiDear</div>
		<div class="clearfix"></div>
	</footer>
	<!-- /footer content -->
	</div>
	</div>

	<!-- jQuery -->
	<script
		src="vendors/jquery/dist/jquery.min.js"></script>
	<!-- Bootstrap -->
	<script
		src="vendors/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
	<!-- FastClick -->
	<script
		src="vendors/fastclick/lib/fastclick.js"></script>
	<!-- bootstrap-progressbar -->
	<script
		src="vendors/bootstrap-progressbar/bootstrap-progressbar.min.js"></script>
	<!-- iCheck -->
	<script
		src="vendors/iCheck/icheck.min.js"></script>
	<!-- Skycons -->
	<script
		src="vendors/skycons/skycons.js"></script>
	<!-- Flot -->
	<script
		src="vendors/Flot/jquery.flot.js"></script>
	<script
		src="vendors/Flot/jquery.flot.pie.js"></script>
	<script
		src="vendors/Flot/jquery.flot.time.js"></script>
	<script
		src="vendors/Flot/jquery.flot.stack.js"></script>
	<script
		src="vendors/Flot/jquery.flot.resize.js"></script>
	<!-- Flot plugins -->
	<script
		src="vendors/flot.orderbars/js/jquery.flot.orderBars.js"></script>
	<script
		src="vendors/flot-spline/js/jquery.flot.spline.min.js"></script>
	<script
		src="vendors/flot.curvedlines/curvedLines.js"></script>
	<!-- DateJS -->
	<script
		src="vendors/DateJS/build/date.js"></script>
	<!-- JQVMap -->
	<script
		src="vendors/jqvmap/dist/jquery.vmap.js"></script>
	<script
		src="vendors/jqvmap/dist/maps/jquery.vmap.world.js"></script>
	<script
		src="vendors/jqvmap/examples/js/jquery.vmap.sampledata.js"></script>

	<!-- bootstrap-wysiwyg -->
	<script
		src="vendors/bootstrap-wysiwyg/js/bootstrap-wysiwyg.min.js"></script>
	<script
		src="vendors/jquery.hotkeys/jquery.hotkeys.js"></script>
	<script
		src="vendors/google-code-prettify/src/prettify.js"></script>


	<!-- jQuery Tags Input -->
	<script
		src="vendors/jquery.tagsinput/src/jquery.tagsinput.js"></script>
	<!-- Switchery -->
	<script
		src="vendors/switchery/dist/switchery.min.js"></script>
	<!-- Select2 -->
	<script
		src="vendors/select2/dist/js/select2.full.min.js"></script>
	<!-- Parsley -->
	<script
		src="vendors/parsleyjs/dist/parsley.min.js"></script>
	<!-- Autosize -->
	<script
		src="vendors/autosize/dist/autosize.min.js"></script>
	<!-- jQuery autocomplete -->
	<script
		src="vendors/devbridge-autocomplete/dist/jquery.autocomplete.min.js"></script>
	<!-- starrr -->
	<script
		src="vendors/starrr/dist/starrr.js"></script>
	<!-- Dropzone.js -->
	<script
		src="vendors/dropzone/dist/min/dropzone.min.js"></script>
	<!-- Custom Theme Scripts -->
	<script src="build/js/custom.min.js"></script>

	<!-- Dropzone.js ( 하단 첨부파일 ) -->
	<script src="/admin/vendors/dropzone/dist/min/dropzone.min.js"></script>

	<!--파일 업로드 위해 만든 파일 -->
	<script src="/js/uploadphotos3.js"></script>		

	<!-- Custom Theme Scripts (없으면 텍스트 입력 못 함 ㅠ ) -->
	<script src="/admin/build/js/custom.min.js"></script>

	<script type="text/javascript">
		//삭제버튼 클릭 시작
		$('.delete_mgz').click(function(){

			//for each 문이 돌아가는 행 안에서 선택한 버튼의 형제 중 첫 번째 td의 text를 가져온다. 
			var th = $(this).siblings("td:first").text();

			Swal.fire({
			title: '정말로 삭제하시겠습니까?',
			text: "확인 시 정보가 모두 삭제됩니다.",
			icon: 'warning',
			showCancelButton: true,
			confirmButtonColor: '#F0B153',
			cancelButtonColor: '#d33',
			confirmButtonText: '삭제'
			}).then((result) => {
				if (result.isConfirmed) {
				Swal.fire({
					title : '삭제 성공',
					text : '삭제가 완료되었습니다.',
					icon : 'success',
					confirmButtonColor: '#F0B153'
				}).then((result) => {
					location.href='deleteMagazine?mgz_no='+th;
					})//END THEN
				}//end if
			})//END THEN

		})//삭제 클릭 끝


		//제목이나 내용 공백 시 넘어가지 않게 설정
		$('#subButton').click(function() {
				var inputtitle = $("#mgz_title").val();			// 제목
				
				if(inputtitle == ""){
					Swal.fire({
						title : '등록 불가',
						text  : '제목을 입력해주세요 !',
						icon  : 'error',
						confirmButtonColor: '#d33'
					});
					return false;
				}

				var inputcontent = $("#mgz_content").val();		// 내용
				if(inputcontent == ""){
					Swal.fire({
						title : '등록 불가',
						text : '내용을 입력해주세요 !',
						icon : 'error',
						confirmButtonColor: '#d33'
					});
					return false;
				}

				// 등록 성공 시
				Swal.fire({
						title : '등록 성공',
						text  : '매거진 등록이 완료되었습니다.',
						icon  : 'success',
						confirmButtonColor: '#F0B153'
				}).then((result) => {
					if(result.isConfirmed){
						$("#saveMagazine").submit()
					}
				});
			}) // end of clickevent()


	</script>


</body>
</html>
