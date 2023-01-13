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
                            <li><a href="/tour-list">Festival</a></li>
                            <li><a href="/blog04">Community</a></li>
                            <li><a href="/blog03">Events</a></li>
                            <li><a href="/faq">FAQ</a></li>
                            <li><a href="/contact">Q&A</a></li>
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
                                <span><a href="/#">Support</a></span>
                            </p>
                        </div>
                    </div>
                </div> 
                <div class="col-lg-5">
                    <div class="widget input-group newslatter-wrap style-two">
                        <div class="input-group-prepend">
                            <span class="input-group-text"><i class="fa fa-envelope"></i></span>
                        </div>
                        <input type="text" class="form-control" placeholder="Email">
                        <div class="input-group-append">
                            <button class="btn btn-yellow" type="button">Subscribe</button>
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
    <div class="back-to-top2" style="display: block;">
        <span class="back-top">
			<a href="/contact"><img src="/images/chatbot_smile.png"></a>
		</span>
    </div>
    
    <div class="back-to-top3" style="display: block;">
        <span class="back-top">
			<a href="/tour-list"><img src="/images/heart.png"></a>
		</span>
    </div>
    
    <!-- mini-menu area end -->
    
    
    <!-- back to top area start -->
    <div class="back-to-top">
        <span class="back-top"><i class="fa fa-angle-up"></i></span>
    </div>
    <!-- back to top area end -->
    
    

</body>
</html>