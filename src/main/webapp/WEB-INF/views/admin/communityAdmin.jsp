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
									aria-controls="contact" aria-selected="false">매거진</a></li>
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

								<!-- 글 제목 입력 input -->
								<div class="form-group row">
									<label class="col-form-label col-md-2 col-sm-2 ">글 제목</label>
									<div class="col-md-10 col-sm-10 ">
										<input type="text" class="form-control"
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

									<div id="editor-one" class="editor-wrapper"></div>

									<textarea name="descr" id="descr" style="display: none;"></textarea>

								</div>
								<!-- 첨부파일 입력 -->
								<div class="x_content">
									<form action="#" class="dropzone"></form>
									<br />
								</div>

								<!-- 전송 버튼 -->
								<button class="btn btn-primary" type="reset">초기화</button>
								<button type="submit" class="btn btn-success">등록</button>
							</div>
						</div>

						<!-- 매거진 등록 페이지 끝-->
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


</body>
</html>
