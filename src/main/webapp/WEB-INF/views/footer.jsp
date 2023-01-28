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

    <!-- 챗봇 띄우는 CSS -->
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
    </style>

    <!-- 네이버 스크립트 : 아직 안됨!! -->
    <script src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.2.js" charset="utf-8"></script>

    <script>

    var naverLogin = new naver.LoginWithNaverId(
            {
                clientId: "W4lGSs8ZKGXKbx5TBuRF", //내 애플리케이션 정보에 cliendId를 입력해줍니다.
                callbackUrl: "http://localhost:8090/naverLogin", // 내 애플리케이션 API설정의 Callback URL 을 입력해줍니다.
                isPopup: false,
                callbackHandle: true
            }
        );	

    naverLogin.init();

    window.addEventListener('load', function () {
        naverLogin.getLoginStatus(function (status) {
            if (status) {
                var email = naverLogin.user.getEmail(); // 필수로 설정할것을 받아와 아래처럼 조건문을 줍니다.
                
                console.log(naverLogin.user); 
                
                if( email == undefined || email == null) {
                    alert("이메일은 필수정보입니다. 정보제공을 동의해주세요.");
                    naverLogin.reprompt();
                    return;
                }
            } else {
                console.log("callback 처리에 실패하였습니다.");
            }
        });
    });


    var testPopUp;
    function openPopUp() {
        testPopUp= window.open("https://nid.naver.com/nidlogin.logout", "_blank", "toolbar=yes,scrollbars=yes,resizable=yes,width=1,height=1");
    }
    function closePopUp(){
        testPopUp.close();
    }

    function naverLogout() {
        openPopUp();
        setTimeout(function() {
            closePopUp();
            }, 1000);
        
        
    }
    </script>



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
                            <li><a href="/#">Home</a></li>
                            <li><a href="/viewFestivalList">Festival</a></li>
                            <li><a href="/reviews/getReviewList">Community</a></li>
                            <li><a href="/event">Events</a></li>
                            <li><a href="/faq/faq">FAQ</a></li>
                            <li><a href="/faq/qna">Q&A</a></li>
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
    <div id="chatbot" class="close" style="display:none; position:fixed; bottom:-15px; right: 100px; z-index: 123456789;">
        <iframe width="350" height="430" allow="microphone;" src="https://console.dialogflow.com/api-client/demo/embedded/50d4fa2d-a85c-4483-b66a-55c4493013e4"></iframe>
    </div>
    <!-- 챗봇 modal div 끝 -->
</body>


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