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

<title>FeiDear Admin | 이벤트 관리</title>

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
								<li><a href="communityAdmin"><i
										class="fa fa-comments"></i>커뮤니티 관리</a></li>
								<li><a href="manageQnA"><i
										class="fa fa-question-circle"></i>문의사항 관리</a></li>
								<li class="active"><a href="eventAdmin"><i
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
						
						<div class="tab-pane fade show active" id="event"
								role="tabpanel" aria-labelledby="home-tab">
								<h2
									style="margin: 20px auto; font-size: 32px; font-weight: bolder; white-space: nowrap;">이벤트 게시판</h2>
								<div style="margin-bottom: 20px; float : right;">
								<div class="btn-group">
				                    <button type="button" class="btn btn-secondary dropdown-toggle" data-toggle="dropdown"
				                      aria-haspopup="true" aria-expanded="false" style="margin-bottom: 5px;">
				                      분류
				                    </button>
				                    <div class="dropdown-menu">
				                      <a class="dropdown-item" href="#">서포터즈 관리</a>
				                      <a class="dropdown-item" href="#">이벤트 관리</a>
				                    </div>
				               	</div>
				               	
				               	<a href="insertEvent"><button type="button" class="btn btn-primary">글 등록</button></a>
								</div>
								<div class="table-responsive">
									<table class="table" id="eventTbl"
										style="font-size: 1vw; white-space: nowrap;">
										<tbody>
											<!-- 테이블 데이터 출력 -->
											<tr>
												<td class=" "><a href="#">이벤트 제목 이벤트 제목 이벤트 제목 이벤트 제목</a></td>
												<td><a href="#" class="btn btn-danger btn-xs"><i class="fa fa-trash-o"></i> 삭제 </a></td>
											</tr>
											<tr>
												<td class=" "><a href="#">이벤트 제목 이벤트 제목 이벤트 제목 이벤트 제목</a></td>
												<td><a href="#" class="btn btn-danger btn-xs"><i class="fa fa-trash-o"></i> 삭제 </a></td>
											</tr>
											<tr>
												<td class=" "><a href="#">이벤트 제목 이벤트 제목 이벤트 제목 이벤트 제목</a></td>
												<td><a href="#" class="btn btn-danger btn-xs"><i class="fa fa-trash-o"></i> 삭제 </a></td>
											</tr>
											<tr>
												<td class=" "><a href="#">이벤트 제목 이벤트 제목 이벤트 제목 이벤트 제목</a></td>
												<td><a href="#" class="btn btn-danger btn-xs"><i class="fa fa-trash-o"></i> 삭제 </a></td>
											</tr>
											<tr>
												<td class=" "><a href="#">이벤트 제목 이벤트 제목 이벤트 제목 이벤트 제목</a></td>
												<td><a href="#" class="btn btn-danger btn-xs"><i class="fa fa-trash-o"></i> 삭제 </a></td>
											</tr>
										</tbody>
									</table>
								</div>
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
