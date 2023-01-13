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

<title>FeiDear Admin | 회원 정보 조회 및 수정</title>

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
					<!-- 사이드바 메뉴 끝 -->
		</div>
	</div>

	<!-- top navigation -->
	<div class="top_nav">
		<div class="nav_menu">
			<div class="nav toggle">
				<a id="menu_toggle"><i class="fa fa-bars"></i></a>
			</div>
			<nav class="nav navbar-nav">
				<ul class=" navbar-right">
					<li class="nav-item dropdown open" style="padding-left: 15px;">
						<a href="javascript:;" class="user-profile dropdown-toggle"
						aria-haspopup="true" id="navbarDropdown" data-toggle="dropdown"
						aria-expanded="false"> <img src="images/img.jpg" alt="">John
							Doe
					</a>
						<div class="dropdown-menu dropdown-usermenu pull-right"
							aria-labelledby="navbarDropdown">
							<a class="dropdown-item" href="javascript:;"> Profile</a> <a
								class="dropdown-item" href="javascript:;"> <span
								class="badge bg-red pull-right">50%</span> <span>Settings</span>
							</a> <a class="dropdown-item" href="javascript:;">Help</a> <a
								class="dropdown-item" href="login.html"><i
								class="fa fa-sign-out pull-right"></i> Log Out</a>
						</div>
					</li>

					<li role="presentation" class="nav-item dropdown open"><a
						href="javascript:;" class="dropdown-toggle info-number"
						id="navbarDropdown1" data-toggle="dropdown" aria-expanded="false">
							<i class="fa fa-envelope-o"></i> <span class="badge bg-green">6</span>
					</a>
						<ul class="dropdown-menu list-unstyled msg_list" role="menu"
							aria-labelledby="navbarDropdown1">
							<li class="nav-item"><a class="dropdown-item"> <span
									class="image"><img src="images/img.jpg"
										alt="Profile Image" /></span> <span> <span>John Smith</span>
										<span class="time">3 mins ago</span>
								</span> <span class="message"> Film festivals used to be
										do-or-die moments for movie makers. They were where... </span>
							</a></li>
							<li class="nav-item"><a class="dropdown-item"> <span
									class="image"><img src="images/img.jpg"
										alt="Profile Image" /></span> <span> <span>John Smith</span>
										<span class="time">3 mins ago</span>
								</span> <span class="message"> Film festivals used to be
										do-or-die moments for movie makers. They were where... </span>
							</a></li>
							<li class="nav-item"><a class="dropdown-item"> <span
									class="image"><img src="images/img.jpg"
										alt="Profile Image" /></span> <span> <span>John Smith</span>
										<span class="time">3 mins ago</span>
								</span> <span class="message"> Film festivals used to be
										do-or-die moments for movie makers. They were where... </span>
							</a></li>
							<li class="nav-item"><a class="dropdown-item"> <span
									class="image"><img src="images/img.jpg"
										alt="Profile Image" /></span> <span> <span>John Smith</span>
										<span class="time">3 mins ago</span>
								</span> <span class="message"> Film festivals used to be
										do-or-die moments for movie makers. They were where... </span>
							</a></li>
							<li class="nav-item">
								<div class="text-center">
									<a class="dropdown-item"> <strong>See All Alerts</strong> <i
										class="fa fa-angle-right"></i>
									</a>
								</div>
							</li>
						</ul></li>
				</ul>
			</nav>
		</div>
	</div>
	<!-- /top navigation -->

	<!-- 본문 내용 -->
	<!-- page content -->
	<div class="right_col" role="main">
		<div class="">
			<div class="clearfix"></div>
			<div class="row">
				<div class="col-md-6 ">
					<div class="x_panel">
						<div class="x_title">
							<h2>회원 정보 조회 및 수정</h2>
							<ul class="nav navbar-right panel_toolbox">
								<li><a class="collapse-link"><i
										class="fa fa-chevron-up"></i></a></li>
								<li class="dropdown"><a href="#" class="dropdown-toggle"
									data-toggle="dropdown" role="button" aria-expanded="false"><i
										class="fa fa-wrench"></i></a>
									<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
										<a class="dropdown-item" href="#">Settings 1</a> <a
											class="dropdown-item" href="#">Settings 2</a>
									</div></li>
								<li><a class="close-link"><i class="fa fa-close"></i></a></li>
							</ul>
							<div class="clearfix"></div>
						</div>
						<div class="x_content">
							<br />
							<form id="updateUserForm" name="updateUserForm"
								class="form-horizontal form-label-left">
								<div class="form-group row">
									<label class="control-label col-md-3 col-sm-3 ">회원 번호</label>
									<div class="col-md-9 col-sm-9 ">
										<input type="text" id="u_no" name="u_no" class="form-control"
											readonly="readonly" placeholder="회원 번호는 변경이 불가합니다">
									</div>
								</div>
								<div class="form-group row">
									<label class="control-label col-md-3 col-sm-3 ">아이디</label>
									<div class="col-md-9 col-sm-9 ">
										<input type="text" id="u_id" name="u_id" class="form-control"
											readonly="readonly" placeholder="아이디는 변경이 불가합니다">
									</div>
								</div>
								<div class="form-group row">
									<label class="control-label col-md-3 col-sm-3 ">가입일</label>
									<div class="col-md-9 col-sm-9 ">
										<input type="text" id="u_date" name="u_date"
											class="form-control" readonly="readonly"
											placeholder="가입일은 변경이 불가합니다">
									</div>
								</div>
								<div class="form-group row ">
									<label class="control-label col-md-3 col-sm-3 ">이름</label>
									<div class="col-md-9 col-sm-9 ">
										<input type="text" id="u_name" name="u_name"
											class="form-control">
									</div>
								</div>
								<div class="form-group row ">
									<label class="control-label col-md-3 col-sm-3 ">이메일</label>
									<div class="col-md-9 col-sm-9 ">
										<input type="email" id="u_email" name="u_email"
											class="form-control">
									</div>
								</div>
								<div class="form-group row ">
									<label class="control-label col-md-3 col-sm-3 ">회원 구분</label>
									<div class="col-md-9 col-sm-9 ">
										<input type="button" id="u_group" name="u_group"
											class="btn btn-primary" value="일반 회원">
									</div>
								</div>
								<div class="form-group row">
									<label class="col-md-3 col-sm-3  control-label">회원 상태</label>
									<div class="col-md-9 col-sm-9 ">
										<div class="radio">
											<label> <input type="radio" class="flat" value="0"
												name="u_state">정상
											</label>
										</div>
										<div class="radio">
											<label> <input type="radio" class="flat" value="1"
												name="u_state">탈퇴 대기
											</label>
										</div>
										<div class="radio">
											<label> <input type="radio" class="flat" value="2"
												name="u_state">이용 정지
											</label>
										</div>
									</div>
								</div>
								<div class="form-group row">
									<label class="control-label col-md-3 col-sm-3 ">서포터즈</label>
									<div class="col-md-9 col-sm-9 ">
										<div class="">
											<label> <input type="checkbox" class="js-switch"
												checked name="u_sup" />
											</label>
										</div>
									</div>
								</div>


								<div class="ln_solid"></div>
								<div class="form-group">
									<div class="col-md-9 col-sm-9  offset-md-3">
										<button type="button" class="btn btn-secondary">취소</button>
										<button type="reset" class="btn btn-danger">초기화</button>
										<button type="submit" class="btn btn-primary">저장</button>
									</div>
								</div>

							</form>
						</div>
					</div>
				</div>
				<div class="col-md-6 ">
					<div class="x_panel">
						<div class="x_content">
							<div class="table-responsive">
								<table class="table" id="sReviewTbl"
									style="font-size: 1.3vw; white-space: nowrap;">
									<thead>
										<tr>
											<th class="column-title"
												style="text-align: center; border-top: none;">찜한 축제 목록</th>
										</tr>
									</thead>
									<tbody>
										<tr class="even pointer">
											<td class=" "><a href="#">가산 디지털 코딩 대축제 초보 환영</a></td>
										</tr>
										<tr class="even pointer">
											<td class=" "><a href="#">가산 디지털 코딩 대축제 초보 환영</a></td>
										</tr>
										<tr class="even pointer">
											<td class=" "><a href="#">가산 디지털 코딩 대축제 초보 환영</a></td>
										</tr>
										<tr class="even pointer">
											<td class=" "><a href="#">가산 디지털 코딩 대축제 초보 환영</a></td>
										</tr>
										<tr class="even pointer">
											<td class=" "><a href="#">가산 디지털 코딩 대축제 초보 환영</a></td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
					</div>
					<div class="x_panel">
						<div class="x_content">
							<div class="table-responsive">
								<table class="table" id="sReviewTbl"
									style="font-size: 1.3vw; white-space: nowrap;">
									<thead>
										<tr>
											<th class="column-title"
												style="text-align: center; border-top: none;" colspan="2">작성한
												리뷰 목록</th>
										</tr>
									</thead>
									<tbody>
										<tr class="even pointer">
											<td class=" "><a href="#">너무 예쁘고 좋고 아름답고 행복합니다</a></td>
											<td class=" " style="text-align: right;">2022.12.31</td>
										</tr>
										<tr class="even pointer">
											<td class=" "><a href="#">너무 예쁘고 좋고 아름답고 행복합니다</a></td>
											<td class=" " style="text-align: right;">2022.12.31</td>
										</tr>
										<tr class="even pointer">
											<td class=" "><a href="#">너무 예쁘고 좋고 아름답고 행복합니다</a></td>
											<td class=" " style="text-align: right;">2022.12.31</td>
										</tr>
										<tr class="even pointer">
											<td class=" "><a href="#">너무 예쁘고 좋고 아름답고 행복합니다</a></td>
											<td class=" " style="text-align: right;">2022.12.31</td>
										</tr>
										<tr class="even pointer">
											<td class=" "><a href="#">너무 예쁘고 좋고 아름답고 행복합니다</a></td>
											<td class=" " style="text-align: right;">2022.12.31</td>
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
