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
	<link rel="icon" href="images/favicon.ico" type="image/ico" />

    <title>FeiDear Admin</title>

    <!-- Bootstrap -->
    <link href="vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="vendors/nprogress/nprogress.css" rel="stylesheet">
    <!-- iCheck -->
    <link href="vendors/iCheck/skins/flat/green.css" rel="stylesheet">
	
    <!-- bootstrap-progressbar -->
    <link href="vendors/bootstrap-progressbar/css/bootstrap-progressbar-3.3.4.min.css" rel="stylesheet">
    <!-- JQVMap -->
    <link href="vendors/jqvmap/dist/jqvmap.min.css" rel="stylesheet"/>
    <!-- bootstrap-daterangepicker -->
    <link href="vendors/bootstrap-daterangepicker/daterangepicker.css" rel="stylesheet">

    <!-- Custom Theme Style -->
    <link href="build/css/custom.min.css" rel="stylesheet">
    
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
      	
      	<!-- 사이드바 메뉴 시작 -->
        <div class="col-md-3 left_col">
          <div class="left_col scroll-view">
          
          	<!-- 대시보드(어드민 인덱스) 이동 -->
            <div class="navbar nav_title">
              <a href="index" class="site_title"><i class="fa fa-lightbulb-o"   style="border: 0;"></i> <span>FeiDear Admin</span></a>
            </div>

            <div class="clearfix"></div>

			<!-- 어드민 사이드 메뉴 이동 -->
            <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
              <div class="menu_section">
                <ul class="nav side-menu">
                  <li><a href="../index"><i class="fa fa-arrow-circle-right" aria-hidden="true"></i>사용자 페이지 이동</a></li>
                  <li><a><i class="fa fa-trophy"></i>축제 관리<span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="manageFestivals">축제 목록</a></li>
                      <li><a href="insertFestival">축제 등록</a></li>
                    </ul>
                  </li>
                  <li><a href="manageUsers"><i class="fa fa-users"></i>회원 관리</a></li>
                  <li><a href="communityAdmin"><i class="fa fa-comments"></i>커뮤니티 관리</a></li>
                  <li><a href="manageQnA"><i class="fa fa-question-circle"></i>문의사항 관리</a></li>
                  <li><a href="eventAdmin"><i class="fa fa-calendar-check-o"></i>이벤트 관리</a></li>
                  
                </ul>
              </div>
              

            </div>
            <!-- /sidebar menu -->
          </div>
        </div>
		<!-- 사이드바 메뉴 끝 -->
		
        <!-- top navigation -->
        <div class="top_nav">
          <div class="nav_menu">
              <div class="nav toggle">
                <a id="menu_toggle" style="padding : 15px 15px 15px;"><i class="fa fa-bars"></i></a>
              </div>
              <nav class="nav navbar-nav">
              
            </nav>
          </div>
        </div>
        <!-- /top navigation -->

        <!-- 대시보드 -->
        <!-- page content -->
        <div class="right_col" role="main">
          <br />

          <div class="row">


            <iframe src="http://52.78.179.3:5601/app/dashboards#/view/c6f12630-971a-11ed-9f07-8dd3f249f4a0?embed=true&_g=(filters%3A!()%2CrefreshInterval%3A(pause%3A!t%2Cvalue%3A0)%2Ctime%3A(from%3Anow-15m%2Cto%3Anow))" width="100%" height="1200px"></iframe>

          </div>
 
        
        </div>
        <!-- /page content -->
        <!-- 대시보드 끝 -->

        <!-- footer content -->
        <footer>
          <div class="pull-right">
            Gentelella - Bootstrap Admin Template by <a href="https://colorlib.com">Colorlib</a>
          </div>
          <div class="clearfix"></div>
        </footer>
        <!-- /footer content -->
        </div>
    </div>

    <!-- jQuery -->
    <script src="vendors/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap -->
    <script src="vendors/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
    <!-- FastClick -->
    <script src="vendors/fastclick/lib/fastclick.js"></script>
    <!-- NProgress -->
    <script src="vendors/nprogress/nprogress.js"></script>
    <!-- Chart.js -->
    <script src="vendors/Chart.js/dist/Chart.min.js"></script>
    <!-- gauge.js -->
    <script src="vendors/gauge.js/dist/gauge.min.js"></script>
    <!-- bootstrap-progressbar -->
    <script src="vendors/bootstrap-progressbar/bootstrap-progressbar.min.js"></script>
    <!-- iCheck -->
    <script src="vendors/iCheck/icheck.min.js"></script>
    <!-- Skycons -->
    <script src="vendors/skycons/skycons.js"></script>
    <!-- Flot -->
    <script src="vendors/Flot/jquery.flot.js"></script>
    <script src="vendors/Flot/jquery.flot.pie.js"></script>
    <script src="vendors/Flot/jquery.flot.time.js"></script>
    <script src="vendors/Flot/jquery.flot.stack.js"></script>
    <script src="vendors/Flot/jquery.flot.resize.js"></script>
    <!-- Flot plugins -->
    <script src="vendors/flot.orderbars/js/jquery.flot.orderBars.js"></script>
    <script src="vendors/flot-spline/js/jquery.flot.spline.min.js"></script>
    <script src="vendors/flot.curvedlines/curvedLines.js"></script>
    <!-- DateJS -->
    <script src="vendors/DateJS/build/date.js"></script>
    <!-- JQVMap -->
    <script src="vendors/jqvmap/dist/jquery.vmap.js"></script>
    <script src="vendors/jqvmap/dist/maps/jquery.vmap.world.js"></script>
    <script src="vendors/jqvmap/examples/js/jquery.vmap.sampledata.js"></script>
    <!-- bootstrap-daterangepicker -->
    <script src="vendors/moment/min/moment.min.js"></script>
    <script src="vendors/bootstrap-daterangepicker/daterangepicker.js"></script>

    <!-- Custom Theme Scripts -->
    <script src="build/js/custom.min.js"></script>
	
  </body>
</html>
