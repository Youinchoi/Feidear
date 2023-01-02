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
    <div class="breadcrumb-area style-two jarallax" style="background-image:url(<%=pjName%>/resources/assets/images/bg/1.png);">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb-inner">
                        <h1 class="page-title">Destinations Details</h1>
                        <ul class="page-list">
                            <li><a href="index">Home</a></li>
                            <li>Destinations Details</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- breadcrumb area End -->
    
    <!-- destinations-details-page start -->
    <div class="destinations-details-page mg-top--70">
        <div class="container">
            <!-- destinations-details-main-slider start -->
            <div class="row justify-content-center">
                <div class="col-xl-10">
                    <div class="destinations-details-main-slider-wrap">
                        <div class="destinations-details-main-slider">
                            <div class="d-details-main-slider-item">
                                <img src="<%=pjName%>/resources/assets/images/others/3.png" alt="img">
                            </div>
                            <div class="d-details-main-slider-item">
                                <img src="<%=pjName%>/resources/assets/images/others/2.png" alt="img">
                            </div>
                            <div class="d-details-main-slider-item">
                                <img src="<%=pjName%>/resources/assets/images/others/4.png" alt="img">
                            </div>
                        </div>
                        <div class="destinations-details-main-slider-controls">
                            <div class="slider-nav tp-control-nav"></div>
                            <!--slider-nav-->
                            <div class="slider-extra tp-slider-extra">
                                <div class="text">
                                    <span class="first">01 </span>
                                    <span class="last">05</span>
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
            <!-- destinations-details-main-slider End -->
            <div class="row destinations-details-location-name">
                <div class="col-lg-12">
                    <h3>Africa</h3>
                    <p>Continen</p>
                </div>
                <div class="col-lg-6">
                    <p>Africa is the world's second largest and second most-populous continent. At about 30.3 million kmÂ² including djacent islands, it covers 6% of Earth's total surface area and 20% of its land area. With 1.2 billion people as of 2016, it accounts for about 16% of the world's human population</p>
                </div>
                <div class="col-lg-6">
                    <p>It accounts for about 16% of the world's human population. The continent is surrounded by the Mediterranean Sea to the Africa is the world's second largest and second most-populous continent. At about 30.3 million kmÂ² including djacent islands.</p>
                </div>
            </div>
            <!-- destinations-client-review-slider start -->
            <h4 class="single-page-small-title">Based On Traveller Visits and Local Insights</h4>
            <div class="destinations-client-review-slider tp-common-slider-style">
                <div class="d-client-review-slider-item">
                    <div class="single-destination-grid text-center">
                        <div class="thumb">
                            <img src="<%=pjName%>/resources/assets/images/destination-list/8.png" alt="img">
                        </div>
                        <div class="details">
                            <div class="tp-review-meta">
                                <i class="ic-yellow fa fa-star"></i>
                                <i class="ic-yellow fa fa-star"></i>
                                <i class="ic-yellow fa fa-star"></i>
                                <i class="ic-yellow fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <span>4.0</span>
                            </div>
                            <h4 class="title">Africa</h4>
                            <p class="content">Africa is the world's second largest and second most-populous continent, being behind Asia in both categories. At about 30.3 million kmÂ² including adjacent islands, it</p>
                        </div>
                    </div>
                </div>
                <div class="d-client-review-slider-item">
                    <div class="single-destination-grid text-center">
                        <div class="thumb">
                            <img src="<%=pjName%>/resources/assets/images/destination-list/9.png" alt="img">
                        </div>
                        <div class="details">
                            <div class="tp-review-meta">
                                <i class="ic-yellow fa fa-star"></i>
                                <i class="ic-yellow fa fa-star"></i>
                                <i class="ic-yellow fa fa-star"></i>
                                <i class="ic-yellow fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <span>4.0</span>
                            </div>
                            <h4 class="title">Thailand</h4>
                            <p class="content">Thailand is the world's second largest and second most-populous continent, being behind Asia in both categories. At about 30.3 million kmÂ² including adjacent islands, it</p>
                        </div>
                    </div>
                </div>
                <div class="d-client-review-slider-item">
                    <div class="single-destination-grid text-center">
                        <div class="thumb">
                            <img src="<%=pjName%>/resources/assets/images/destination-list/10.png" alt="img">
                        </div>
                        <div class="details">
                            <div class="tp-review-meta">
                                <i class="ic-yellow fa fa-star"></i>
                                <i class="ic-yellow fa fa-star"></i>
                                <i class="ic-yellow fa fa-star"></i>
                                <i class="ic-yellow fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <span>4.0</span>
                            </div>
                            <h4 class="title">Thailand</h4>
                            <p class="content">Africa is the world's second largest and second most-populous continent, being behind Asia in both categories. At about 30.3 million kmÂ² including adjacent islands, it</p>
                        </div>
                    </div>
                </div>
                <div class="d-client-review-slider-item">
                    <div class="single-destination-grid text-center">
                        <div class="thumb">
                            <img src="<%=pjName%>/resources/assets/images/destination-list/11.png" alt="img">
                        </div>
                        <div class="details">
                            <div class="tp-review-meta">
                                <i class="ic-yellow fa fa-star"></i>
                                <i class="ic-yellow fa fa-star"></i>
                                <i class="ic-yellow fa fa-star"></i>
                                <i class="ic-yellow fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <span>4.0</span>
                            </div>
                            <h4 class="title">France</h4>
                            <p class="content">Africa is the world's second largest and second most-populous continent, being behind Asia in both categories. At about 30.3 million kmÂ² including adjacent islands, it</p>
                        </div>
                    </div>
                </div>

                <div class="d-client-review-slider-item">
                    <div class="single-destination-grid text-center">
                        <div class="thumb">
                            <img src="<%=pjName%>/resources/assets/images/destination-list/12.png" alt="img">
                        </div>
                        <div class="details">
                            <div class="tp-review-meta">
                                <i class="ic-yellow fa fa-star"></i>
                                <i class="ic-yellow fa fa-star"></i>
                                <i class="ic-yellow fa fa-star"></i>
                                <i class="ic-yellow fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <span>4.0</span>
                            </div>
                            <h4 class="title">Mexico</h4>
                            <p class="content">Africa is the world's second largest and second most-populous continent, being behind Asia in both categories. At about 30.3 million kmÂ² including adjacent islands, it</p>
                        </div>
                    </div>
                </div>
            </div>
            <!-- destinations-client-review-slider end -->

            <!-- trip-plan start -->
            <div class="trip-plan-area">
                <h4 class="single-page-small-title">Plan a trip</h4>
                <div class="row justify-content-center">
                    <div class="col-lg-4 col-md-6">
                        <div class="single-trip-plan">
                            <div class="thumb single-trip-plan-left">
                                <img src="<%=pjName%>/resources/assets/images/others/6.png" alt="blog">
                            </div>
                            <div class="single-trip-plan-right">
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
                    <div class="col-lg-4 col-md-6">
                        <div class="single-trip-plan">
                            <div class="thumb single-trip-plan-left">
                                <img src="<%=pjName%>/resources/assets/images/others/7.png" alt="blog">
                            </div>
                            <div class="single-trip-plan-right">
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
                    <div class="col-lg-4 col-md-6">
                        <div class="single-trip-plan">
                            <div class="thumb single-trip-plan-left">
                                <img src="<%=pjName%>/resources/assets/images/others/6.png" alt="blog">
                            </div>
                            <div class="single-trip-plan-right">
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
            <!-- trip-plan End -->

            <!-- location-details start -->
            <div class="location-details">
                <h4 class="single-page-small-title">Good To Know</h4>
                <div class="row">
                    <div class="col-lg-7">
                        <div class="location-details-table">
                            <table class="table">
                                <tbody>
                                    <tr>
                                        <td class="title">Country</td>
                                        <td>Africa</td>
                                    </tr>
                                    <tr>
                                        <td class="title">Visa Requirements</td>
                                        <td>Visa Requirements</td>
                                    </tr>
                                    <tr>
                                        <td class="title">Languages Spoken</td>
                                        <td>Afroasiatic languages</td>
                                    </tr>
                                    <tr>
                                        <td class="title">Currency Used</td>
                                        <td>Rant</td>
                                    </tr>
                                    <tr>
                                        <td class="title">Ares (km2)</td>
                                        <td>30.37 million kmÂ²</td>
                                    </tr>
                                </tbody>
                            </table>
                            <div class="btn-wrap text-center">
                                <a class="btn btn-yellow" href=""><span>Pdf Download<i class="ti-download"></i></span></a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-5">
                        <div class="location-details-map">
                            <div id="map"></div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- location-details end -->

            <!-- location-review-area start -->
            <div class="location-review-area">
                <div class="row">
                    <div class="col-lg-8">
                        <form class="tp-form-wrap bg-gray tp-form-wrap-one">
                            <div class="row">
                                <div class="col-md-6"><h4 class="single-page-small-title">Write A Review</h4></div>
                                <div class="col-md-6">
                                    <div class="tp-review-meta text-lg-right">
                                        <span class="ml-0">Assigned Rating</span>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <label class="single-input-wrap">
                                        <span class="single-input-title">Name</span>
                                        <input type="text">
                                    </label>
                                </div>
                                <div class="col-md-6">
                                    <label class="single-input-wrap">
                                        <span class="single-input-title">Email</span>
                                        <input type="text">
                                    </label>
                                </div>
                                <div class="col-lg-12">
                                    <label class="single-input-wrap">
                                        <span class="single-input-title">comments</span>
                                        <textarea></textarea>
                                    </label>
                                </div>
                                <div class="col-12">
                                    <a class="btn btn-blue" href="#">+ Add Photo</a>
                                    <a class="btn btn-yellow float-right" href="#">Send</a>
                                </div>
                            </div>
                        </form>
                    </div>
                    <div class="col-xl-3 col-lg-4 offset-xl-1 mt-5 mt-lg-0 hidden-md">
                        <a href="#">
                            <img src="<%=pjName%>/resources/assets/images/others/01.png" alt="ads">
                        </a>
                    </div>
                </div>
            </div>
            <!-- location-review-area start -->
        </div>
    </div>
    <!-- destinations-details-page End -->

    <!-- destination area End -->
    <div class="destination-area pd-top-120">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-4 col-md-6">
                    <div class="single-destination-grid text-center">
                        <div class="thumb">
                            <img src="<%=pjName%>/resources/assets/images/destination-list/8.png" alt="img">
                        </div>
                        <div class="details">
                            <div class="tp-review-meta">
                                <i class="ic-yellow fa fa-star"></i>
                                <i class="ic-yellow fa fa-star"></i>
                                <i class="ic-yellow fa fa-star"></i>
                                <i class="ic-yellow fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <span>4.0</span>
                            </div>
                            <h3 class="title">Africa</h3>
                            <p class="content">Africa is the world's second largest and second most- populous continent, being behind Asia in both categories. At about 30.3 million kmÂ² including adjacent islands, it covers 6% Earth's total surface area and 20% land area.</p>
                            <a class="btn btn-gray" href="#"><span>Explore<i class="la la-arrow-right"></i></span></a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="single-destination-grid text-center">
                        <div class="thumb">
                            <img src="<%=pjName%>/resources/assets/images/destination-list/9.png" alt="img">
                        </div>
                        <div class="details">
                            <div class="tp-review-meta">
                                <i class="ic-yellow fa fa-star"></i>
                                <i class="ic-yellow fa fa-star"></i>
                                <i class="ic-yellow fa fa-star"></i>
                                <i class="ic-yellow fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <span>4.0</span>
                            </div>
                            <h3 class="title">Africa</h3>
                            <p class="content">Africa is the world's second largest and second most- populous continent, being behind Asia in both categories. At about 30.3 million kmÂ² including adjacent islands, it covers 6% Earth's total surface area and 20% land area.</p>
                            <a class="btn btn-gray" href="#"><span>Explore<i class="la la-arrow-right"></i></span></a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="single-destination-grid text-center">
                        <div class="thumb">
                            <img src="<%=pjName%>/resources/assets/images/destination-list/10.png" alt="img">
                        </div>
                        <div class="details">
                            <div class="tp-review-meta">
                                <i class="ic-yellow fa fa-star"></i>
                                <i class="ic-yellow fa fa-star"></i>
                                <i class="ic-yellow fa fa-star"></i>
                                <i class="ic-yellow fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <span>4.0</span>
                            </div>
                            <h3 class="title">Africa</h3>
                            <p class="content">Africa is the world's second largest and second most- populous continent, being behind Asia in both categories. At about 30.3 million kmÂ² including adjacent islands, it covers 6% Earth's total surface area and 20% land area.</p>
                            <a class="btn btn-gray" href="#"><span>Explore<i class="la la-arrow-right"></i></span></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- destination area End -->

    <!-- newslatter area Start -->
    <div class="newslatter-area pd-top-90">
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
    <footer class="footer-area" style="background-image: url(<%=pjName%>/resources/assets/images/bg/2.png);">
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
                            <li><a href="#"><img src="<%=pjName%>/resources/assets/images/instagram/1.png" alt="img"></a></li>
                            <li><a href="#"><img src="<%=pjName%>/resources/assets/images/instagram/2.png" alt="img"></a></li>
                            <li><a href="#"><img src="<%=pjName%>/resources/assets/images/instagram/3.png" alt="img"></a></li>
                            <li><a href="#"><img src="<%=pjName%>/resources/assets/images/instagram/4.png" alt="img"></a></li>
                            <li><a href="#"><img src="<%=pjName%>/resources/assets/images/instagram/5.png" alt="img"></a></li>
                            <li><a href="#"><img src="<%=pjName%>/resources/assets/images/instagram/6.png" alt="img"></a></li>
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
    <script src="<%=pjName%>/resources/assets/js/jarallax.min.js"></script>
    
    <!-- google map js -->
    <script src="<%=pjName%>/resources/assets/js/goolg-map-activate.js"></script>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCVyNXoXHkqAwBKJaouZWhHPCP5vg7N0HQ&callback=initMap"></script>

    <!-- main js -->
    <script src="<%=pjName%>/resources/assets/js/main.js"></script>

</body>
</html>