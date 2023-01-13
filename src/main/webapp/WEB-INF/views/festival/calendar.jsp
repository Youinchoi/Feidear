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
    
  </head>

  <body >
    <div class="container body">
      <div class="main_container">
       
       
       
       
          
    <!-- navbar area start -->

    <nav class="navbar navbar-area navbar-expand-lg nav-style-03" style="margin-top:unset;">
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
                        <li class="top-bar-btn-booking">
                            <a class="btn btn-yellow" href="/tour-details">Book Now <i class="fa fa-paper-plane"></i></a>
                        </li>

                        <li class="notification">
                            <a class="signUp-btn" href="/#">
                                <i class="fa fa-user-o"></i>
                            </a>
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
                            <li><a href="/review-list">축제 일기</a></li>
                            <li><a href="/magazine">매거진</a></li>
                        </ul>
                    </li>
                    <li class="menu-item-has-children">
                        <a>이벤트</a>
                        <ul class="sub-menu">
                            <li><a href="/event">제휴 이벤트</a></li>
                      		<li><a href="/destination-details">서포터즈</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="/smart-page">스마트 페이지</a>
                    </li>
                    <li class="menu-item-has-children">
                        <a>문의사항</a>
                        <ul class="sub-menu">
                            <li><a href="/faq">FAQ</a></li>
                            <li><a href="/qna">1:1 문의</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
            <div class="nav-right-content">
                <ul>
                    <li><a href="/user/getUser">MY PAGE</a>
                    </li>
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
          
          <!-- 캘린더 상세보기 모달창 로그인 아이디 admin 아니면 수정 불가하게 막기 -->
          <div class="modal-footer">
            <button type="button" class="btn btn-default antoclose" data-dismiss="modal">닫기</button>
            <!-- 수정 막아놓기
            <c:if test='${sessionScope.loginId!="admin"}'>
            <button type="button" class="btn btn-primary antosubmit">수정하기</button>
            </c:if>
             -->
          </div>
        </div>
      </div>
    </div>
    <div id="CalenderModalEdit" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
      <div class="modal-dialog">
        <div class="modal-content">

          <div class="modal-header">
         <h4 class="modal-title" id="myModalLabel2">자세히 보기</h4>
          </div>
          <div class="modal-body">

            <div id="testmodal2" style="padding: 5px 20px;">
              <form id="antoform2" class="form-horizontal calender" role="form">
                <div class="form-group">
                  <label class="col-sm-3 control-label">일정 이름</label>
                  <div class="col-sm-9">
                    <input type="text" class="form-control" id="title2" name="title2">
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-3 control-label">설명</label>
                  <div class="col-sm-9">
                    <textarea class="form-control" style="height:55px;" id="description2" name="description2"></textarea>
                  </div>
                </div>

              </form>
            </div>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-default antoclose2" data-dismiss="modal">닫기</button>
          <!-- 캘린더 상세보기 모달창 로그인 아이디 admin 아니면 수정 불가하게 막기 -->
                      <!-- 수정 막아놓기 
         <c:if test='${sessionScope.loginId!="admin"}'>
            <button type="button" class="btn btn-primary antosubmit2">수정하기</button>
         </c:if>
                      -->
          </div>
        </div>
      </div>
    </div>

    <div id="fc_create" data-toggle="modal" data-target="#CalenderModalNew"></div>
    <div id="fc_edit" data-toggle="modal" data-target="#CalenderModalEdit"></div>
    <!-- /calendar modal -->
        
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
          <%if (calendarList != null) {%>
           <%for (FestivalVO vo : calendarList) {%>
           {
            	title : '<%=vo.getFetv_name()%>',
                start : '<%=vo.getFetv_startdate()%>',
                end   : '<%=vo.getFetv_enddate()%>',
                description : '<%=vo.getFetv_name()%>'
            },
		<%}
	}%>   
        ]
 
    });

};
    </script>

  </body>
</html>