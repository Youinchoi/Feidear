<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String pjName = "/Feidear";
%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- Meta, title, CSS, favicons, etc. -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>FeiDear Admin | 축제 등록</title>

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
<!-- bootstrap-wysiwyg -->
<link
	href="vendors/google-code-prettify/bin/prettify.min.css"
	rel="stylesheet">
<!-- Select2 -->
<link
	href="vendors/select2/dist/css/select2.min.css"
	rel="stylesheet">
<!-- Switchery -->
<link
	href="vendors/switchery/dist/switchery.min.css"
	rel="stylesheet">
<!-- starrr -->
<link
	href="vendors/starrr/dist/starrr.css"
	rel="stylesheet">
<!-- bootstrap-daterangepicker -->
<link
	href="vendors/bootstrap-daterangepicker/daterangepicker.css"
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
</style>
</head>

<body class="nav-md" style="font-family: TmoneyRoundWindRegular">
	<div class="container body">
		<div class="main_container">
			<div class="col-md-3 left_col">
				<div class="left_col scroll-view">
					<!-- 사이드바 메뉴 시작 -->
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
										<li class="active"><a><i class="fa fa-trophy"></i>축제
												관리<span class="fa fa-chevron-down"></span></a>
											<ul class="nav child_menu">
												<li><a href="manageFestivals">축제 목록</a></li>
												<li class="active"><a href="insertFestival">축제 등록</a></li>
											</ul></li>
										<li><a href="manageUsers"><i class="fa fa-users"></i>회원
												관리</a></li>
										<li><a href="communityAdmin"><i
												class="fa fa-comments"></i>커뮤니티 관리</a></li>
										<li><a href="eventAdmin"><i
												class="fa fa-calendar-check-o"></i>이벤트 관리</a></li>

									</ul>
								</div>


							</div>
							<!-- /sidebar menu -->
						</div>
					</div>
					<!-- 사이드바 메뉴 끝 -->
				</div>
			</div>

			<!-- top navigation -->
			<div class="top_nav">
				<div class="nav_menu">
					<div class="nav toggle">
						<a id="menu_toggle" style="padding : 15px 15px 15px;"><i class="fa fa-bars"></i></a>
					</div>
				</div>
			</div>
			<!-- /top navigation -->

			<!-- 본문 내용 -->
			<!-- page content -->
			<div class="right_col" role="main">
				<div class="clearfix"></div>
				${message}
				<div class="row">
					${message}
					<div class="col-md-12 col-sm-12 ">
						${message}
						<div class="x_panel">
							<div class="x_title">
								<h2>	${message}</h2>
								<div class="clearfix"></div>
							
					</div>
						<a href='${pageContext.request.contextPath}/admin/insertFestival'>더 등록하러 가기</a>
				</div>
			</div>
			</div>
			</div>

			<!-- /page content -->

			<!-- footer content -->
			<footer>
				<div class="pull-right">
					Gentelella - Bootstrap Admin Template by <a
						href="https://colorlib.com">Colorlib</a>
				</div>
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
	<!-- NProgress -->
	<script
		src="vendors/nprogress/nprogress.js"></script>
	<!-- bootstrap-progressbar -->
	<script
		src="vendors/bootstrap-progressbar/bootstrap-progressbar.min.js"></script>
	<!-- iCheck -->
	<script
		src="vendors/iCheck/icheck.min.js"></script>
	<!-- bootstrap-daterangepicker -->
	<script
		src="vendors/moment/min/moment.min.js"></script>
	<script
		src="vendors/bootstrap-daterangepicker/daterangepicker.js"></script>
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
	<!-- Custom Theme Scripts -->
	<script src="build/js/custom.min.js"></script>

</body>
</html>
