<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@page import="java.util.List"%>
<%@page import="com.example.domain.FestivalVO"%>

<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Feidear</title>
    
    <!-- favicon -->
    <link rel=icon href="/images/favicon.png" sizes="20x20" type="image/png">

    <!-- Additional plugin css -->
    <link rel="stylesheet" href="/css/bootstrap.min.css">
    <link rel="stylesheet" href="/css/animate.css">
    <link rel="stylesheet" href="/css/magnific-popup.css">
    <link rel="stylesheet" href="/css/owl.carousel.min.css">
    <link rel="stylesheet" href="/css/slick.css">
    <link rel="stylesheet" href="/css/swiper.min.css">
    <link rel="stylesheet" href="/css/nice-select.css">
    <link rel="stylesheet" href="/css/jquery-ui.min.css">
    <!-- icons -->
    <link rel="stylesheet" href="/css/font-awesome.min.css">
    <link rel="stylesheet" href="/css/themify-icons.css">
    <link rel="stylesheet" href="/css/line-awesome.min.css">
    <!-- main css -->
    <link rel="stylesheet" href="/css/style.css">
    <!-- responsive css -->
    <link rel="stylesheet" href="/css/responsive.css">

    <!-- Bootstrap -->
    <link href="/admin/vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="/admin/vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="/admin/vendors/nprogress/nprogress.css" rel="stylesheet">
    <!-- FullCalendar -->
    <link href="/admin/vendors/fullcalendar/dist/fullcalendar.min.css" rel="stylesheet">
    <link href="/admin/vendors/fullcalendar/dist/fullcalendar.print.css" rel="stylesheet" media="print">

    <!-- Custom styling plus plugins -->
    <link href="/admin/build/css/custom.min.css" rel="stylesheet">

   <!-- 캘린더 css 손본거 플러그인 -->
    <link href="/admin/css/calander.css" rel="stylesheet">
    
   <!-- sweet alert창 -->
   <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
   <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.js"></script>
   <link rel="stylesheet"href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.css" />
    
    
  </head>

  <body >
    <div class="container body">
      <div class="main_container">
       
       
       
       
          
    <!-- navbar area start -->

    <nav class="navbar navbar-area navbar-expand-lg nav-style-03" style="margin-top:unset; background:#2A3F54;">
        <div class="container nav-container">
            <div class="responsive-mobile-menu">
                <div class="mobile-logo">
                    <a href="/index">
                        <img src="/images/sticky-logo.png" alt="logo">
                    </a>
                </div>
                <button class="navbar-toggler float-right" type="button" data-toggle="collapse" data-target="#tp_main_menu" 
                    aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggle-icon">
                        <span class="line"></span>
                        <span class="line"></span>
                        <span class="line"></span>
                    </span>
                </button>
                <div class="nav-right-content">
                    <ul class="pl-0">
                        <li class="notification">
                          <c:if test="${empty sessionScope.u_id}">
                            <a class="signUp-btn" href="#" id="icon">
                                <i class="fa fa-user-o"></i>
                            </a>
                          </c:if>
                          <c:if test="${not empty sessionScope.u_id}">
                            <a class="signUp-btn" href="/user/getUser?u_no=${sessionScope.u_no}">
                          </c:if>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="collapse navbar-collapse" id="tp_main_menu">
                <div class="logo-wrapper desktop-logo">
                    <a href="/index" class="main-logo">
                        <img src="/images/logo.png" alt="logo">
                    </a>
                    <a href="/index" class="sticky-logo">
                        <img src="/images/sticky-logo.png" alt="logo">
                    </a>
                </div>
                               <ul class="navbar-nav">
                    <li class="menu-item-has-children">
                        <a>축제 둘러보기</a>
                        <ul class="sub-menu">
                            <li><a href="/viewFestivalList">축제 정보</a></li>
                            <li><a href="#">근처 맛집</a></li>
                        </ul>
                    </li>
                    <li class="menu-item-has-children">
                        <a>커뮤니티</a>
                        <ul class="sub-menu">
                            <li><a href="/reviews/getReviewList">축제 일기</a></li>
                            <li><a href="/magazine">매거진</a></li>
                        </ul>
                    </li>
                    <li class="menu-item-has-children">
                        <a>이벤트</a>
                        <ul class="sub-menu">
                            <li><a href="/event">제휴 이벤트</a></li>
                      		<li><a href="/supporters">서포터즈</a></li>
                        </ul>
                    </li>
                    <c:if test="${empty sessionScope.u_id}">
                        <li>
                            <a href="#" id="emptySmart">스마트 페이지</a>
                        </li>
                    </c:if>
                    <c:if test="${not empty sessionScope.u_id}">
                        <li>
                            <a href="/smart/smart-page">스마트 페이지</a>
                        </li>
                    </c:if>
                    <li class="menu-item-has-children">
                        <a>문의사항</a>
                        <ul class="sub-menu">
                            <li><a href="/faq/faq">FAQ</a></li>
                            <li><a href="/faq/qna">1:1 문의</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
            <div class="nav-right-content">
                <ul>
                 <c:if test="${empty sessionScope.u_id}">
					<li><a href="#" style="color:white;" id="emptyMypage" >MY PAGE</a>
                    </li>
                 </c:if>
                 <c:if test="${not empty sessionScope.u_id}">
                    <li><a href="/user/getUser?u_no=${sessionScope.u_no}" style="color:white;">MY PAGE</a>
                    </li>
                 </c:if>
                </ul>
            </div>
        </div>
    </nav>
    <!-- navbar area end -->





        <!-- page content -->
        <div class="right_col" role="main">
          <div class="">
            <div class="page-title">
              <div class="title_left">
                <h3>&nbsp; 축제 달력 &nbsp;<small>클릭 시 상세정보가 보여요!</small></h3>
              </div>

            </div>

            <div class="clearfix"></div>

            <div class="row">
              <div class="col-md-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>일정 안내</h2>
                    <ul class="nav navbar-right panel_toolbox">

                    </ul>
                    <div class="clearfix"></div>
                  </div>
                  
                <!-- 달력 본체API start-->  
                  <div class="x_content">

                    <div id='calendar'></div>

                  </div>
                <!-- 달력 본체API end-->  
                
                
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- /page content -->
      </div>
    </div>
    
    

    <!-- calendar modal -->
    <div id="CalenderModalNew" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
      <div class="modal-dialog">
        <div class="modal-content">

          <div class="modal-header">
            <h4 class="modal-title" id="myModalLabel">새로운 일정</h4>
          </div>
          <div class="modal-body">
            <div id="testmodal" style="padding: 5px 20px;">
              <form id="antoform" class="form-horizontal calender" role="form">
                <div class="form-group">
                  <label class="col-sm-3 control-label">일정 이름</label>
                  <div class="col-sm-9">
                    <input type="text" class="form-control" id="title" name="title">
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-3 control-label">설명</label>
                  <div class="col-sm-9">
                    <textarea class="form-control" style="height:55px;" id="description1" name="description"></textarea>
                  </div>
                </div>
              </form>
            </div>
          </div>
          
          
        
    <!-- jQuery -->
    <script src="/admin/vendors/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap -->
   <script src="/admin/vendors/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
    <!-- FastClick -->
    <script src="/admin/vendors/fastclick/lib/fastclick.js"></script>
    <!-- NProgress -->
    <script src="/admin/vendors/nprogress/nprogress.js"></script>
    <!-- FullCalendar -->
    <script src="/admin/vendors/moment/moment.js"></script>
    <script src="/admin/vendors/fullcalendar/dist/fullcalendar.min.js" ></script>
    <script src="/admin/vendors/fullcalendar/dist/lang-all.js"></script>

    <!-- Custom Theme Scripts(표시되는 달력 이벤트 여기 있음) -->
    <script src="/admin/build/js/custom.js"></script>
    
    
    <!-- 달력 데이터 받아오기 -->
    <script type="text/javascript">
    function init_calendar() {

    if (typeof ($.fn.fullCalendar) === 'undefined') { return; }
    console.log('init_calendar');

    var date = new Date(),
        d = date.getDate(),
        m = date.getMonth(),
        y = date.getFullYear(),
        started,
        categoryClass;

    var calendar = $('#calendar').fullCalendar({
      dayMaxEventRows: true, // for all non-TimeGrid views
        header: {
            left: 'prev,next today',
            center: 'title',
            right: 'month,agendaWeek,agendaDay,listMonth'
        },
    
        selectable: true,
        selectHelper: true,
        select: function (start, end, allDay) {
            $('#fc_create').click();

            started = start;
            ended = end;

            $(".antosubmit").on("click", function () {
                var title = $("#title").val();
                if (end) {
                    ended = end;
                }

                categoryClass = $("#event_type").val();

                if (title) {
                    calendar.fullCalendar('renderEvent', {
                        title: title,
                        start: started,
                        end: end,
                        allDay: allDay
                    },
                        true // make the event "stick"
                    );
                }

                $('#title').val('');

                calendar.fullCalendar('unselect');

                $('.antoclose').click();

                return false;
            });
        },
        //월별로 한 칸에 보이는 최대 칸 수 설정
         eventLimit: true,
  		 views: {
     		month: {
       			eventLimit: 5
     		}
 		},
		//달력 데이터베이스 넣기!!
        eventClick: function (calEvent, jsEvent, view) {
            $('#fc_edit').click();
            $('#title2').val(calEvent.title);

            categoryClass = $("#event_type").val();

            $(".antosubmit2").on("click", function () {
                calEvent.title = $("#title2").val();
                calEvent.description2 = $("#title2").html();

                calendar.fullCalendar('updateEvent', calEvent);
                $('.antoclose2').click();
            });

            calendar.fullCalendar('unselect');
        },
        
        editable: true,
        events: [
          <%List<FestivalVO> calendarList = (List<FestivalVO>) request.getAttribute("calList");%>
          <%if (calendarList != null) { %>
           <%for (FestivalVO vo : calendarList) {%>
           {
            	title : '<%=vo.getFetv_name()%>',
                start : '<%=vo.getFetv_startdate()%>',
                end   : '<%=vo.getFetv_enddate()%>',
				//해당 이벤트 클릭 시 홈페이지에 있는 축제 상세페이지로 이동
				url	  : '/festival/festivalDetails?fetv_no=<%=vo.getFetv_no()%>'
            },
		<%}
	}%>   
        ]
 
    });

};

	//로그인 안하고 마이페이지 클릭했을 시
	$("#emptyMypage").click(function(){
		Swal.fire({
            		title : '접근 불가',
                    text : '로그인 후 이용해주세요!',
                    icon : 'error',
                    confirmButtonColor: '#d33'
	            })
	});

	//로그인 안하고 마이페이지 클릭했을 시
	$("#icon").click(function(){
		Swal.fire({
            		title : '접근 불가',
                    text : '로그인 후 이용해주세요!',
                    icon : 'error',
                    confirmButtonColor: '#d33'
	            })
	});

	//로그인 안하고 스마트페이지 클릭했을 시
	$("#emptySmart").click(function(){
		Swal.fire({
            		title : '접근 불가',
                    text : '로그인 후 이용해주세요!',
                    icon : 'error',
                    confirmButtonColor: '#d33'
	            })
	});

    </script>

  </body>
</html>