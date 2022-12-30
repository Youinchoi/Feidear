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
    <link rel=icon href="<%=pjName%>/resources/assets/images/favicon.png" sizes="20x20" type="image/png">

    <!-- Additional plugin css -->
    <link rel="stylesheet" href="<%=pjName%>/resources/assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="<%=pjName%>/resources/assets/css/animate.css">
    <link rel="stylesheet" href="<%=pjName%>/resources/assets/css/magnific-popup.css">
    <link rel="stylesheet" href="<%=pjName%>/resources/assets/css/owl.carousel.min.css">
    <link rel="stylesheet" href="<%=pjName%>/resources/assets/css/slick.css">
    <link rel="stylesheet" href="<%=pjName%>/resources/assets/css/swiper.min.css">
    <link rel="stylesheet" href="<%=pjName%>/resources/assets/css/nice-select.css">
    <link rel="stylesheet" href="<%=pjName%>/resources/assets/css/jquery-ui.min.css">
    <!-- icons -->
    <link rel="stylesheet" href="<%=pjName%>/resources/assets/css/font-awesome.min.css">
    <link rel="stylesheet" href="<%=pjName%>/resources/assets/css/themify-icons.css">
    <link rel="stylesheet" href="<%=pjName%>/resources/assets/css/line-awesome.min.css">
    <!-- main css -->
    <link rel="stylesheet" href="<%=pjName%>/resources/assets/css/style.css">
    <!-- responsive css -->
    <link rel="stylesheet" href="<%=pjName%>/resources/assets/css/responsive.css">

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

    <!-- search popup start -->
    <div class="body-overlay" id="body-overlay"></div>
    <div class="search-popup" id="search-popup">
        <form action="index" class="search-form">
            <div class="form-group">
                <input type="text" class="form-control" placeholder="Search.....">
            </div>
            <button type="submit" class="submit-btn"><i class="fa fa-search"></i></button>
        </form>
    </div>
    <!-- search popup End -->

    <!-- //. sign up Popup -->
    <div class="signUp-popup login-register-popup" id="signUp-popup">
        <div class="login-register-popup-wrap">
            <div class="row no-gutters">
                <div class="col-lg-6">
                    <div class="thumb">
                        <img src="<%=pjName%>/resources/assets/images/others/signup.png" alt="img">
                    </div>
                </div>
                <div class="col-lg-6 align-self-center">
                    <div class="shape-thumb">
                        <img src="<%=pjName%>/resources/assets/images/others/signup-shape.png" alt="img">
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
    <div class="top-navbar">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 topbar-contact-wrap">
                    <div class="topbar-contact">
                        <i class="fa fa-phone"></i>
                        <span class="title">Support:</span>
                        <span class="number">(+88) 0172 570051</span>
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
                            <li class="tp-lang">
                                <div class="tp-lang-wrap">
                                    <select class="select single-select">
                                      <option value="1">ENG</option>
                                      <option value="2">BAN</option>
                                      <option value="3">Chinese</option>
                                      <option value="3">Spanish</option>
                                    </select>
                                </div>
                            </li>
                            <li class="search">
                                <i class="ti-search"></i>
                            </li>
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
                        <img src="<%=pjName%>/resources/assets/images/sticky-logo.png" alt="logo">
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
                        <li class="tp-lang">
                            <div class="tp-lang-wrap">
                                <select class="select single-select">
                                  <option value="1">ENG</option>
                                  <option value="2">BAN</option>
                                  <option value="3">Chinese</option>
                                  <option value="3">Spanish</option>
                                </select>
                            </div>
                        </li>
                        <li class="search">
                            <i class="ti-search"></i>
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
                        <img src="<%=pjName%>/resources/assets/images/logo.png" alt="logo">
                    </a>
                    <a href="index" class="sticky-logo">
                        <img src="<%=pjName%>/resources/assets/images/sticky-logo.png" alt="logo">
                    </a>
                </div>
                <ul class="navbar-nav">
                    <li class="menu-item-has-children">
                        <a href="#">Home</a>
                        <ul class="sub-menu">
                            <li><a href="index">Home 01</a></li>
                            <li><a href="home02">Home 02</a></li>
                            <li><a href="home03">Home 03</a></li>
                            <li><a href="home04">Home 04</a></li>
                            <li><a href="home05">Home 05</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="about">About Us</a>
                    </li>
                    <li class="menu-item-has-children">
                        <a href="#">Pages</a>
                        <ul class="sub-menu">
                            <li><a href="tour-list">Tours List</a></li>
                            <li><a href="tour-list02">Tours List 02</a></li>
                            <li><a href="tour-list03">Tours List 03</a></li>
                            <li><a href="tour-details">Tours Details</a></li>
                            <li><a href="destination-list">Destination List</a></li>
                            <li><a href="destination-list02">Destination List 2</a></li>
                            <li><a href="destination-details">Destination Details</a></li>
                            <li><a href="gallery">Gallery</a></li>
                            <li><a href="gallery-details">Gallery Details</a></li>
                            <li><a href="comming-soon">Comming soon</a></li>
                            <li><a href="404">404</a></li>
                            <li><a href="faq">FAQ</a></li>
                            <li><a href="user-profile">User Profile</a></li>
                        </ul>
                    </li>
                    <li class="menu-item-has-children">
                        <a href="#">Blog</a>
                        <ul class="sub-menu">
                            <li><a href="blog">Blog</a></li>
                            <li><a href="blog02">Blog 02</a></li>
                            <li><a href="blog03">Blog 03</a></li>
                            <li><a href="blog-details">Blog Details</a></li>
                            <li><a href="blog-details02">Blog Details 02</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="contact">Contact</a>
                    </li>
                </ul>
            </div>
            <div class="nav-right-content">
                <ul>
                    <li class="pr-0">
                        <a class="btn btn-yellow" href="tour-details">Book Now <i class="fa fa-paper-plane"></i></a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <!-- navbar area end -->

    <!-- banner area start -->
    <div class="banner-area">
        <div class="banner-slider banner-slider-3">
            <div class="banner-slider-item jarallax" style="background-image: url(<%=pjName%>/resources/assets/images/banner/8.png);">
                <div class="container">
                    <div class="row">
                        <div class="col-xl-8 col-lg-9">
                            <div class="row">
                                <div class="col-lg-9 col-sm-8">
                                    <div class="banner-inner">
                                        <p class="banner-cat s-animate-1">Discover</p>
                                        <h2 class="banner-title s-animate-2">Alaska</h2>
                                        <p class="content s-animate-3">Iceland, a Nordic island nation, Iceland is defined by its dramatic landscape with volcanoes, Iceland geysers, Iceland hot springs and lava fields is here.</p>
                                        <a class="btn btn-yellow s-animate-4" href="#">Explore</a>
                                    </div>
                                </div>
                                <div class="col-lg-3 col-sm-4">
                                    <div class="video-popup-btn s-animate-video">
                                        <a href="https://www.youtube.com/watch?v=c7XEhXZ_rsk" class="video-play-btn mfp-iframe"><i class="fa fa-play"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="banner-slider-item jarallax" style="background-image: url(<%=pjName%>/resources/assets/images/banner/9.png);">
                <div class="container">
                    <div class="row">
                        <div class="col-xl-8 col-lg-9">
                            <div class="row">
                                <div class="col-lg-9 col-sm-8">
                                    <div class="banner-inner">
                                        <p class="banner-cat s-animate-1">Discover</p>
                                        <h2 class="banner-title s-animate-2">Norway</h2>
                                        <p class="content s-animate-3">Iceland, a Nordic island nation, is defined by its dramatic landscape with volcanoes, geysers, hot springs and lava fields.</p>
                                        <a class="btn btn-yellow s-animate-4" href="#">Explore</a>
                                    </div>
                                </div>
                                <div class="col-lg-3 col-sm-4">
                                    <div class="video-popup-btn s-animate-video">
                                        <a href="https://www.youtube.com/watch?v=c7XEhXZ_rsk" class="video-play-btn mfp-iframe"><i class="fa fa-play"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="banner-slider-item jarallax" style="background-image: url(<%=pjName%>/resources/assets/images/banner/10.png);">
                <div class="container">
                    <div class="row">
                        <div class="col-xl-8 col-lg-9">
                            <div class="row">
                                <div class="col-lg-9 col-sm-8">
                                    <div class="banner-inner">
                                        <p class="banner-cat s-animate-1">Hot Places</p>
                                        <h2 class="banner-title s-animate-2">Iceland</h2>
                                        <p class="content s-animate-3">Iceland, a Nordic island nation, is defined by its dramatic landscape with volcanoes, geysers, hot springs and lava fields.</p>
                                        <a class="btn btn-yellow s-animate-4" href="#">Explore</a>
                                    </div>
                                </div>
                                <div class="col-lg-3 col-sm-4">
                                    <div class="video-popup-btn s-animate-video">
                                        <a href="https://www.youtube.com/watch?v=c7XEhXZ_rsk" class="video-play-btn mfp-iframe"><i class="fa fa-play"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- <div class="container">  -->
            <div class="banner-paginations banner-paginations-3">
                <div class="banner-slider-dots"></div>
            </div>
        <!-- </div> -->
        <div class="container">
            <div class="banner-slider-controls">
                <div class="slider-nav tp-control-nav"></div>
            </div>
        </div>
    </div>
    <!-- banner area end -->

    <!-- search area start -->
    <div class="search-area tp-main-search-area tp-main-search-3">
        <div class="container">
            <div class="tp-main-search">
                <div class="row">
                    <div class="col-lg-3 col-md-4">
                        <div class="tp-search-single-wrap">
                            <input class="w-100" type="text" placeholder="Bangladesh,Dhaka">
                            <i class="ti-location-pin"></i>
                        </div>
                    </div>
                    <div class="col-lg-2 col-md-4">
                        <div class="tp-search-single-wrap">
                            <input class="w-100" type="text" placeholder="Where From?">
                            <i class="fa fa-dot-circle-o"></i>
                        </div>
                    </div>
                    <div class="col-lg-2 col-md-4 order-lg-9">
                        <div class="tp-search-single-wrap float-left w-100">
                            <select class="select w-100">
                                <option value="1">Travel Type</option>
                                <option value="2">Event Travel</option>
                                <option value="3">Weekend Break</option>
                                <option value="4">Package Holiday</option>
                                <option value="5">Business Travel</option>
                            </select>
                            <i class="fa fa-plus-circle"></i>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-8 order-lg-6">
                        <div class="tp-search-single-wrap float-left">
                            <div class="tp-search-date tp-departing-date-wrap w-50 float-left">
                                <input type="text" class="departing-date" placeholder="Departing">
                                <i class="fa fa-calendar-minus-o"></i>
                            </div>
                            <div class="tp-search-date tp-returning-date-wrap w-50 float-left">
                                <input type="text" class="returning-date" placeholder="Returning">
                                <img src="<%=pjName%>/resources/assets/images/icons/2.png" alt="icons">
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-2 col-md-4 order-12">
                        <a class="btn btn-yellow" href="#"><i class="ti-search"></i> Search</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- search area end -->

    <!-- upcomming tour start -->
    <div class="explore-world pd-top-142">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-xl-7 col-lg-10">
                    <div class="section-title text-center">
                        <h2 class="title">Explore the World for Yourself</h2>
                        <p>Nulla eleifend pulvinar purus, molestie euismod odio imperdiet ac. Ut sit amet erat nec nibh rhoncus varius in non lorem. Donec interdum, lectus in convallis pulvinar</p>
                    </div>
                </div>
            </div>
            <div class="upcomming-card-slider upcomming-card-slider-3 tp-common-slider-style tps-arrow-left-right">
                <div class="single-upconing-card">
                    <div class="shadow" style="background-image: url(<%=pjName%>/resources/assets/images/tour/1.png);">
                        <img src="<%=pjName%>/resources/assets/images/tour/1.png" alt="img">
                    </div>
                    <div class="details text-center">
                       <h3 class="title"><a href="#">Africa</a></h3>
                    </div>
                </div>
                <div class="single-upconing-card">
                    <div class="shadow" style="background-image: url(<%=pjName%>/resources/assets/images/tour/2.png);">
                        <img src="<%=pjName%>/resources/assets/images/tour/2.png" alt="img">
                    </div>
                    <div class="details text-center">
                       <h3 class="title"><a href="#">Rome</a></h3>
                    </div>
                </div>
                <div class="single-upconing-card">
                    <div class="shadow" style="background-image: url(<%=pjName%>/resources/assets/images/tour/3.png);">
                        <img src="<%=pjName%>/resources/assets/images/tour/3.png" alt="img">
                    </div>
                    <div class="details text-center">
                       <h3 class="title"><a href="#">Barrier Reef</a></h3>
                    </div>
                </div>
                <div class="single-upconing-card">
                    <div class="shadow" style="background-image: url(<%=pjName%>/resources/assets/images/tour/4.png);">
                        <img src="<%=pjName%>/resources/assets/images/tour/4.png" alt="img">
                    </div>
                    <div class="details text-center">
                       <h3 class="title"><a href="#">singapore</a></h3>
                    </div>
                </div>
                <div class="single-upconing-card">
                    <div class="shadow" style="background-image: url(<%=pjName%>/resources/assets/images/tour/5.png);">
                        <img src="<%=pjName%>/resources/assets/images/tour/4.png" alt="img">
                    </div>
                    <div class="details text-center">
                       <h3 class="title"><a href="#">Machu Picchu</a></h3>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- upcomming tour end -->

    <!-- upcomming tour start -->
    <div class="upcomming-tour pd-top-65 pd-bottom-120">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-xl-6 col-lg-8">
                    <div class="section-title text-center">
                        <h2 class="title wow animated fadeInUp" data-wow-duration="0.6s" data-wow-delay="0.1s">Upcoming Tours</h2>
                        <p class="wow animated fadeInUp" data-wow-duration="0.6s" data-wow-delay="0.2s">Lorem Ipsum is simply dummy text the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,</p>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-xl-4 col-md-6">
                    <div class="single-upconing-card style-two wow animated fadeInUp" data-wow-duration="0.4s" data-wow-delay="0.1s">
                        <div class="shadow" style="background-image: url(<%=pjName%>/resources/assets/images/destination-list/28.png);">
                            <img src="<%=pjName%>/resources/assets/images/destination-list/28.png" alt="img">
                        </div>
                        <div class="tp-price-meta">
                            <h2>620 <span>$</span></h2>
                            <p>Price</p>
                        </div>
                        <div class="details">
                           <h3 class="title"><a href="#">Machu Picchu</a></h3>
                            <div class="tp-review-meta">
                                <i class="ic-yellow fa fa-star"></i>
                                <i class="ic-yellow fa fa-star"></i>
                                <i class="ic-yellow fa fa-star"></i>
                                <i class="ic-yellow fa fa-star"></i>
                                <i class="ic-yellow fa fa-star"></i>
                                <span>4.0</span>
                            </div>
                        </div>
                        <div class="location">Peru</div>
                    </div>
                </div>
                <div class="col-xl-4 col-md-6">
                    <div class="single-upconing-card style-two wow animated fadeInUp" data-wow-duration="0.7s" data-wow-delay="0.2s">
                        <div class="shadow" style="background-image: url(<%=pjName%>/resources/assets/images/destination-list/29.png);">
                            <img src="<%=pjName%>/resources/assets/images/destination-list/29.png" alt="img">
                        </div>
                        <div class="tp-price-meta">
                            <h2>620 <span>$</span></h2>
                            <p>Price</p>
                        </div>
                        <div class="details">
                           <h3 class="title"><a href="#">Rome</a></h3>
                            <div class="tp-review-meta">
                                <i class="ic-yellow fa fa-star"></i>
                                <i class="ic-yellow fa fa-star"></i>
                                <i class="ic-yellow fa fa-star"></i>
                                <i class="ic-yellow fa fa-star"></i>
                                <i class="ic-yellow fa fa-star"></i>
                                <span>4.0</span>
                            </div>
                        </div>
                        <div class="location">Italy</div>
                    </div>
                </div>
                <div class="col-xl-4 col-md-6">
                    <div class="single-upconing-card style-two wow animated fadeInUp" data-wow-duration="1.0s" data-wow-delay="0.3s">
                        <div class="shadow" style="background-image: url(<%=pjName%>/resources/assets/images/destination-list/30.png);">
                            <img src="<%=pjName%>/resources/assets/images/destination-list/30.png" alt="img">
                        </div>
                        <div class="tp-price-meta">
                            <h2>620 <span>$</span></h2>
                            <p>Price</p>
                        </div>
                        <div class="details">
                           <h3 class="title"><a href="#">Great Barrier</a></h3>
                            <div class="tp-review-meta">
                                <i class="ic-yellow fa fa-star"></i>
                                <i class="ic-yellow fa fa-star"></i>
                                <i class="ic-yellow fa fa-star"></i>
                                <i class="ic-yellow fa fa-star"></i>
                                <i class="ic-yellow fa fa-star"></i>
                                <span>4.0</span>
                            </div>
                        </div>
                        <div class="location">AUSTRALIA</div>
                    </div>
                </div>
                <div class="col-xl-4 col-md-6">
                    <div class="single-upconing-card style-two wow animated fadeInUp" data-wow-duration="1.3s" data-wow-delay="0.4s">
                        <div class="shadow" style="background-image: url(<%=pjName%>/resources/assets/images/destination-list/31.png);">
                            <img src="<%=pjName%>/resources/assets/images/destination-list/31.png" alt="img">
                        </div>
                        <div class="tp-price-meta">
                            <h2>620 <span>$</span></h2>
                            <p>Price</p>
                        </div>
                        <div class="details">
                           <h3 class="title"><a href="#">Bali Province</a></h3>
                            <div class="tp-review-meta">
                                <i class="ic-yellow fa fa-star"></i>
                                <i class="ic-yellow fa fa-star"></i>
                                <i class="ic-yellow fa fa-star"></i>
                                <i class="ic-yellow fa fa-star"></i>
                                <i class="ic-yellow fa fa-star"></i>
                                <span>4.0</span>
                            </div>
                        </div>
                        <div class="location">INDONESIA</div>
                    </div>
                </div>
                <div class="col-xl-4 col-md-6">
                    <div class="single-upconing-card style-two wow animated fadeInUp" data-wow-duration="1.6s" data-wow-delay="0.5s">
                        <div class="shadow" style="background-image: url(<%=pjName%>/resources/assets/images/destination-list/32.png);">
                            <img src="<%=pjName%>/resources/assets/images/destination-list/32.png" alt="img">
                        </div>
                        <div class="tp-price-meta">
                            <h2>620 <span>$</span></h2>
                            <p>Price</p>
                        </div>
                        <div class="details">
                           <h3 class="title"><a href="#">Hurawalhi Island</a></h3>
                            <div class="tp-review-meta">
                                <i class="ic-yellow fa fa-star"></i>
                                <i class="ic-yellow fa fa-star"></i>
                                <i class="ic-yellow fa fa-star"></i>
                                <i class="ic-yellow fa fa-star"></i>
                                <i class="ic-yellow fa fa-star"></i>
                                <span>4.0</span>
                            </div>
                        </div>
                        <div class="location">MALDIVES</div>
                    </div>
                </div>
                <div class="col-xl-4 col-md-6">
                    <div class="single-upconing-card style-two wow animated fadeInUp" data-wow-duration="1.9s" data-wow-delay="0.6s">
                        <div class="shadow" style="background-image: url(<%=pjName%>/resources/assets/images/destination-list/33.png);">
                            <img src="<%=pjName%>/resources/assets/images/destination-list/33.png" alt="img">
                        </div>
                        <div class="tp-price-meta">
                            <h2>620 <span>$</span></h2>
                            <p>Price</p>
                        </div>
                        <div class="details">
                           <h3 class="title"><a href="#">cox's bazar Sea</a></h3>
                            <div class="tp-review-meta">
                                <i class="ic-yellow fa fa-star"></i>
                                <i class="ic-yellow fa fa-star"></i>
                                <i class="ic-yellow fa fa-star"></i>
                                <i class="ic-yellow fa fa-star"></i>
                                <i class="ic-yellow fa fa-star"></i>
                                <span>4.0</span>
                            </div>
                        </div>
                        <div class="location">BANGLADESH</div>
                    </div>
                </div>
            </div>
            <div class="innerbtn-wrap text-center wow animated fadeInUp" data-wow-duration="2.2s" data-wow-delay="0.7s">
                <a class="btn btn-yellow" href="#">View All Tours</a>
            </div>
        </div>
    </div>
    <!-- upcomming tour end -->

    <!-- travelus area start -->
    <div class="travelus-area pd-top-120 pd-bottom-92 jarallax" style="background-image: url(<%=pjName%>/resources/assets/images/bg/9.png);">
        <div class="container">
            <div class="row">
                <div class="col-xl-6 col-lg-8">
                    <div class="section-title section-title-left-border style-two">
                        <h2 class="title">Lets Go Travel with Us</h2>
                        <p>Nulla eleifend pulvinar purus, molestie euismod odio imperdiet ac. Ut sit amet erat nec nibh rhoncus varius in non lorem. Donec interdum, lectus in convallis pulvinar, enim elit porta sapien, vel finibus erat felis sed neque. Etiam aliquet neque sagittis erat tincidunt aliquam.</p>
                    </div>
                </div>
            </div>
            <ul class="row single-travelus-wrap-area">
                <li class="col-lg-2 col-sm-4 single-travelus-wrap">
                    <div class="single-travelus text-center">
                        <div class="icons">
                            <img src="<%=pjName%>/resources/assets/images/icons/27.png" alt="img">
                        </div>
                        <h4>Search</h4>
                    </div>
                </li>
                <li class="col-lg-2 col-sm-4 single-travelus-wrap">
                    <div class="single-travelus text-center">
                        <div class="icons">
                            <img src="<%=pjName%>/resources/assets/images/icons/28.png" alt="img">
                        </div>
                        <h4>Book</h4>
                    </div>
                </li>
                <li class="col-lg-2 col-sm-4 single-travelus-wrap">
                    <div class="single-travelus text-center">
                        <div class="icons">
                            <img src="<%=pjName%>/resources/assets/images/icons/27.png" alt="img">
                        </div>
                        <h4>Travel</h4>
                    </div>
                </li>
                <li class="col-lg-5 offset-xl-1 single-travelus-wrap">
                    <img src="<%=pjName%>/resources/assets/images/others/15.png" alt="img">
                </li>
            </ul>
            <!-- package area end -->
            <div class="package-area pd-top-105">
                <div class="container">
                    <div class="row">
                        <div class="col-xl-6 col-lg-8">
                            <div class="section-title section-title-left-border style-two">
                                <h2 class="title">Best Packages For You</h2>
                                <p>Vivamus eget aliquam dui. Integer eu arcu vel arcu suscipit ultrices quis non mauris. Aenean scelerisque, sem eu dictum commodo, velit nisi</p>
                            </div>
                        </div>
                    </div>
                    <div class="row justify-content-center">
                        <div class="col-xl-3 col-lg-4 col-sm-6">
                            <div class="single-package-card style-two wow animated fadeInUp" data-wow-duration="0.1s" data-wow-delay="0.1s">
                                <div class="thumb">
                                    <img src="<%=pjName%>/resources/assets/images/destination-list/8.png" alt="img">
                                </div>
                                <div class="details">
                                    <div class="location">
                                        <span class="location-name"><img src="<%=pjName%>/resources/assets/images/icons/1.png" alt="img">Africa</span>
                                        <span class="tp-review-meta float-right">
                                            <i class="ic-yellow fa fa-star"></i>
                                            <i class="ic-yellow fa fa-star"></i>
                                            <i class="ic-yellow fa fa-star"></i>
                                            <i class="ic-yellow fa fa-star"></i>
                                            <i class="ic-yellow fa fa-star"></i>
                                            <span>4.0</span>
                                        </span>
                                    </div> 
                                    <h3>Machu Picchu</h3> 
                                    <ul class="package-meta">
                                        <li class="tp-price-meta">
                                            <p><i class="fa fa-clock-o"></i></p>
                                            <p>Duration</p>
                                            <h2>4 Days</h2>
                                        </li>
                                        <li class="tp-price-meta">
                                            <p><i class="fa fa-users"></i></p>
                                            <p>Person</p>
                                            <h2>2 Adult</h2>
                                        </li>
                                        <li class="tp-price-meta">
                                            <p><i class="fa fa-tag"></i></p>
                                            <p>Price</p>
                                            <h2>620 <span>$</span></h2>
                                        </li>
                                    </ul>
                                    <a class="btn btn-gray" href="#">Book Now</a> 
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-lg-4 col-sm-6">
                            <div class="single-package-card style-two wow animated fadeInUp" data-wow-duration="0.3s" data-wow-delay="0.2s">
                                <div class="thumb">
                                    <img src="<%=pjName%>/resources/assets/images/destination-list/9.png" alt="img">
                                </div>
                                <div class="details">
                                    <div class="location">
                                        <span class="location-name"><img src="<%=pjName%>/resources/assets/images/icons/1.png" alt="img">Peru</span>
                                        <span class="tp-review-meta float-right">
                                            <i class="ic-yellow fa fa-star"></i>
                                            <i class="ic-yellow fa fa-star"></i>
                                            <i class="ic-yellow fa fa-star"></i>
                                            <i class="ic-yellow fa fa-star"></i>
                                            <i class="ic-yellow fa fa-star"></i>
                                            <span>4.0</span>
                                        </span>
                                    </div> 
                                    <h3>British Islands</h3> 
                                    <ul class="package-meta">
                                        <li class="tp-price-meta">
                                            <p><i class="fa fa-clock-o"></i></p>
                                            <p>Duration</p>
                                            <h2>4 Days</h2>
                                        </li>
                                        <li class="tp-price-meta">
                                            <p><i class="fa fa-users"></i></p>
                                            <p>Person</p>
                                            <h2>2 Adult</h2>
                                        </li>
                                        <li class="tp-price-meta">
                                            <p><i class="fa fa-tag"></i></p>
                                            <p>Price</p>
                                            <h2>720 <span>$</span></h2>
                                        </li>
                                    </ul> 
                                    <a class="btn btn-gray" href="#">Book Now</a> 
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-lg-4 col-sm-6">
                            <div class="single-package-card style-two wow animated fadeInUp" data-wow-duration="0.6s" data-wow-delay="0.3s">
                                <div class="thumb">
                                    <img src="<%=pjName%>/resources/assets/images/destination-list/10.png" alt="img">
                                </div>
                                <div class="details">
                                    <div class="location">
                                        <span class="location-name"><img src="<%=pjName%>/resources/assets/images/icons/1.png" alt="img">USA</span>
                                        <span class="tp-review-meta float-right">
                                            <i class="ic-yellow fa fa-star"></i>
                                            <i class="ic-yellow fa fa-star"></i>
                                            <i class="ic-yellow fa fa-star"></i>
                                            <i class="ic-yellow fa fa-star"></i>
                                            <i class="ic-yellow fa fa-star"></i>
                                            <span>4.0</span>
                                        </span>
                                    </div> 
                                    <h3>Grand Canyon</h3> 
                                    <ul class="package-meta">
                                        <li class="tp-price-meta">
                                            <p><i class="fa fa-clock-o"></i></p>
                                            <p>Duration</p>
                                            <h2>4 Days</h2>
                                        </li>
                                        <li class="tp-price-meta">
                                            <p><i class="fa fa-users"></i></p>
                                            <p>Person</p>
                                            <h2>2 Adult</h2>
                                        </li>
                                        <li class="tp-price-meta">
                                            <p><i class="fa fa-tag"></i></p>
                                            <p>Price</p>
                                            <h2>310 <span>$</span></h2>
                                        </li>
                                    </ul> 
                                    <a class="btn btn-gray" href="#">Book Now</a> 
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-lg-4 col-sm-6">
                            <div class="single-package-card style-two wow animated fadeInUp" data-wow-duration="0.9s" data-wow-delay="0.4s">
                                <div class="thumb">
                                    <img src="<%=pjName%>/resources/assets/images/destination-list/11.png" alt="img">
                                </div>
                                <div class="details">
                                    <div class="location">
                                        <span class="location-name"><img src="<%=pjName%>/resources/assets/images/icons/1.png" alt="img">France</span>
                                        <span class="tp-review-meta float-right">
                                            <i class="ic-yellow fa fa-star"></i>
                                            <i class="ic-yellow fa fa-star"></i>
                                            <i class="ic-yellow fa fa-star"></i>
                                            <i class="ic-yellow fa fa-star"></i>
                                            <i class="ic-yellow fa fa-star"></i>
                                            <span>4.0</span>
                                        </span>
                                    </div> 
                                    <h3>eiffel tower</h3> 
                                    <ul class="package-meta">
                                        <li class="tp-price-meta">
                                            <p><i class="fa fa-clock-o"></i></p>
                                            <p>Duration</p>
                                            <h2>4 Days</h2>
                                        </li>
                                        <li class="tp-price-meta">
                                            <p><i class="fa fa-users"></i></p>
                                            <p>Person</p>
                                            <h2>2 Adult</h2>
                                        </li>
                                        <li class="tp-price-meta">
                                            <p><i class="fa fa-tag"></i></p>
                                            <p>Price</p>
                                            <h2>540 <span>$</span></h2>
                                        </li>
                                    </ul> 
                                    <a class="btn btn-gray" href="#">Book Now</a> 
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-lg-4 col-sm-6">
                            <div class="single-package-card style-two wow animated fadeInUp" data-wow-duration="1.2s" data-wow-delay="0.5s">
                                <div class="thumb">
                                    <img src="<%=pjName%>/resources/assets/images/destination-list/12.png" alt="img">
                                </div>
                                <div class="details">
                                    <div class="location">
                                        <span class="location-name"><img src="<%=pjName%>/resources/assets/images/icons/1.png" alt="img">Italy</span>
                                        <span class="tp-review-meta float-right">
                                            <i class="ic-yellow fa fa-star"></i>
                                            <i class="ic-yellow fa fa-star"></i>
                                            <i class="ic-yellow fa fa-star"></i>
                                            <i class="ic-yellow fa fa-star"></i>
                                            <i class="ic-yellow fa fa-star"></i>
                                            <span>4.0</span>
                                        </span>
                                    </div> 
                                    <h3>Colosseum, Rome</h3> 
                                    <ul class="package-meta">
                                        <li class="tp-price-meta">
                                            <p><i class="fa fa-clock-o"></i></p>
                                            <p>Duration</p>
                                            <h2>4 Days</h2>
                                        </li>
                                        <li class="tp-price-meta">
                                            <p><i class="fa fa-users"></i></p>
                                            <p>Person</p>
                                            <h2>2 Adult</h2>
                                        </li>
                                        <li class="tp-price-meta">
                                            <p><i class="fa fa-tag"></i></p>
                                            <p>Price</p>
                                            <h2>620 <span>$</span></h2>
                                        </li>
                                    </ul>
                                    <a class="btn btn-gray" href="#">Book Now</a> 
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-lg-4 col-sm-6">
                            <div class="single-package-card style-two wow animated fadeInUp" data-wow-duration="1.5s" data-wow-delay="0.6s">
                                <div class="thumb">
                                    <img src="<%=pjName%>/resources/assets/images/destination-list/13.png" alt="img">
                                </div>
                                <div class="details">
                                    <div class="location">
                                        <span class="location-name"><img src="<%=pjName%>/resources/assets/images/icons/1.png" alt="img">Peru</span>
                                        <span class="tp-review-meta float-right">
                                            <i class="ic-yellow fa fa-star"></i>
                                            <i class="ic-yellow fa fa-star"></i>
                                            <i class="ic-yellow fa fa-star"></i>
                                            <i class="ic-yellow fa fa-star"></i>
                                            <i class="ic-yellow fa fa-star"></i>
                                            <span>4.0</span>
                                        </span>
                                    </div> 
                                    <h3>British Islands</h3> 
                                    <ul class="package-meta">
                                        <li class="tp-price-meta">
                                            <p><i class="fa fa-clock-o"></i></p>
                                            <p>Duration</p>
                                            <h2>4 Days</h2>
                                        </li>
                                        <li class="tp-price-meta">
                                            <p><i class="fa fa-users"></i></p>
                                            <p>Person</p>
                                            <h2>2 Adult</h2>
                                        </li>
                                        <li class="tp-price-meta">
                                            <p><i class="fa fa-tag"></i></p>
                                            <p>Price</p>
                                            <h2>720 <span>$</span></h2>
                                        </li>
                                    </ul> 
                                    <a class="btn btn-gray" href="#">Book Now</a> 
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-lg-4 col-sm-6">
                            <div class="single-package-card style-two wow animated fadeInUp" data-wow-duration="1.8s" data-wow-delay="0.7s">
                                <div class="thumb">
                                    <img src="<%=pjName%>/resources/assets/images/destination-list/14.png" alt="img">
                                </div>
                                <div class="details">
                                    <div class="location">
                                        <span class="location-name"><img src="<%=pjName%>/resources/assets/images/icons/1.png" alt="img">Spain</span>
                                        <span class="tp-review-meta float-right">
                                            <i class="ic-yellow fa fa-star"></i>
                                            <i class="ic-yellow fa fa-star"></i>
                                            <i class="ic-yellow fa fa-star"></i>
                                            <i class="ic-yellow fa fa-star"></i>
                                            <i class="ic-yellow fa fa-star"></i>
                                            <span>4.0</span>
                                        </span>
                                    </div> 
                                    <h3>Great Reef</h3> 
                                    <ul class="package-meta">
                                        <li class="tp-price-meta">
                                            <p><i class="fa fa-clock-o"></i></p>
                                            <p>Duration</p>
                                            <h2>4 Days</h2>
                                        </li>
                                        <li class="tp-price-meta">
                                            <p><i class="fa fa-users"></i></p>
                                            <p>Person</p>
                                            <h2>2 Adult</h2>
                                        </li>
                                        <li class="tp-price-meta">
                                            <p><i class="fa fa-tag"></i></p>
                                            <p>Price</p>
                                            <h2>310 <span>$</span></h2>
                                        </li>
                                    </ul> 
                                    <a class="btn btn-gray" href="#">Book Now</a> 
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-lg-4 col-sm-6">
                            <div class="single-package-card style-two wow animated fadeInUp" data-wow-duration="2.1s" data-wow-delay="0.8s">
                                <div class="thumb">
                                    <img src="<%=pjName%>/resources/assets/images/destination-list/15.png" alt="img">
                                </div>
                                <div class="details">
                                    <div class="location">
                                        <span class="location-name"><img src="<%=pjName%>/resources/assets/images/icons/1.png" alt="img">Usa</span>
                                        <span class="tp-review-meta float-right">
                                            <i class="ic-yellow fa fa-star"></i>
                                            <i class="ic-yellow fa fa-star"></i>
                                            <i class="ic-yellow fa fa-star"></i>
                                            <i class="ic-yellow fa fa-star"></i>
                                            <i class="ic-yellow fa fa-star"></i>
                                            <span>4.0</span>
                                        </span>
                                    </div> 
                                    <h3>Sea Beach</h3> 
                                    <ul class="package-meta">
                                        <li class="tp-price-meta">
                                            <p><i class="fa fa-clock-o"></i></p>
                                            <p>Duration</p>
                                            <h2>4 Days</h2>
                                        </li>
                                        <li class="tp-price-meta">
                                            <p><i class="fa fa-users"></i></p>
                                            <p>Person</p>
                                            <h2>2 Adult</h2>
                                        </li>
                                        <li class="tp-price-meta">
                                            <p><i class="fa fa-tag"></i></p>
                                            <p>Price</p>
                                            <h2>540 <span>$</span></h2>
                                        </li>
                                    </ul> 
                                    <a class="btn btn-gray" href="#">Book Now</a> 
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- package area end -->
        </div>
    </div>
    <!-- travelus area start -->

    <!-- client area start -->
    <div class="client-area pd-top-108">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-xl-6 col-lg-8">
                    <div class="section-title text-center">
                        <h2 class="title">What Our Clicnts Say</h2>
                        <p>Vivamus eget aliquam dui. Integer eu arcu vel arcu suscipit ultrices quis non mauris. Aenean scelerisque, sem eu dictum commodo, velit nisi blandit magna</p>
                    </div>
                </div>
            </div>
            <div class="client-slider tp-common-slider-style">
                <div class="single-client-card">
                    <div class="quote"><i class="ti-quote-left"></i></div>   
                    <p class="content-text">The largest country in the world, Russia offers a broad array of travel experiences, from treks up the slopes of glacier-capped mountains to strolls along the shoreline of Earth’s oldest lake. Historical sites and cultural</p>
                    <div class="media">
                        <div class="media-left">
                            <img src="<%=pjName%>/resources/assets/images/blog-details/11.png" alt="img">
                        </div>
                        <div class="media-body">
                            <h4>Jasmine Woodkin</h4>
                            <span>TOURIST</span>
                            <span class="tp-review-meta">
                                <i class="ic-yellow fa fa-star"></i>
                                <i class="ic-yellow fa fa-star"></i>
                                <i class="ic-yellow fa fa-star"></i>
                                <i class="ic-yellow fa fa-star"></i>
                                <i class="ic-yellow fa fa-star"></i>
                                <span>4.0</span>
                            </span>
                        </div>
                    </div>
                </div> 
                <div class="single-client-card">
                    <div class="quote"><i class="ti-quote-left"></i></div> 
                    <p class="content-text">The largest country in the world, Russia offers a broad array of travel experiences, from treks up the slopes of glacier-capped mountains to strolls along the shoreline of Earth’s oldest lake. Historical sites and cultural</p>
                    <div class="media">
                        <div class="media-left">
                            <img src="<%=pjName%>/resources/assets/images/blog-details/10.png" alt="img">
                        </div>
                        <div class="media-body">
                            <h4>Woodkin Jack</h4>
                            <span>TOURIST</span>
                            <span class="tp-review-meta">
                                <i class="ic-yellow fa fa-star"></i>
                                <i class="ic-yellow fa fa-star"></i>
                                <i class="ic-yellow fa fa-star"></i>
                                <i class="ic-yellow fa fa-star"></i>
                                <i class="ic-yellow fa fa-star"></i>
                                <span>4.0</span>
                            </span>
                        </div>
                    </div>
                </div> 
                <div class="single-client-card">
                    <div class="quote"><i class="ti-quote-left"></i></div> 
                    <p class="content-text">The largest country in the world, Russia offers a broad array of travel experiences, from treks up the slopes of glacier-capped mountains to strolls along the shoreline of Earth’s oldest lake. Historical sites and cultural</p>
                    <div class="media">
                        <div class="media-left">
                            <img src="<%=pjName%>/resources/assets/images/blog-details/9.png" alt="img">
                        </div>
                        <div class="media-body">
                            <h4>Rafayel Gee</h4>
                            <span>TOURIST</span>
                            <span class="tp-review-meta">
                                <i class="ic-yellow fa fa-star"></i>
                                <i class="ic-yellow fa fa-star"></i>
                                <i class="ic-yellow fa fa-star"></i>
                                <i class="ic-yellow fa fa-star"></i>
                                <i class="ic-yellow fa fa-star"></i>
                                <span>4.0</span>
                            </span>
                        </div>
                    </div>
                </div> 
                <div class="single-client-card">
                    <div class="quote"><i class="ti-quote-left"></i></div> 
                    <p class="content-text">The largest country in the world, Russia offers a broad array of travel experiences, from treks up the slopes of glacier-capped mountains to strolls along the shoreline of Earth’s oldest lake. Historical sites and cultural</p>
                    <div class="media">
                        <div class="media-left">
                            <img src="<%=pjName%>/resources/assets/images/blog-details/10.png" alt="img">
                        </div>
                        <div class="media-body">
                            <h4>Thomsa Doe</h4>
                            <span>TOURIST</span>
                            <span class="tp-review-meta">
                                <i class="ic-yellow fa fa-star"></i>
                                <i class="ic-yellow fa fa-star"></i>
                                <i class="ic-yellow fa fa-star"></i>
                                <i class="ic-yellow fa fa-star"></i>
                                <i class="ic-yellow fa fa-star"></i>
                                <span>4.0</span>
                            </span>
                        </div>
                    </div>
                </div> 
            </div>
        </div>
    </div>
    <!-- client area end -->
    
    <!-- blog area start -->
    <div class="blog-area pd-top-108 pd-bottom-120">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-xl-6 col-lg-8">
                    <div class="section-title text-center">
                        <h2 class="title">From Our Blog</h2>
                        <p>Vivamus eget aliquam dui. Integer eu arcu vel arcu suscipit ultrices quis non mauris. Aenean scelerisque, sem eu dictum commodo, velit nisi blandit magna</p>
                    </div>
                </div>
            </div>
            <div class="blog-slider tp-common-slider-style tps-arrow-left-right">
                <div class="blog-slider-item">
                    <div class="single-blog single-blog-wrap style-four">
                        <div class="thumb single-blog-left-wrap">
                            <img src="<%=pjName%>/resources/assets/images/blog/11.png" alt="blog">
                        </div>
                        <div class="single-blog-details single-blog-right-wrap">
                            <p class="date">19 September 2019</p>
                            <h4 class="title">Why You Shouldn’t Ride Elephants In France.</h4>
                            <p class="content">Duis porta, ligula rhoncus euismod pretium, nisi tellus eleifend odio, luctus viverra sem</p>
                            <a class="btn btn-yellow" href="blog"><span>Read More<i class="la la-arrow-right"></i></span></a>
                        </div>
                    </div>
                </div>
                <div class="blog-slider-item">
                    <div class="single-blog single-blog-wrap style-four">
                        <div class="thumb single-blog-left-wrap">
                            <img src="<%=pjName%>/resources/assets/images/blog/12.png" alt="blog">
                        </div>
                        <div class="single-blog-details single-blog-right-wrap">
                            <p class="date">19 September 2019</p>
                            <h4 class="title">Why You Shouldn’t Ride Elephants In France.</h4>
                            <p class="content">Duis porta, ligula rhoncus euismod pretium, nisi tellus eleifend odio, luctus viverra sem</p>
                            <a class="btn btn-yellow" href="blog"><span>Read More<i class="la la-arrow-right"></i></span></a>
                        </div>
                    </div>
                </div>
                <div class="blog-slider-item">
                    <div class="single-blog single-blog-wrap style-four">
                        <div class="thumb single-blog-left-wrap">
                            <img src="<%=pjName%>/resources/assets/images/blog/13.png" alt="blog">
                        </div>
                        <div class="single-blog-details single-blog-right-wrap">
                            <p class="date">19 September 2019</p>
                            <h4 class="title">Why You Shouldn’t Ride Elephants In France.</h4>
                            <p class="content">Duis porta, ligula rhoncus euismod pretium, nisi tellus eleifend odio, luctus viverra sem</p>
                            <a class="btn btn-yellow" href="blog"><span>Read More<i class="la la-arrow-right"></i></span></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- blog area End -->
    
    <!-- footer area start -->
    <footer class="footer-area style-three" style="background-image: url(<%=pjName%>/resources/assets/images/bg/2.png);">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-12">
                    <div class="about_us_widget text-center">
                        <a href="index" class="footer-logo"> 
                            <img src="<%=pjName%>/resources/assets/images/logo.png" alt="footerlogo">
                        </a>
                    </div>
                    <div class="footer-widget widget text-center">
                        <ul class="widget_nav_menu text-center">
                            <li><a href="#">Home</a></li>
                            <li><a href="#">About Us</a></li>
                            <li><a href="#">Destination</a></li>
                            <li><a href="#">Tours</a></li>
                            <li><a href="#">Blog</a></li>
                            <li><a href="#">Contact</a></li>
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
                                    +088 012121240
                                </span>
                            </p>
                            <p class="location text-left"> 
                                <i class="fa fa-envelope-o"></i>
                                <span>travelpoint@gmail.com</span>
                            </p>
                            <p class="text-left">
                                <i class="fa fa-map-marker"></i> 
                                <span>Lavaca Street, Suite 2000 <br> Austin, TX 24141</span>
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
                    &copy; Viaje 2019 All rights reserved. Powered with <a href="http://zwin.io/" target="_blank"><i class="fa fa-heart"></i> </a> by <a href="http://zwin.io/" target="_blank"><span>Zwin.</span></a>
                </div>
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
    <script src="<%=pjName%>/resources/assets/js/jquery-2.2.4.min.js"></script>
    <script src="<%=pjName%>/resources/assets/js/popper.min.js"></script>
    <script src="<%=pjName%>/resources/assets/js/bootstrap.min.js"></script>
    <script src="<%=pjName%>/resources/assets/js/jquery.magnific-popup.js"></script>
    <script src="<%=pjName%>/resources/assets/js/owl.carousel.min.js"></script>
    <script src="<%=pjName%>/resources/assets/js/wow.min.js"></script>
    <script src="<%=pjName%>/resources/assets/js/slick.js"></script>
    <script src="<%=pjName%>/resources/assets/js/waypoints.min.js"></script>
    <script src="<%=pjName%>/resources/assets/js/jquery.counterup.min.js"></script>
    <script src="<%=pjName%>/resources/assets/js/imagesloaded.pkgd.min.js"></script>
    <script src="<%=pjName%>/resources/assets/js/isotope.pkgd.min.js"></script>
    <script src="<%=pjName%>/resources/assets/js/swiper.min.js"></script>
    <script src="<%=pjName%>/resources/assets/js/jquery.nice-select.min.js"></script>
    <script src="<%=pjName%>/resources/assets/js/jquery-ui.min.js"></script>
    <script src="<%=pjName%>/resources/assets/js/jarallax.min.js"></script>

    <!-- main js -->
    <script src="<%=pjName%>/resources/assets/js/main.js"></script>

</body>
</html>