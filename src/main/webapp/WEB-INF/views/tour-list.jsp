<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<%String pjName = "/Feidear";%>
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
    <link rel="stylesheet" href="css/jquery-ui.min.css">
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

    <!-- //. sign up Popup -->
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
                        <h4 class="text-center">Sign Up</h4>
                        <div class="single-input-wrap style-two">
                            <input type="text" placeholder="Name">
                            <span class="single-input-title"><i class="fa fa-user"></i></span>
                        </div>
                        <div class="single-input-wrap style-two">
                            <input type="text" placeholder="Email">
                            <span class="single-input-title"><i class="fa fa-envelope"></i></span>
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
                            <button class="btn btn-yellow w-100">Sign Up</button>
                        </div>
                        <div class="sign-in-btn">I already have an account. <a href="#">Sign In</a></div> 
                        <div class="social-wrap">
                            <p>Or Continue With</p>
                            <ul class="social-icon">
                                <li>
                                    <a class="facebook" href="#" target="_blank"><i class="fa fa-facebook  "></i></a>
                                </li>
                                <li>
                                    <a class="twitter" href="#" target="_blank"><i class="fa fa-twitter  "></i></a>
                                </li>
                                <li>
                                    <a class="pinterest" href="#" target="_blank"><i class="fa fa-pinterest"></i></a>
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
    <nav class="navbar navbar-area navbar-expand-lg nav-style-01">
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
                    <li>
                        <a href="tour-list">축제</a>
                    </li>
                    <li class="menu-item-has-children">
                        <a href="#">커뮤니티</a>
                        <ul class="sub-menu">
                            <li><a href="blog-details02">축제일기</a></li>
                            <li><a href="blog02">매거진</a></li>
                            <li><a href="blog-details">매거진 상세</a></li>
                        </ul>
                    </li>
                    <li class="menu-item-has-children">
                        <a href="#">이벤트</a>
                        <ul class="sub-menu">
                            <li><a href="blog03">제휴 이벤트</a></li>
                      		<li><a href="destination-details">서포터즈</a></li>
                        </ul>
                    </li>
                    <li class="menu-item-has-children">
                        <a href="#">스마트 PAGE</a>
                        <ul class="sub-menu">
                            <li><a href="user-profile">MY 여행성향 분석</a></li>
                      		<li><a href="user-profile">실시간 날씨</a></li>
                      		<li><a href="user-profile">혼잡도 체크</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="faq">FAQ</a>
                    </li>
                    <li>
                        <a href="contact">1:1문의</a>
                    </li>
                </ul>
            </div>
            <div class="nav-right-content">
                <ul>
                    <li><a href="user-profile">MY PAGE</a>
                    </li>
                    <li class="pr-0">
                        <a class="btn btn-yellow" href="tour-details">축제 캘린더<i class="fa fa-paper-plane"></i></a>
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
                        <h1 class="page-title">Tour List</h1>
                        <ul class="page-list">
                            <li><a href="index">Home</a></li>
                            <li>Tour List</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- breadcrumb area End -->

    <!-- tour list area End -->
    <div class="tour-list-area pd-top-120">
        <div class="container">
            <div class="row">
                <div class="col-xl-9 col-lg-8 order-lg-12">
                    <div class="tp-tour-list-search-area">
                        <div class="row">
                            <div class="col-xl-3 col-sm-6">
                                <label class="single-input-wrap">
                                    <i class="fa fa-calendar-minus-o"></i>
                                    <input type="text" class="departing-date" placeholder="Departing">
                                </label>
                            </div>
                            <div class="col-xl-3 col-sm-6">
                                <label class="single-input-wrap tour-list-search-icon">
                                    <i class="la la-arrow-up"></i>
                                    <input type="text" placeholder="Price Low to High">
                                </label>
                            </div>
                            <div class="col-xl-3 col-sm-6">
                                <label class="single-input-wrap tour-list-search-icon">
                                    <i class="la la-arrow-down"></i>
                                    <input type="text" placeholder="Price High to Low">
                                </label>
                            </div>
                            <div class="col-xl-3 col-sm-6">
                                <label class="single-input-wrap">
                                    <i class="fa fa-paper-plane"></i>
                                    <input type="text" placeholder="Name (A - Z)">
                                </label>
                            </div>
                        </div>
                    </div>
                    <div class="row justify-content-center">
                        <div class="col-lg-4 col-sm-6">
                            <div class="single-destinations-list style-two">
                                <div class="thumb">
                                    <img src="images/destination-list/4.png" alt="list">
                                </div>
                                <div class="details">
                                    <p class="location"><img src="images/icons/1.png" alt="map">Maldives</p>
                                    <h4 class="title"><a href="tour-details">Hurawalhi Island</a></h4>
                                    <p class="content">7 Days Tour on 2 person</p>
                                    <div class="tp-price-meta">
                                        <h2>620 <small>$</small></h2>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-sm-6">
                            <div class="single-destinations-list style-two">
                                <div class="thumb">
                                    <img src="images/destination-list/5.png" alt="list">
                                </div>
                                <div class="details">
                                    <p class="location"><img src="images/icons/1.png" alt="map">Indonesia</p>
                                    <h4 class="title"><a href="tour-details">Bali Province</a></h4>
                                    <p class="content">4 days 2 person</p>
                                    <div class="tp-price-meta">
                                        <h2>780 <small>$</small></h2>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-sm-6">
                            <div class="single-destinations-list style-two">
                                <div class="thumb">
                                    <img src="images/destination-list/6.png" alt="list">
                                </div>
                                <div class="details">
                                    <p class="location"><img src="images/icons/1.png" alt="map">Bangladesh</p>
                                    <h4 class="title"><a href="tour-details">Cox's bazar Sea Beach</a></h4>
                                    <p class="content">4 days 4 person</p>
                                    <div class="tp-price-meta">
                                        <h2>850 <small>$</small></h2>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-sm-6">
                            <div class="single-destinations-list style-two">
                                <div class="thumb">
                                    <img src="images/destination-list/7.png" alt="list">
                                </div>
                                <div class="details">
                                    <p class="location"><img src="images/icons/1.png" alt="map">Spain</p>
                                    <h4 class="title"><a href="tour-details">Barcelona city beach</a></h4>
                                    <p class="content">3 days 2 person</p>
                                    <div class="tp-price-meta">
                                        <h2>620 <small>$</small></h2>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-sm-6">
                            <div class="single-destinations-list style-two">
                                <div class="thumb">
                                    <img src="images/destination-list/8.png" alt="list">
                                </div>
                                <div class="details">
                                    <p class="location"><img src="images/icons/1.png" alt="map">Africa</p>
                                    <h4 class="title"><a href="tour-details">Amazon Africa</a></h4>
                                    <p class="content">5 days 2 person</p>
                                    <div class="tp-price-meta">
                                        <h2>620 <small>$</small></h2>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-sm-6">
                            <div class="single-destinations-list style-two">
                                <div class="thumb">
                                    <img src="images/destination-list/9.png" alt="list">
                                </div>
                                <div class="details">
                                    <p class="location"><img src="images/icons/1.png" alt="map">Thailand</p>
                                    <h4 class="title"><a href="tour-details">Thailand beach</a></h4>
                                    <p class="content">4 days 3 person</p>
                                    <div class="tp-price-meta">
                                        <h2>620 <small>$</small></h2>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-sm-6">
                            <div class="single-destinations-list style-two">
                                <div class="thumb">
                                    <img src="images/destination-list/10.png" alt="list">
                                </div>
                                <div class="details">
                                    <p class="location"><img src="images/icons/1.png" alt="map">Bali</p>
                                    <h4 class="title"><a href="tour-details">Bali Province</a></h4>
                                    <p class="content">3 days 2 person</p>
                                    <div class="tp-price-meta">
                                        <h2>620 <small>$</small></h2>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-sm-6">
                            <div class="single-destinations-list style-two">
                                <div class="thumb">
                                    <img src="images/destination-list/11.png" alt="list">
                                </div>
                                <div class="details">
                                    <p class="location"><img src="images/icons/1.png" alt="map">France</p>
                                    <h4 class="title"><a href="tour-details">France eiffel tower</a></h4>
                                    <p class="content">1 days 2 person</p>
                                    <div class="tp-price-meta">
                                        <h2>620 <small>$</small></h2>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-sm-6">
                            <div class="single-destinations-list style-two">
                                <div class="thumb">
                                    <img src="images/destination-list/12.png" alt="list">
                                </div>
                                <div class="details">
                                    <p class="location"><img src="images/icons/1.png" alt="map">Rome</p>
                                    <h4 class="title"><a href="tour-details">Colosseum, Rome</a></h4>
                                    <p class="content">3 days 3 person</p>
                                    <div class="tp-price-meta">
                                        <h2>620 <small>$</small></h2>
                                    </div>
                                </div>
                            </div>
                        </div>   
                        <div class="col-lg-12 text-center">
                            <div class="tp-pagination text-center d-inline-block mt-4">
                                <ul>
                                    <li><a class="prev page-numbers" href="#"><i class="la la-long-arrow-left"></i></a></li>
                                    <li><span class="page-numbers">1</span></li>
                                    <li><span class="page-numbers current">2</span></li>
                                    <li><a class="page-numbers" href="#">3</a></li>
                                    <li><a class="page-numbers" href="#">4</a></li>
                                    <li><a class="next page-numbers" href="#"><i class="la la-long-arrow-right"></i></a></li>
                                </ul>                          
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xl-3 col-lg-4 order-lg-1">
                    <div class="sidebar-area sidebar-area-inner-page">
                        <div class="widget tour-list-widget">
                            <div class="widget-tour-list-search">
                                <form class="search-form">
                                    <div class="form-group">
                                        <input type="text" placeholder="Search">
                                    </div>
                                    <button class="submit-btn" type="submit"><i class="ti-search"></i></button>
                                </form>
                            </div>
                            <div class="widget-tour-list-meta">
                                <div class="single-widget-search-input-title"><i class="fa fa-dot-circle-o"></i> Where From?</div>
                                <div class="single-widget-search-input">
                                    <input type="text" placeholder="Tour List Destination">
                                </div>
                                <div class="single-widget-search-input-title"><i class="fa fa-plus-circle"></i> Travel Type</div>
                                <div class="single-widget-search-input">
                                    <select class="select w-100 custom-select">
                                        <option value="1">Tour List Destination</option>
                                        <option value="2">two</option>
                                        <option value="3">Three</option>
                                        <option value="3">Four</option>
                                    </select>
                                </div>
                                <div class="single-widget-search-input-title"><i class="fa fa-calendar-minus-o"></i> Departing</div>
                                <div class="single-widget-search-input">
                                    <input type="text" class="departing-date custom-select" placeholder="Departing">
                                </div>
                                <div class="single-widget-search-input-title"><i class="fa fa-calendar-minus-o"></i> Returning</div>
                                <div class="single-widget-search-input">
                                    <input type="text" class="returning-date custom-select" placeholder="Returning">
                                </div>
                                <div class="single-widget-search-input-title"><i class="fa fa-usd"></i> Price Filter</div>
                                <div class="widget-product-sorting">
                                    <div class="slider-product-sorting"></div>
                                    <div class="product-range-detail">
                                        <label for="amount">Price: </label>
                                        <input type="text" id="amount" readonly>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="widget_ads">
                            <a href="#"><img src="images/others/01.png" alt="img"></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- tour list area End -->

    <!-- newslatter area Start -->
    <div class="newslatter-area pd-top-110">
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
    <footer class="footer-area" style="background-image: url(images/bg/2.png);">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-md-6">
                    <div class="footer-widget widget">
                        <div class="about_us_widget">
                            <a href="index" class="footer-logo"> 
                                <img src="images/logo.png" alt="footer logo">
                            </a>
                            <p>We believe brand interaction is key in commu- nication. Real innovations and a positive customer experience are the heart of successful communication.</p>
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
                    </div>
                </div>
                <div class="col-lg-3 col-md-6">
                    <div class="footer-widget widget ">
                        <div class="widget-contact">
                            <h4 class="widget-title">Contact us</h4>
                            <p>
                                <i class="fa fa-map-marker"></i> 
                                <span>Manama Tower, Badda Link Road, Badda Dhaka, Bangladesh</span>
                            </p>
                            <p class="location"> 
                                <i class="fa fa-envelope-o"></i>
                                <span>travelpoint@gmail.com</span>
                            </p>
                            <p class="telephone">
                                <i class="fa fa-phone base-color"></i> 
                                <span>
                                    +088 012121240
                                </span>
                            </p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-2 col-md-6">
                    <div class="footer-widget widget">
                        <h4 class="widget-title">Quick Link</h4>
                        <ul class="widget_nav_menu">
                            <li><a href="#">Home</a></li>
                            <li><a href="#">About Us</a></li>
                            <li><a href="#">Destination</a></li>
                            <li><a href="#">Tours</a></li>
                            <li><a href="#">Blog</a></li>
                            <li><a href="#">Contact</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6">
                    <div class="footer-widget widget">
                        <h4 class="widget-title">Instagram Gallery</h4>
                        <ul class="widget-instagram-feed">
                            <li><a href="#"><img src="images/instagram/1.png" alt="img"></a></li>
                            <li><a href="#"><img src="images/instagram/2.png" alt="img"></a></li>
                            <li><a href="#"><img src="images/instagram/3.png" alt="img"></a></li>
                            <li><a href="#"><img src="images/instagram/4.png" alt="img"></a></li>
                            <li><a href="#"><img src="images/instagram/5.png" alt="img"></a></li>
                            <li><a href="#"><img src="images/instagram/6.png" alt="img"></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="copyright-inner">
            <div class="copyright-text">
                &copy; Viaje 2019 All rights reserved. Powered with <a href="http://zwin.io/" target="_blank"><i class="fa fa-heart"></i> </a> by <a href="http://zwin.io/" target="_blank"><span>Zwin.</span></a>
            </div>
        </div>
    </footer>
    <!-- footer area end -->

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