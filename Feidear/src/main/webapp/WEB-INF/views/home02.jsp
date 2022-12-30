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
    <nav class="navbar navbar-area navbar-expand-lg nav-style-01">
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
                    <li>
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
    </nav>
    <!-- navbar area end -->

    <!-- video banner area start -->
    <div class="video-banner-area youtube-bg">
        <div class="video-banner-content-wrap">
            <div class="container">    
                <div class="video-banner-content text-center">
                    <h2>Nature Awaits</h2>
                    <h2 class="main-title">Explore The World With Us!</h2>
                </div>
            </div>
        </div>
    </div>
    <!-- video banner area end -->

    <!-- search area start -->
    <div class="search-area tp-main-search-area search-area-home2">
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

    <!-- intro area start -->
    <div class="intro-area pd-top-112">
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <div class="single-intro wow animated fadeInUp" data-wow-duration="0.6s" data-wow-delay="0.1s">
                        <h4 class="intro-title">
                            <span class="intro-count">01</span>
                            <a class="intro-cat" href="#">Travel</a>
                        </h4>
                        <p>Sponsorships are like unicorns or leprechauns, talked about often but they donât actually exist. There is only dollars and cents, the ...</p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="single-intro wow animated fadeInUp" data-wow-duration="1.0s" data-wow-delay="0.2s">
                        <h4 class="intro-title">
                            <span class="intro-count">02</span>
                            <a class="intro-cat" href="#">Experience</a>
                        </h4>
                        <p>My response is usually harsh. Offended at the suggestion that a career thatâs taken more than a decade to create could be...</p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="single-intro wow animated fadeInUp" data-wow-duration="1.6s" data-wow-delay="0.3s">
                        <h4 class="intro-title">
                            <span class="intro-count">03</span>
                            <a class="intro-cat" href="#">Relax</a>
                        </h4>
                        <p>I have always made a living to make movies, never the other way around. When I first started I washed in a seafood restaurant....</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- intro area end -->

    <!-- offer area start -->
    <div class="offer-area pd-top-70">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-xl-6 col-lg-8">
                    <div class="section-title text-center">
                        <h2 class="title">Special offers & Discounts</h2>
                        <p>Lorem Ipsum is simply dummy text the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,</p>
                    </div>
                </div>
            </div>
        </div>
        <div class="destinations-list-slider-bg">
            <div class="container">
                <div class="row">
                    <div class="col-xl-9 col-lg-10 offset-xl-1 order-lg-12">
                        <div class="destinations-list-slider">
                            <div class="d-list-slider-item">
                                <div class="single-destinations-list text-center">
                                    <div class="thumb">
                                        <span class="d-list-tag">Special Offer</span>
                                        <img src="<%=pjName%>/resources/assets/images/destination-list/1.png" alt="list">
                                        <div class="d-list-btn-wrap">
                                            <div class="d-list-btn">
                                                <a class="btn btn-yellow" href="#">Book Now <i class="fa fa-paper-plane"></i></a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="details">
                                        <h4 class="title">Greece</h4>
                                        <p class="content">Atmosphere of the sunny country</p>
                                        <ul class="tp-list-meta border-bt-dot">
                                            <li><i class="fa fa-calendar-o"></i> 8oct</li>
                                            <li><i class="fa fa-clock-o"></i> 4 days</li>
                                            <li><i class="fa fa-star"></i> 4.3</li>
                                        </ul>
                                        <div class="tp-price-meta tp-price-meta-cl">
                                            <p>Price</p>
                                            <h2>620 <small>$</small></h2>
                                            <del>620<span>$</span></del>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="d-list-slider-item">
                                <div class="single-destinations-list text-center">
                                    <div class="thumb">
                                        <img src="<%=pjName%>/resources/assets/images/destination-list/2.png" alt="list">
                                        <div class="d-list-btn-wrap">
                                            <div class="d-list-btn">
                                                <a class="btn btn-yellow" href="#">Book Now <i class="fa fa-paper-plane"></i></a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="details">
                                        <h4 class="title">Italy</h4>
                                        <p class="content">Atmosphere of the sunny country</p>
                                        <ul class="tp-list-meta border-bt-dot">
                                            <li><i class="fa fa-calendar-o"></i> 8oct</li>
                                            <li><i class="fa fa-clock-o"></i> 4 days</li>
                                            <li><i class="fa fa-star"></i> 4.3</li>
                                        </ul>
                                        <div class="tp-price-meta tp-price-meta-cl">
                                            <p>Price</p>
                                            <h2>620 <small>$</small></h2>
                                            <del>620<span>$</span></del>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="d-list-slider-item">
                                <div class="single-destinations-list text-center">
                                    <div class="thumb">
                                        <span class="d-list-tag">Special Offer</span>
                                        <img src="<%=pjName%>/resources/assets/images/destination-list/3.png" alt="list">
                                        <div class="d-list-btn-wrap">
                                            <div class="d-list-btn">
                                                <a class="btn btn-yellow" href="#">Book Now <i class="fa fa-paper-plane"></i></a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="details">
                                        <h4 class="title">Canada</h4>
                                        <p class="content">Atmosphere of the sunny country</p>
                                        <ul class="tp-list-meta border-bt-dot">
                                            <li><i class="fa fa-calendar-o"></i> 8oct</li>
                                            <li><i class="fa fa-clock-o"></i> 4 days</li>
                                            <li><i class="fa fa-star"></i> 4.3</li>
                                        </ul>
                                        <div class="tp-price-meta tp-price-meta-cl">
                                            <p>Price</p>
                                            <h2>620 <small>$</small></h2>
                                            <del>620<span>$</span></del>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="d-list-slider-item">
                                <div class="single-destinations-list text-center">
                                    <div class="thumb">
                                        <span class="d-list-tag">Special Offer</span>
                                        <img src="<%=pjName%>/resources/assets/images/destination-list/1.png" alt="list">
                                        <div class="d-list-btn-wrap">
                                            <div class="d-list-btn">
                                                <a class="btn btn-yellow" href="#">Book Now <i class="fa fa-paper-plane"></i></a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="details">
                                        <h4 class="title">Greece</h4>
                                        <p class="content">Atmosphere of the sunny country</p>
                                        <ul class="tp-list-meta border-bt-dot">
                                            <li><i class="fa fa-calendar-o"></i> 8oct</li>
                                            <li><i class="fa fa-clock-o"></i> 4 days</li>
                                            <li><i class="fa fa-star"></i> 4.3</li>
                                        </ul>
                                        <div class="tp-price-meta tp-price-meta-cl">
                                            <p>Price</p>
                                            <h2>620 <small>$</small></h2>
                                            <del>620<span>$</span></del>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-2 align-self-center order-lg-11">
                        <div class="container">
                            <div class="destinations-slider-controls">
                                <div class="slider-nav tp-control-nav"></div>
                                <!--slider-nav-->
                                <div class="tp-slider-extra slider-extra">
                                    <div class="text">
                                        <span class="first">01 </span>
                                        <span class="last"></span>
                                    </div>
                                    <!--text-->
                                    <div class="d-list-progress" role="progressbar" aria-valuemin="0" aria-valuemax="100">
                                        <span class="slider__label sr-only"></span>
                                    </div>
                                </div>
                                <!--slider-extra-->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- offer area end -->

    <!-- video area start -->
    <div class="video-area tp-video-area pd-top-110" style="background-image: url(<%=pjName%>/resources/assets/images/bg/7.png);">
        <div class="container">
            <div class="row">
                <div class="col-xl-5 col-lg-6 align-self-center wow animated fadeInRight" data-wow-duration="1s" data-wow-delay="0.3s">
                    <div class="section-title mb-lg-0 mb-4 text-center text-lg-left">
                        <h2 class="title">What Do You Know <br> About US</h2>
                        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when unknown printer took a galley of type and scrambled it to make a type specimen book. It has not only five centuries</p>
                        <a class="btn btn-yellow" href="#"><span>Read More<i class="la la-arrow-right"></i></span></a>
                    </div>
                </div>
                <div class="col-xl-5 col-lg-6 offset-xl-1 wow animated fadeInLeft" data-wow-duration="1s" data-wow-delay="0.3s">
                    <div class="video-popup-wrap">
                        <div class="thumb">
                            <img src="<%=pjName%>/resources/assets/images/video.png" alt="video">
                        </div>
                        <div class="video-popup-btn">
                            <a href="https://www.youtube.com/watch?v=c7XEhXZ_rsk" class="video-play-btn mfp-iframe"><i class="fa fa-play"></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- video area end -->
    
    <!-- holiday plan area start -->
    <div class="holiday-plan-area tp-holiday-plan-area mg-top-96" style="background-image: url(<%=pjName%>/resources/assets/images/bg/8.png);">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-xl-6 col-lg-9">
                    <div class="section-title text-center">
                        <h2 class="title wow animated fadeInUp" data-wow-duration="0.6s" data-wow-delay="0.1s">Perfect Holiday Plan</h2>
                        <p class="wow animated fadeInUp" data-wow-duration="0.6s" data-wow-delay="0.2s">No vis fastidii accumsan, ignota postulant ea mea. Vis et prima integre, ei vis ridens moderatius reformidans cu vim doctus accumsan ignota.</p>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-3 col-sm-6">
                    <div class="single-destinations-list style-two wow animated fadeInUp" data-wow-duration="0.4s" data-wow-delay="0.1s">
                        <div class="thumb">
                            <img src="<%=pjName%>/resources/assets/images/destination-list/4.png" alt="list">
                        </div>
                        <div class="details">
                            <p class="location"><img src="<%=pjName%>/resources/assets/images/icons/1.png" alt="map">Maldives</p>
                            <h4 class="title">Hurawalhi Island</h4>
                            <p class="content">7 Days Tour on 2 person</p>
                            <div class="tp-price-meta">
                                <h2>620 <small>$</small></h2>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6">
                    <div class="single-destinations-list style-two wow animated fadeInUp" data-wow-duration="0.7s" data-wow-delay="0.2s">
                        <div class="thumb">
                            <img src="<%=pjName%>/resources/assets/images/destination-list/5.png" alt="list">
                        </div>
                        <div class="details">
                            <p class="location"><img src="<%=pjName%>/resources/assets/images/icons/1.png" alt="map">Indonesia</p>
                            <h4 class="title">Bali Province</h4>
                            <p class="content">4 days 2 person</p>
                            <div class="tp-price-meta">
                                <h2>780 <small>$</small></h2>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6">
                    <div class="single-destinations-list style-two wow animated fadeInUp" data-wow-duration="0.9s" data-wow-delay="0.3s">
                        <div class="thumb">
                            <img src="<%=pjName%>/resources/assets/images/destination-list/6.png" alt="list">
                        </div>
                        <div class="details">
                            <p class="location"><img src="<%=pjName%>/resources/assets/images/icons/1.png" alt="map">Bangladesh</p>
                            <h4 class="title">Cox's bazar Sea Beach</h4>
                            <p class="content">4 days 4 person</p>
                            <div class="tp-price-meta">
                                <h2>850 <small>$</small></h2>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6">
                    <div class="single-destinations-list style-two wow animated fadeInUp" data-wow-duration="1.1s" data-wow-delay="0.4s">
                        <div class="thumb">
                            <img src="<%=pjName%>/resources/assets/images/destination-list/7.png" alt="list">
                        </div>
                        <div class="details">
                            <p class="location"><img src="<%=pjName%>/resources/assets/images/icons/1.png" alt="map">Spain</p>
                            <h4 class="title">Barcelona city beach</h4>
                            <p class="content">3 days 2 person</p>
                            <div class="tp-price-meta">
                                <h2>620 <small>$</small></h2>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- holiday plan area end -->

    <!-- client review area start -->
    <div class="client-review-area client-review-area-home pd-top-70">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 align-self-center">
                    <div class="thumb wow animated fadeInRight" data-wow-duration="1s" data-wow-delay="0.3s">
                        <div class="client-review-thumb">
                            <img src="<%=pjName%>/resources/assets/images/others/client-review.png" alt="review">
                        </div>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="single-client-review wow animated fadeInLeft" data-wow-duration="1s" data-wow-delay="0.3s">
                        <p class="sub-title">Travel Reviews</p>
                        <h3 class="location-name">Russia</h3>
                        <div class="tp-review-meta">
                            <i class="ic-yellow fa fa-star"></i>
                            <i class="ic-yellow fa fa-star"></i>
                            <i class="ic-yellow fa fa-star"></i>
                            <i class="ic-yellow fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <span>4.0</span>
                        </div>
                        <p>The largest country in the world, Russia offers a broad array of travel experiences, from treks up the slopes of glacier-capped mountains to strolls along the shoreline of Earthâs oldest lake. Historical sites and cultural activities in the countryâs great cities abound as well. Whether youâre exploring the grounds of Moscowâs Kremlin or wandering through the steppes of Mongolia, a visit to Russia is an adventure not soon forgotten. These top tourists attractions in Russia can inspire a great Russian itinerary for a memorable trip.</p>
                        <div class="media">
                            <div class="media-left">
                                <img src="<%=pjName%>/resources/assets/images/client/1.png" alt="client">
                            </div>
                            <div class="media-body">
                                <h6>Jasmine Woodkin</h6>
                                <p>Tourist</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- client review area End -->
    
    <!-- blog area start -->
    <div class="blog-area pd-top-120">
        <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <div class="single-blog single-blog-wrap style-two">
                        <div class="thumb single-blog-left-wrap">
                            <img src="<%=pjName%>/resources/assets/images/blog/10.png" alt="blog">
                        </div>
                        <div class="single-blog-details single-blog-right-wrap">
                            <a class="tag" href="#">Europe</a>
                            <p class="date">19 September 2019</p>
                            <h4 class="title">Why You Shouldnât Ride Elephants In France.</h4>
                            <p class="content">Kava contains 30 demos as for now, and weâre planning to release more! Except demos, Kava theme has more and more features for.. users, business, companies, developers, bloggers and other categories of users. Even if you are an absolute beginner</p>
                            <a class="btn btn-yellow" href="#"><span>Read More<i class="la la-arrow-right"></i></span></a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="row">
                        <div class="col-sm-6">
                            <div class="single-blog style-three">
                                <div class="thumb">
                                    <img src="<%=pjName%>/resources/assets/images/blog/11.png" alt="blog">
                                </div>
                                <div class="single-blog-details-wrap">
                                    <div class="single-blog-details text-center">
                                        <a class="tag" href="#">Europe</a>
                                        <p class="date">19 September 2019</p>
                                        <h4 class="title">Why You Shouldnât Ride Elephants In Thailand</h4>
                                        <a class="btn btn-yellow" href="#"><span>Read More<i class="la la-arrow-right"></i></span></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="single-blog style-three">
                                <div class="thumb">
                                    <img src="<%=pjName%>/resources/assets/images/blog/12.png" alt="blog">
                                </div>
                                <div class="single-blog-details-wrap">
                                    <div class="single-blog-details text-center">
                                        <a class="tag" href="#">Europe</a>
                                        <p class="date">18 September 2019</p>
                                        <h4 class="title">10 Best Highways for Romantic Long Drive</h4>
                                        <a class="btn btn-yellow" href="#"><span>Read More<i class="la la-arrow-right"></i></span></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="single-blog style-three">
                                <div class="thumb">
                                    <img src="<%=pjName%>/resources/assets/images/blog/13.png" alt="blog">
                                </div>
                                <div class="single-blog-details-wrap">
                                    <div class="single-blog-details text-center">
                                        <a class="tag" href="#">Europe</a>
                                        <p class="date">18 September 2019</p>
                                        <h4 class="title">Rock Climbing Limestone Cliffs At Railay Beach</h4>
                                        <a class="btn btn-yellow" href="#"><span>Read More<i class="la la-arrow-right"></i></span></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="single-blog style-three">
                                <div class="thumb">
                                    <img src="<%=pjName%>/resources/assets/images/blog/14.png" alt="blog">
                                </div>
                                <div class="single-blog-details-wrap">
                                    <div class="single-blog-details text-center">
                                        <a class="tag" href="#">Europe</a>
                                        <p class="date">19 September 2019</p>
                                        <h4 class="title">Magic In The Sky: Chasing Icelandâs Lights</h4>
                                        <a class="btn btn-yellow" href="#"><span>Read More<i class="la la-arrow-right"></i></span></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- blog area End -->
    
    <!-- ads area start -->
    <div class="ads-area pd-top-90">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-xl-8 col-lg-9">
                    <a class="ads-thumb" href="#">
                        <img src="<%=pjName%>/resources/assets/images/others/1.png" alt="ads">
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
    <footer class="footer-area" style="background-image: url(assets/img/bg/2.png);">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-md-6">
                    <div class="footer-widget widget">
                        <div class="about_us_widget">
                            <a href="index" class="footer-logo"> 
                                <img src="<%=pjName%>/resources/assets/images/logo.png" alt="footer logo">
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
                    <div class="footer-widget widget">
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
                            <div class="instagram-slider-item"><a href="#"><img src="<%=pjName%>/resources/assets/images/tour/1.png" alt="img"></a></div>
				            <div class="instagram-slider-item"><a href="#"><img src="<%=pjName%>/resources/assets/images/tour/2.png" alt="img"></a></div>
				            <div class="instagram-slider-item"><a href="#"><img src="<%=pjName%>/resources/assets/images/tour/3.png" alt="img"></a></div>
				            <div class="instagram-slider-item"><a href="#"><img src="<%=pjName%>/resources/assets/images/tour/4.png" alt="img"></a></div>
				            <div class="instagram-slider-item"><a href="#"><img src="<%=pjName%>/resources/assets/images/tour/5.png" alt="img"></a></div>
				            <div class="instagram-slider-item"><a href="#"><img src="<%=pjName%>/resources/assets/images/tour/6.png" alt="img"></a></div>
				            <div class="instagram-slider-item"><a href="#"><img src="<%=pjName%>/resources/assets/images/tour/1.png" alt="img"></a></div>
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
    <script src="<%=pjName%>/resources/assets/js/video-player.min.js"></script>

    <!-- main js -->
    <script src="<%=pjName%>/resources/assets/js/main.js"></script>

</body>
</html>