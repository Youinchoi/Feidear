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
    <title>About</title>
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
                        <h1 class="page-title">About Us</h1>
                        <ul class="page-list">
                            <li><a href="index">Home</a></li>
                            <li>About Us</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- breadcrumb area End -->

    <!-- intro area start -->
    <div class="intro-area pd-top-108">
        <div class="container">
            <div class="section-title text-lg-center text-left">
                <h2 class="title"><span>We Are</span> Viaje</h2>
            </div>
            <div class="row">
                <div class="col-lg-3 col-md-6">
                    <div class="single-intro style-two">
                        <div class="thumb">
                            <img src="images/icons/9.png" alt="img">
                        </div>
                        <h4 class="intro-title">Private Transport</h4>
                        <p>Sponsorships are like unicorns or leprechauns, talked about often but they don’t exist. There is one dollars</p>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6">
                    <div class="single-intro style-two">
                        <div class="thumb">
                            <img src="images/icons/10.png" alt="img">
                        </div>
                        <h4 class="intro-title">Diverse Destinations</h4>
                        <p>My response usually harsh. Offended at the that a career that’s taken more than a decade to create could be</p>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6">
                    <div class="single-intro style-two">
                        <div class="thumb">
                            <img src="images/icons/11.png" alt="img">
                        </div>
                        <h4 class="intro-title">Great Hotels</h4>
                        <p>I have always made a living to make movies, never the other way around.I first I washed dishes in a seafood</p>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6">
                    <div class="single-intro style-two">
                        <div class="thumb">
                            <img src="images/icons/12.png" alt="img">
                        </div>
                        <h4 class="intro-title">Fast Booking</h4>
                        <p>Aenean sed nibh a magna posuere tempor. Nunc faucibus nunc aliquet. Donec congue, nunc vel tempor</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- intro area End -->

    <!-- about section area start -->
    <div class="about-section pd-top-80">
        <div class="container">
            <div class="row">
                <div class="col-lg-5 align-self-center">
                    <div class="section-title mb-lg-0">
                        <h2 class="title">Lets Go Travel <br> with Us</h2>
                        <p>Donec dapibus mauris id odio ornare tempus. Duis sit amet accumsan justo, quis tempor ligula. Quisque quis pharetra felis. Ut quis consequat orci, at consequat felis. Suspendisse auctor laoreet placerat. Nam et risus non lacus dignissim lacinia sit amet nec eros. Nulla vel urna quis libero pharetra varius. Nulla tellus nunc, malesuada at scelerisque eget, cursus at eros. Maecenas pellentesque lacus quis erat eleifend sagittis. Sed vel maximus ante, quis mattis neque. Nullam dapibus erat sed nulla cursus accumsan. Nulla volutpat libero lacinia venenatis sodales. Ut in pellentesque.</p>
                    </div>
                </div>
                <div class="col-lg-5 offset-lg-2">
                    <div class="thumb about-section-right-thumb">
                        <img src="images/others/9.png" alt="img">
                        <img class="about-absolute-thumb" src="images/others/10.png" alt="img">
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- about section area end -->
    
    <!-- destination-grid-area end -->
    <div class="destination-grid-area pd-top-105">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-6">
                    <div class="section-title text-center">
                        <h2 class="title">Our History</h2>
                        <p>Donec dapibus mauris id odio ornare tempus. Duis sit amet accumsan justo, quis tempor ligula. Quisque quis pharetra felis. Ut quis consequat orci, at consequat felis.</p>
                    </div>
                </div>
            </div>
            <div class="row justify-content-center">
                <div class="col-lg-4 col-md-6">
                    <div class="single-destination-grid style-two">
                        <div class="thumb">
                            <img src="images/destination-list/17.png" alt="img">
                        </div>
                        <div class="details">
                            <ul class="d-list-meta">
                                <li class="date">2019</li>
                                <li><img src="images/icons/13.png" alt="img"> 550+ Tour Complite</li>
                                <li><img src="images/icons/14.png" alt="img"> 25+ Awards Win</li>
                            </ul>
                            <h3 class="title"><a href="#">The Best Travel Places In The World 2019</a></h3>
                            <p class="content">Africa is the world's second largest and second most- populous continent, being behind Asia in both categories. At about 30.3 million km² including adjacent islands, it covers 6% Earth's total suyface area and 20% land area.</p>
                        </div>
                    </div>
                </div>  
                <div class="col-lg-4 col-md-6">
                    <div class="single-destination-grid style-two">
                        <div class="thumb">
                            <img src="images/destination-list/18.png" alt="img">
                        </div>
                        <div class="details">
                            <ul class="d-list-meta">
                                <li class="date">2019</li>
                                <li><img src="images/icons/13.png" alt="img"> 120+ Tour Complite</li>
                                <li><img src="images/icons/14.png" alt="img"> 25+ Awards Win</li>
                            </ul>
                            <h3 class="title"><a href="#">The Best Travel Places In The World 2018</a></h3>
                            <p class="content">Africa is the world's second largest and second most- populous continent, being behind Asia in both categories. At about 30.3 million km² including adjacent islands, it covers 6% Earth's total suyface area and 20% land area.</p>
                        </div>
                    </div>
                </div> 
                <div class="col-lg-4 col-md-6">
                    <div class="single-destination-grid style-two">
                        <div class="thumb">
                            <img src="images/destination-list/19.png" alt="img">
                        </div>
                        <div class="details">
                            <ul class="d-list-meta">
                                <li class="date">2019</li>
                                <li><img src="images/icons/13.png" alt="img"> 130+ Tour Complite</li>
                                <li><img src="images/icons/14.png" alt="img"> 25+ Awards Win</li>
                            </ul>
                            <h3 class="title"><a href="#">The Best Travel Places In The World 2017</a></h3>
                            <p class="content">Africa is the world's second largest and second most- populous continent, being behind Asia in both categories. At about 30.3 million km² including adjacent islands, it covers 6% Earth's total suyface area and 20% land area.</p>
                        </div>
                    </div>
                </div> 
            </div>
        </div>
    </div>
    <!-- destination-grid-area end -->
    
    <div class="team-newslater-bg" style="background-image:url(images/bg/4.png);">
        <!-- team area end -->
        <div class="team-area pd-top-70">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-lg-6">
                        <div class="section-title text-center">
                            <h2 class="title">Our Team</h2>
                            <p>Donec dapibus mauris id odio ornare tempus. Duis sit amet accumsan justo, quis tempor ligula. Quisque quis pharetra felis. Ut quis consequat orci, at consequat felis.</p>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-3 col-sm-6">
                        <div class="single-team text-center">
                            <div class="thumb">
                                <img src="images/team/1.png" alt="team">
                            </div>
                            <h3 class="name"><a href="#">Amber Reid</a></h3>
                            <span>Creative Director</span>
                            <ul class="team-social">
                                <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                <li><a href="#"><i class="fa fa-instagram"></i></a></li>
                                <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-6">
                        <div class="single-team text-center">
                            <div class="thumb">
                                <img src="images/team/2.png" alt="team">
                            </div>
                            <h3 class="name"><a href="#">Bruce Pearson</a></h3>
                            <span>Creative Director</span>
                            <ul class="team-social">
                                <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                <li><a href="#"><i class="fa fa-instagram"></i></a></li>
                                <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-6">
                        <div class="single-team text-center">
                            <div class="thumb">
                                <img src="images/team/3.png" alt="team">
                            </div>
                            <h3 class="name"><a href="#">Amber Griffin</a></h3>
                            <span>Creative Director</span>
                            <ul class="team-social">
                                <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                <li><a href="#"><i class="fa fa-instagram"></i></a></li>
                                <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-6">
                        <div class="single-team text-center">
                            <div class="thumb">
                                <img src="images/team/4.png" alt="team">
                            </div>
                            <h3 class="name"><a href="#">Abedin Abed</a></h3>
                            <span>Creative Director</span>
                            <ul class="team-social">
                                <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                <li><a href="#"><i class="fa fa-instagram"></i></a></li>
                                <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- team area end -->
        
        <!-- newslatter area Start -->
        <div class="newslatter-area pd-top-80">
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
    </div>
    
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