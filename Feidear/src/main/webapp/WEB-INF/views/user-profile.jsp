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

    <!-- breadcrumb area start -->
    <div class="breadcrumb-area jarallax" style="background-image:url(<%=pjName%>/resources/assets/images/bg/1.png);">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb-inner">
                        <h1 class="page-title">User Profile</h1>
                        <ul class="page-list">
                            <li><a href="index">Home</a></li>
                            <li>User Profile</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- breadcrumb area End -->

    <!-- blog area start -->
    <div class="user-profile-area pd-top-120">
        <div class="container">
            <div class="row">
                <div class="col-xl-10 col-lg-12">
                    <div class="row">
                        <div class="col-lg-4">
                            <ul class="nav nav-tabs tp-tabs style-two">
                                <li class="nav-item">
                                    <a class="nav-link active" data-toggle="tab" href="#tabs_1"><i class="fa fa-user"></i>Profile</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" data-toggle="tab" href="#tabs_2"><i class="fa fa-check-square-o"></i>Verifications</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link"  data-toggle="tab" href="#tabs_3"><i class="fa fa-cog"></i>Settings</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link"  data-toggle="tab" href="#tabs_4"><i class="fa fa-recycle"></i>Recently Viewed</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link"  data-toggle="tab" href="#tabs_5"><i class="fa fa-credit-card-alt"></i>Payment Methods</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link"  data-toggle="tab" href="#tabs_6"><i class="fa fa-star-o"></i>Reviews</a>
                                </li>
                                <li class="text-center">
                                    <a class="btn btn-yellow" href="#"><i class="fa fa-sign-in" aria-hidden="true"></i> <span>Log Out</span></a>
                                </li>
                            </ul>
                        </div>
                        <div class="col-xl-7 col-lg-8 offset-xl-1">
                            <div class="tab-content user-tab-content">
                                <div class="tab-pane fade show active" id="tabs_1" >
                                    <div class="user-details">
                                        <h3 class="user-details-title">Profile</h3>
                                        <div class="tp-img-upload">
                                            <div class="tp-avatar-preview">
                                                <div id="tp_imagePreview" style="background-image: url(<%=pjName%>/resources/assets/images/team/1.png);">
                                                </div>
                                            </div>
                                            <div class="tp-avatar-edit">
                                                <input type='file' id="tp_imageUpload" accept=".png, .jpg, .jpeg" />
                                                <label class="btn btn-transparent" for="tp_imageUpload"><i class="fa fa-picture-o"></i>Change Photo</label>
                                                <h4 class="name">Afsar Hossen</h4>
                                            </div>
                                        </div>
                                        <form class="tp-form-wrap">
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label class="single-input-wrap style-two">
                                                    <span class="single-input-title">First Name</span>
                                                    <input type="text">
                                                </label>
                                            </div>
                                            <div class="col-md-6">
                                                <label class="single-input-wrap style-two">
                                                    <span class="single-input-title">Last Number</span>
                                                    <input type="text">
                                                </label>
                                            </div>
                                            <div class="col-lg-12">
                                                <label class="single-input-wrap style-two">
                                                    <span class="single-input-title">Tell us about yourself.</span>
                                                    <textarea></textarea>
                                                </label>
                                            </div>
                                            <div class="col-md-7">
                                                <label class="single-input-wrap style-two">
                                                    <span class="single-input-title">Country</span>
                                                    <input type="text">
                                                </label>
                                            </div>
                                            <div class="col-md-6">
                                                <label class="single-input-wrap style-two">
                                                    <span class="single-input-title">Email Address</span>
                                                    <input type="text">
                                                </label>
                                            </div>
                                            <div class="col-md-6">
                                                <label class="single-input-wrap style-two">
                                                    <span class="single-input-title">Other Phone</span>
                                                    <input type="text" placeholder="+880">
                                                </label>
                                            </div>
                                            <div class="col-12">
                                                <a class="btn btn-yellow mt-3 text-center" href="#">Save Details</a>
                                            </div>
                                        </div>
                                    </form>
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="tabs_2">
                                    <div class="user-verification">
                                        <div class="row">
                                            <div class="col-lg-7">
                                                <h3 class="user-details-title">Verification</h3>
                                                <div class="notice"><i class="fa fa-exclamation-triangle"></i> Your email hasn't been verified.</div>
                                                <span>imshuvo97@gmail.com</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="tabs_3">
                                    <div class="user-settings">
                                        <h3 class="user-details-title">Settings</h3>
                                        <div class="row">
                                            <div class="col-lg-7">
                                                <label class="single-input-wrap style-two">
                                                    <span class="single-input-title mb-3">Change your password</span>
                                                    <input type="text" placeholder="Old password">
                                                </label>
                                            </div>
                                            <div class="col-lg-7">
                                                <label class="single-input-wrap style-two">
                                                    <input type="text" placeholder="New password">
                                                </label>
                                            </div>
                                            <div class="col-lg-7">
                                                <label class="single-input-wrap style-two">
                                                    <input type="text" placeholder="New password">
                                                </label>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="tabs_4">
                                    <div class="user-recent-view">
                                        <h3 class="user-details-title">Recently Viewed</h3>
                                        <div class="row">
                                            <div class="col-sm-6">
                                                <div class="single-destinations-list style-two">
                                                    <div class="thumb">
                                                        <img src="<%=pjName%>/resources/assets/images/destination-list/4.png" alt="list">
                                                    </div>
                                                    <div class="details">
                                                        <p class="location"><img src="<%=pjName%>/resources/assets/images/icons/1.png" alt="map">Maldives</p>
                                                        <h4 class="title"><a href="tour-details">Hurawalhi Island</a></h4>
                                                        <p class="content">7Days Tour on 2 person</p>
                                                        <div class="tp-price-meta">
                                                            <h2>620 <small>$</small></h2>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-sm-6">
                                                <div class="single-destinations-list style-two">
                                                    <div class="thumb">
                                                        <img src="<%=pjName%>/resources/assets/images/destination-list/5.png" alt="list">
                                                    </div>
                                                    <div class="details">
                                                        <p class="location"><img src="<%=pjName%>/resources/assets/images/icons/1.png" alt="map">Indonesia</p>
                                                        <h4 class="title"><a href="tour-details">Bali Province</a></h4>
                                                        <p class="content">4days 2 person</p>
                                                        <div class="tp-price-meta">
                                                            <h2>780 <small>$</small></h2>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="tabs_5">
                                    <div class="user-payment-method">
                                        <div class="location-review-area">
                                            <h3 class="user-details-title">Payment Methods</h3>
                                            <form class="tp-form-wrap bg-gray tp-form-wrap-one">
                                                <div class="row">
                                                    <div class="col-lg-7">
                                                        <label class="single-input-wrap">
                                                            <span class="single-input-title">Credit card number</span>
                                                            <input type="text">
                                                        </label>
                                                        <label class="single-input-wrap">
                                                            <span class="single-input-title">Card holder name</span>
                                                            <input type="text">
                                                        </label>
                                                        <label class="single-input-wrap">
                                                            <span class="single-input-title">Expiry date (Example: 01/17)</span>
                                                            <input type="text">
                                                        </label>
                                                        <label class="single-input-wrap">
                                                            <span class="single-input-title">Issuing bank</span>
                                                            <input type="text">
                                                        </label>
                                                    </div>
                                                    <div class="col-lg-5">
                                                        <div class="user-payment-card">
                                                            <img src="<%=pjName%>/resources/assets/images/others/16.png" alt="img">
                                                            <span>Available payment method:</span>
                                                            <div class="payment-card">
                                                                <i class="fa fa-cc-paypal"></i>
                                                                <i class="fa fa-cc-visa"></i>
                                                                <i class="fa fa-cc-mastercard"></i>
                                                                <i class="fa fa-credit-card-alt"></i>
                                                            </div>
                                                            <a class="btn btn-transparent" href="#">Cancel</a>
                                                            <a class="btn btn-yellow" href="#">Save</a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="tabs_6">
                                    <div class="user-tour-details">
                                        <h3 class="user-details-title">Reviews</h3>
                                        <span class="user-tour-details-title">Reviews About You</span>
                                        <span>| Reviews By You</span>
                                        <div class="comments-area tour-details-review-area">
                                            <ul class="comment-list mb-0">
                                                <li>
                                                    <div class="single-comment-wrap">
                                                        <div class="thumb">
                                                            <img src="<%=pjName%>/resources/assets/images/client/2.png" alt="img">
                                                        </div>
                                                        <div class="content">
                                                            <h4 class="title">Tyler Bailey</h4>
                                                            <span class="date">13 August 2019</span>
                                                            <div class="tp-review-meta">
                                                                <i class="ic-yellow fa fa-star"></i>
                                                                <i class="ic-yellow fa fa-star"></i>
                                                                <i class="ic-yellow fa fa-star"></i>
                                                                <i class="ic-yellow fa fa-star"></i>
                                                                <i class="ic-yellow fa fa-star"></i>
                                                            </div>
                                                            <p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata</p>
                                                        </div>
                                                    </div>
                                                </li>
                                            </ul>
                                        </div>
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

    <!-- main js -->
    <script src="<%=pjName%>/resources/assets/js/main.js"></script>

</body>
</html>