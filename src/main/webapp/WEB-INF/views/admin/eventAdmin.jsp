<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%String pjName = "/Feidear";%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- Meta, title, CSS, favicons, etc. -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon"
	href="/images/favicon.png"
	type="/image/png" />

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


			<!-- 본문 게시판 테이블 내용 -->
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
				               	
				               	<a href="insertEvent"><button type="button" class="btn btn-primary">글 등록</button></a>
								</div>
								<div class="table-responsive">
									<table class="table" id="eventTbl"
										style="font-size: 1vw; white-space: nowrap;">
										<tbody>
											<!-- 테이블 데이터 출력 -->
										 <c:forEach items="${eventList}" var="events">
											<tr>
												<td name="ev_no" id="ev_no" class="ev_no">${events.ev_no}</td>
												<td class="ev_event" name="ev_event" style="text-align:center;" value="${events.ev_no}"><a href="/event-details?ev_no=${events.ev_no}">${events.ev_title}</a></td>
												<td id="deleteBtn" class="deleteBtn" style="text-align:end;"><a href="#" class="btn btn-danger btn-xs"><i class="fa fa-trash-o"></i> 삭제 </a></td>
											</tr>
												
										 </c:forEach>
										</tbody>
									</table>
								</div>
							</div>

						<!-- 페이징 시작 -->
						<div class="row">
							<div class="col-lg-12  text-md-center text-left">
								<div class="tp-pagination text-md-center text-left d-inline-block mt-4">
									<ul style="list-style:none; font-size:18px;">
										<c:if test="${pageMaker.prev}">
											<li><a class="prev page-numbers" href="/admin/eventAdmin${pageMaker.makeQuery(pageMaker.startPage - 1)}"><i class="la la-long-arrow-left"></i></a></li>
										</c:if>
										<c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="idx">                                	
										<li style="float: left; margin-left: 20px;"><a href="/admin/eventAdmin${pageMaker.makeQuery(idx)}">
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
											<li><a class="next page-numbers" href="/admin/eventAdmin${pageMaker.makeQuery(pageMaker.endPage + 1)}"><i class="la la-long-arrow-right"></i></a></li>
										</c:if> 
									</ul>                          
								</div>
							</div>
						</div>
						<!-- 페이징 끝 --> 

							
					</div>
				</div>

			</div>
			<!-- 본문 게시판 테이블 내용 -->
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

	<script type="text/javascript">
		$('.deleteBtn').click(function(){

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
					location.href='deleteEvent?ev_no='+th;
					})//END THEN
				}//end if
			})//END THEN

		})
	</script>
	


</body>
</html>
