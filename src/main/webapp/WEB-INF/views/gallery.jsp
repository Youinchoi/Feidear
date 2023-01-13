<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Viaje - Travel, Tour Booking HTML5 Template</title>
    <!-- favicon -->
    <link rel=icon href="images/favicon.png" sizes="20x20" type="image/png">

    <!-- Additional plugin css -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/animate.css">
    <link rel="stylesheet" href="css/magnific-popup.css">
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/slick.css">
    <link rel="stylesheet" href="css/swiper.min.css">
    <link rel="stylesheet" href="css/nice-select.css">
    <!-- icons -->
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <link rel="stylesheet" href="css/themify-icons.css">
    <link rel="stylesheet" href="css/line-awesome.min.css">
    <!-- main css -->
    <link rel="stylesheet" href="css/style.css">
    <!-- responsive css -->
    <link rel="stylesheet" href="css/responsive.css">

</head>
<body>

    <!-- preloader area start -->
    <div class="preloader" id="preloader">
        <div class="preloader-inner">
            <div class="spinner">
                <div class="dot1"></div>
                <div class="dot2"></div>
            </div>
        </div>
    </div>
    <!-- preloader area end -->

    <!-- //. login Popup -->
    <div class="signUp-popup login-register-popup" id="signUp-popup">
        <div class="login-register-popup-wrap">
            <div class="row no-gutters">
                <div class="col-lg-6">
                    <div class="thumb">
                        <img src="images/others/signup.png" alt="img">
                    </div>
                </div>
                <div class="col-lg-6 align-self-center">
                    <div class="shape-thumb">
                        <img src="images/others/signup-shape.png" alt="img">
                    </div>
                    <form class="login-form-wrap">
                        <h4 class="text-center">Log In</h4>
                        <div class="single-input-wrap style-two">
                            <input type="text" placeholder="ID">
                            <span class="single-input-title"><i class="fa fa-user"></i></span>
                        </div>
                        <div class="single-input-wrap style-two">
                            <input type="text" placeholder="Password">
                            <span class="single-input-title"><i class="fa fa-lock"></i></span>
                        </div>
                        <label class="checkbox">
                            <input type="checkbox">
                            <span>Remember me</span>
                        </label>
                        <div class="single-input-wrap style-two">
                            <button class="btn btn-yellow w-100">로그인</button>
                        </div>
                        <div class="sign-in-btn">페이디어 계정이 없어요 ☞ <a href="sign-up2">회원가입</a></div> 
                        <div class="social-wrap">
                            <p>Or Continue With</p>
                            <ul class="social-icon">
                                <li>
                                    <a class="facebook" href="#" target="_blank"><i class="fa fa-facebook  "></i></a>
                                </li>
                                <li>
                                    <a class="twitter" href="#" target="_blank"><i class="fa fa-twitter  "></i></a>
                                </li>
                            </ul>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <!-- //. sign up Popup End -->

    <!-- navbar area start -->
    <div class="top-navbar">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 topbar-contact-wrap">
                    <div class="topbar-contact">
                        <i class="fa fa-phone"></i>
                        <span class="title">Support :</span>
                        <span class="number">02 1234 5678</span>
                    </div>
                    <ul class="social-icon">
                        <li>
                            <a class="facebook" href="#" target="_blank"><i class="fa fa-facebook  "></i></a>
                        </li>
                        <li>
                            <a class="twitter" href="#" target="_blank"><i class="fa fa-twitter  "></i></a>
                        </li>
                        <li>
                            <a class="pinterest" href="#" target="_blank"><i class="fa fa-instagram"></i></a>
                        </li>
                    </ul>
                </div>
                <div class="col-lg-6">
                    <div class="nav-right-content float-right">
                        <ul class="pl-0">


                            <li class="notification">
                                <a class="signUp-btn" href="#">
                                    <i class="fa fa-user-o"></i>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <nav class="navbar navbar-area navbar-expand-lg nav-style-03">
        <div class="container nav-container">
            <div class="responsive-mobile-menu">
                <div class="mobile-logo">
                    <a href="index">
                        <img src="images/sticky-logo.png" alt="logo">
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
                            <a class="btn btn-yellow" href="tour-details">Book Now <i class="fa fa-paper-plane"></i></a>
                        </li>

                        <li class="notification">
                            <a class="signUp-btn" href="#">
                                <i class="fa fa-user-o"></i>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="collapse navbar-collapse" id="tp_main_menu">
                <div class="logo-wrapper desktop-logo">
                    <a href="index" class="main-logo">
                        <img src="images/logo.png" alt="logo">
                    </a>
                    <a href="index" class="sticky-logo">
                        <img src="images/sticky-logo.png" alt="logo">
                    </a>
                </div>
                <ul class="navbar-nav">
                    <li class="menu-item-has-children">
                        <a>축제 둘러보기</a>
                        <ul class="sub-menu">
                            <li><a href="tour-list">축제 정보</a></li>
                            <li><a href="tour-list">근처 맛집</a></li>
                        </ul>
                    </li>
                    <li class="menu-item-has-children">
                        <a>커뮤니티</a>
                        <ul class="sub-menu">
                            <li><a href="blog04">축제 일기</a></li>
                            <li><a href="blog02">매거진</a></li>
                        </ul>
                    </li>
                    <li class="menu-item-has-children">
                        <a>이벤트</a>
                        <ul class="sub-menu">
                            <li><a href="blog03">제휴 이벤트</a></li>
                      		<li><a href="destination-details">서포터즈</a></li>
                        </ul>
                    </li>
                    <li class="menu-item-has-children">
                        <a>스마트 페이지</a>
                        <ul class="sub-menu">
                            <li><a href="smart-page">MY 여행성향 분석</a></li>
                      		<li><a href="smart-page">실시간 날씨</a></li>
                      		<li><a href="smart-page">혼잡도 체크</a></li>
                        </ul>
                    </li>
                    <li class="menu-item-has-children">
                        <a>문의사항</a>
                        <ul class="sub-menu">
                            <li><a href="faq">FAQ</a></li>
                            <li><a href="contact">1:1 문의</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
            <div class="nav-right-content">
                <ul>
                    <li><a href="user-profile">MY PAGE</a>
                    </li>
                    <li class="pr-0">
                        <a class="btn btn-yellow" href="calendar">축제 캘린더<i class="fa fa-paper-plane"></i></a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <!-- navbar area end -->


    <!-- breadcrumb area start -->
    <div class="breadcrumb-area jarallax" style="background-image:url(images/bg/1.png);">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb-inner">
                        <h1 class="page-title">Gallery</h1>
                        <ul class="page-list">
                            <li><a href="index">Home</a></li>
                            <li>Gallery</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- breadcrumb area End -->

    <!-- gallery area start -->
    <div class="main-gallery-area pd-top-120">
        <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <div class="single-gallery-area bg-gray">
                        <div class="gallery-title">
                            <p class="location"><img src="images/icons/1.png" alt="img">Maldives</p>
                            <h4><a href="gallery-details">Beautiful Beach of Greece</a></h4>
                        </div>
                        <div class="gallery-slider">
                            <div class="thumb">
                                <img src="images/gallery/8.png" alt="img">
                            </div>
                            <div class="thumb">
                                <img src="images/gallery/9.png" alt="img">
                            </div>
                            <div class="thumb">
                                <img src="images/gallery/10.png" alt="img">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="single-gallery-area bg-gray">
                        <div class="gallery-title">
                            <p class="location"><img src="images/icons/1.png" alt="img">Madagascar</p>
                            <h4><a href="gallery-details">Underwater world</a></h4>
                        </div>
                        <div class="gallery-slider">
                            <div class="thumb">
                                <img src="images/gallery/11.png" alt="img">
                            </div>
                            <div class="thumb">
                                <img src="images/gallery/12.png" alt="img">
                            </div>
                            <div class="thumb">
                                <img src="images/gallery/13.png" alt="img">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="single-gallery-area bg-gray">
                        <div class="gallery-title">
                            <p class="location"><img src="images/icons/1.png" alt="img">France</p>
                            <h4><a href="gallery-details">Underwater world</a></h4>
                        </div>
                        <div class="gallery-slider">
                            <div class="thumb">
                                <img src="images/gallery/14.png" alt="img">
                            </div>
                            <div class="thumb">
                                <img src="images/gallery/15.png" alt="img">
                            </div>
                            <div class="thumb">
                                <img src="images/gallery/16.png" alt="img">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="single-gallery-area bg-gray">
                        <div class="gallery-title">
                            <p class="location"><img src="images/icons/1.png" alt="img">Arizona, United States</p>
                            <h4><a href="gallery-details">Grand Canyon</a></h4>
                        </div>
                        <div class="gallery-slider">
                            <div class="thumb">
                                <img src="images/gallery/17.png" alt="img">
                            </div>
                            <div class="thumb">
                                <img src="images/gallery/18.png" alt="img">
                            </div>
                            <div class="thumb">
                                <img src="images/gallery/19.png" alt="img">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- gallery area End -->

    <!-- ads area start -->
    <div class="ads-area pd-top-70">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-8">
                    <a class="ads-thumb" href="#">
                        <img src="images/others/1.png" alt="ads">
                    </a>
                </div>
            </div>
        </div>
    </div>
    <!-- ads area End -->
    
    <!-- newslatter area Start -->
    <div class="newslatter-area pd-top-120">
        <div class="container">
            <div class="newslatter-area-wrap border-tp-solid">
                <div class="row">
                    <div class="col-xl-3 col-lg-6 col-md-5 offset-xl-2">
                        <div class="section-title mb-md-0">
                            <h2 class="title">Newsletter</h2>
                            <p>Sign up to receive the best offers</p>
                        </div>
                    </div>
                    <div class="col-xl-4 col-lg-6 col-md-7 align-self-center offset-xl-1">
                        <div class="input-group newslatter-wrap">
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
        </div>
    </div>
    <!-- newslatter area End -->
    
    <!-- footer area start -->
    <footer class="footer-area style-three" style="background-image: url(images/bg/2.png);">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-12">
                    <div class="about_us_widget text-center">
                        <a href="index" class="footer-logo"> 
                            <img src="images/logo.png" alt="footerlogo">
                        </a><br><br><br>
                    </div>
                    <div class="footer-widget widget text-center">
                        <ul class="widget_nav_menu text-center">
                            <li><a href="#">Home</a></li>
                            <li><a href="tour-list">Festival</a></li>
                            <li><a href="blog04">Community</a></li>
                            <li><a href="blog03">Events</a></li>
                            <li><a href="faq">FAQ</a></li>
                            <li><a href="contact">Q&A</a></li>
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
                                <span><a href="#">Support</a></span>
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
                    &copy; Feidear 2022 All rights reserved. Powered with <a href="#" target="_blank"><i class="fa fa-heart"></i> </a> by <a href="#" target="_blank"><span>Feidear.</span></a>
                </div>
            </div>
        </div>
    </footer>
    <!-- footer area end -->
    
	<!-- mini-menu (right section) area start -->
    <div class="back-to-top2" style="display: block;">
        <span class="back-top">
			<a href="contact"><img src="images/chatbot_smile.png"></a>
		</span>
    </div>
    
    <div class="back-to-top3" style="display: block;">
        <span class="back-top">
			<a href="tour-list"><img src="images/heart.png"></a>
		</span>
    </div>
    
    <!-- mini-menu area end -->

    <!-- back to top area start -->
    <div class="back-to-top">
        <span class="back-top"><i class="fa fa-angle-up"></i></span>
    </div>
    <!-- back to top area end -->


    <!-- Additional plugin js -->
    <script src="js/jquery-2.2.4.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.magnific-popup.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/wow.min.js"></script>
    <script src="js/slick.js"></script>
    <script src="js/waypoints.min.js"></script>
    <script src="js/jquery.counterup.min.js"></script>
    <script src="js/imagesloaded.pkgd.min.js"></script>
    <script src="js/isotope.pkgd.min.js"></script>
    <script src="js/swiper.min.js"></script>
    <script src="js/jquery.nice-select.min.js"></script>
    <script src="js/jquery-ui.min.js"></script>
    <script src="js/jarallax.min.js"></script>

    <!-- main js -->
    <script src="js/main.js"></script>

</body>
</html>