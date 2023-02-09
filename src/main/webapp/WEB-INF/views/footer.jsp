<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Footer</title>
    <!-- favicon -->
    <link rel=icon href="//images/favicon.png" sizes="20x20" type="image/png">

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

    <!-- 챗봇 CSS -->
    <style type="text/css">
        @keyframes fadeInUp {
            0% {
                opacity: 0;
                transform: translate3d(0, 100%, 0);
            }
            to {
                opacity: 1;
                transform: translateZ(0);
                z-index: 123456789;
            }
        }

        @keyframes fadeOut {
            0% {
                opacity: 1;
                transform: translateZ(0);
                z-index: 1;
            }
            to {
                opacity: 0;
                transform: translate3d(0, 100%, 0);
                z-index: -123456789!important;
            }
        }
    
        .test_obj {
            position: relative;
            animation: fadeInUp 1s;
        }   

        .close {
            position: relative;
            animation: fadeOut 1s;
            
        }

        #chatbot iframe {
            box-shadow: 0px 0px 15px -1px #565656;
        }
    </style>

</head>
<body>

    <!-- footer area start -->
    <footer class="footer-area style-three" style="background-image: url(/images/bg/2.png);">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-12">
                    <div class="about_us_widget text-center">
                        <a href="/index" class="footer-logo"> 
                            <img src="/images/logo.png" alt="footerlogo">
                        </a><br><br><br>
                    </div>
                    <div class="footer-widget widget text-center">
                        <ul class="widget_nav_menu text-center">
                            <li><a href="/index">FEIDEAR</a></li>
                            <li><a href="/viewFestivalList">축제 둘러보기</a></li>
                            <li><a href="/reviews/getReviewList">축제 일기</a></li>
                            <li><a href="/event">제휴 이벤트</a></li>
                            <c:if test="${empty sessionScope.u_id}">
                                <li><a class="signUp-btn" href="#">유저's PICK</a></li>
                            </c:if>
                            <c:if test="${not empty sessionScope.u_id}">
                                <li><a href="/smart/smart-page?cont=recomm">유저's PICK</a></li>
                            </c:if>
                            <li><a href="/faq/faq">FAQ</a></li>
                        </ul>
                    </div>  
                </div>  
            </div>
            <div class="row justify-content-center">
                <div class="col-lg-7">
                    <div class="footer-widget widget text-center">
                        <div class="widget-contact d-inline-flex">
                            <p class="telephone text-left">
                                <i class="fa fa-phone base-color"></i> 
                                <span>
                                    02 1234 5678
                                </span>		
                            </p>
                            <p class="location text-left"> 
                                <i class="fa fa-envelope-o"></i>
                                <span>feidear@kosmo.com</span>
                            </p>
                            <p class="text-left">
                                <i class="fa fa-map-marker"></i> 
                                <span>서울특별시 금천구 가산디지털2로<br> 한라원앤원타워 308호</span>
                            </p>
                            <p class="text-left">
                                <i class="fa fa-paper-plane"></i> 
                                <span><a href="/festival/calendar">축제 일정</a></span>
                            </p>
                        </div>
                    </div>
                </div> 
            </div>
        </div>
        <div class="copyright-inner border-tp-solid">
            <div class="container">
                <div class="copyright-text text-center">
                    &copy; Feidear 2022 All rights reserved. Powered with <a href="/#" target="_blank"><i class="fa fa-heart"></i> </a> by <a href="/#" target="_blank"><span>Feidear.</span></a>
                </div>
            </div>
        </div>
    </footer>
    <!-- footer area end -->
    
	<!-- mini-menu (right section) area start -->
    <div class="back-to-top2" id="chatbot_icon" style="display: block;">
        <span class="back-top">
			<a><img src="/images/chatbot_smile.png"></a>
		</span>
    </div>
    
    <div class="back-to-top3" style="display: block;">
        <span class="back-top">
            <c:if test="${empty sessionScope.u_id}">
                <a class="signUp-btn" href="#"><img src="/images/user.png"></a>
            </c:if>
            <c:if test="${not empty sessionScope.u_id}">
                <a href="/user/getUser?u_no=${sessionScope.u_no}"><img src="/images/user.png"></a>
            </c:if>
		</span>
    </div>
    
    <!-- mini-menu area end -->
    
    
    <!-- back to top area start -->
    <div class="back-to-top">
        <span class="back-top"><i class="fa fa-angle-up"></i></span>
    </div>
    <!-- back to top area end -->
    
    
    <!-- 챗봇 div -->
    <div id="chatbot" class="close" style="display:none; position:fixed; bottom:-8px; right: 100px; z-index: 123456789;">
        <iframe width="450" height="615" allow="microphone;" src="https://console.dialogflow.com/api-client/demo/embedded/50d4fa2d-a85c-4483-b66a-55c4493013e4" frameborder="0"></iframe>
    </div>
    <!-- 챗봇 modal div 끝 -->
</body>

<!-- 네이버아이디로로그인 버튼 노출 영역 
<script type="text/javascript">
    var naver_id_login = new naver_id_login("W4lGSs8ZKGXKbx5TBuRF", "http://localhost:8090/naver/naver_callback");	// Client ID, CallBack URL 삽입
                                    // 단 'localhost'가 포함된 CallBack URL
    var state = naver_id_login.getUniqState();

    naver_id_login.setButton("white", 2, 45);
    naver_id_login.setDomain("http://localhost:8090/index");	//  URL
    naver_id_login.setState(state);
    naver_id_login.setPopup();
    naver_id_login.init_naver_id_login();
</script>-->

<script src="/js/jquery-2.2.4.min.js"></script>

<!-- 챗봇 나타나게 하는 JS -->
<script type="text/javascript">
    $(function(){
        let icon = $('#chatbot_icon img');

        let chat = $('div#chatbot');

        icon.click(function(){
            chat.toggleClass('test_obj');
            chat.toggleClass('close');

            chat.fadeToggle();
            // chat.toggle();
        })//end of click

    })//end of function
</script>

</html>