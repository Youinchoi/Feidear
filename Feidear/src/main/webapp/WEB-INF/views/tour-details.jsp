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
    <div class="breadcrumb-area style-two jarallax" style="background-image:url(<%=pjName%>/resources/assets/images/bg/1.png);">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb-inner">
                        <h1 class="page-title">Tour Details</h1>
                        <ul class="page-list">
                            <li><a href="index">Home</a></li>
                            <li>Tour Details</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- breadcrumb area End -->
    
    <!-- tour details area End -->
    <div class="tour-details-area mg-top--70">
        <div class="tour-details-gallery">
            <div class="container-bg bg-dark-blue">
                <div class="container">
                    <div class="gallery-filter-area row">
                        <div class="gallery-sizer col-1"></div>
                        <!-- gallery-item -->
                        <div class="tp-gallery-item col-md-5 col-sm-6 mb-10">
                            <div class="tp-gallery-item-img">
                                <div class="thumbnails">
                                    <img src="<%=pjName%>/resources/assets/images/tour-details/1.png" alt="image">
                                    <div class="video-popup-btn">
                                        <a href="https://www.youtube.com/watch?v=c7XEhXZ_rsk" class="video-play-btn mfp-iframe" tabindex="0"><i class="fa fa-play"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- gallery-item -->
                        <div class="tp-gallery-item col-md-3 col-sm-6">
                            <div class="tp-gallery-item-img">
                                <a href="#" data-effect="mfp-zoom-in">
                                    <img src="<%=pjName%>/resources/assets/images/tour-details/2.png" alt="image">
                                </a>
                            </div>
                        </div>
                        <!-- gallery-item -->
                        <div class="tp-gallery-item col-lg-2 col-md-4 col-sm-6">
                            <div class="tp-gallery-item-img">
                                <a href="#" data-effect="mfp-zoom-in">
                                    <img src="<%=pjName%>/resources/assets/images/tour-details/3.png" alt="image">
                                </a>
                            </div>
                        </div>
                        <!-- gallery-item -->
                        <div class="tp-gallery-item col-lg-2 col-md-4 col-sm-6">
                            <div class="tp-gallery-item-img">
                                <a href="#" data-effect="mfp-zoom-in">
                                    <img src="<%=pjName%>/resources/assets/images/tour-details/4.png" alt="image">
                                </a>
                            </div>
                        </div>
                        <!-- gallery-item -->
                        <div class="tp-gallery-item col-lg-2 col-md-4 col-sm-6">
                            <div class="tp-gallery-item-img">
                                <a href="#" data-effect="mfp-zoom-in">
                                    <img src="<%=pjName%>/resources/assets/images/tour-details/5.png" alt="image">
                                </a>
                            </div>
                        </div>
                        <!-- gallery-item -->
                        <div class="tp-gallery-item col-lg-2 col-md-4 col-sm-6">
                            <div class="tp-gallery-item-img">
                                <a href="#" data-effect="mfp-zoom-in">
                                    <img src="<%=pjName%>/resources/assets/images/tour-details/6.png" alt="image">
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-xl-3 col-lg-4">
                            <div class="details">
                                <p class="location mb-0"><i class="fa fa-map-marker"></i>Canada</p>
                                <h4 class="title">Bali Province</h4>
                                <p class="content">3 days 2 person</p>
                                <div class="tp-review-meta">
                                    <i class="ic-yellow fa fa-star"></i>
                                    <i class="ic-yellow fa fa-star"></i>
                                    <i class="ic-yellow fa fa-star"></i>
                                    <i class="ic-yellow fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <span>4.0</span>
                                </div>
                                <div class="all-tags">
                                    <a href="#">Adventures</a>
                                    <a href="#">Local special ties</a>
                                    <a href="#">Natural</a>
                                    <a href="#">Travel</a>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-9 col-lg-8">
                            <div class="book-list-warp">
                                <p class="book-list-content">Just booked! Get your spot before it's too late.</p>
                                <div class="tp-price-meta">
                                    <p>Price</p>
                                    <h2>775 <small>$</small></h2>
                                </div>
                            </div>
                            <ul class="tp-list-meta border-tp-solid">
                                <li class="ml-0"><i class="fa fa-calendar-o"></i> 8 Oct</li>
                                <li><i class="fa fa-clock-o"></i> 4 Days</li>
                                <li><i class="fa fa-users"></i>2 Person</li>
                                <li><i class="fa fa-snowflake-o"></i> Relaxing</li>
                                <li><i class="fa fa-star"></i> 4.3</li>
                            </ul>
                        </div>   
                    </div>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-lg-8">
                    <div class="tour-details-wrap">
                        <h4 class="single-page-small-title">Write A Review</h4>
                        <p>From its distinct half-hour time zone to its occasional June snowshower, Newfoundland runs on its own time. By August, the summer crowds have dwindled, berries hang ripe and heavy on their stems, and the landscape is ablaze with wildflowers. Join us at the peak of Newfoundlandâs late summer season as we wind our way through the famously Celtic stretch of coastline known as the Irish Loop, exploring its unique history, folklore, cuisine, and breathtaking seaside scenery. Weâll enjoy dinners made from freshly foraged ingredients on a quiet dock, chat with a boat-builder in the midst of making a vessel, and learn how to craft heritage cheese from local experts while surrounded by an adorable, bleating tribe of tiny baby goats. As we make our way along the Loop, weâll encounter countless characters, places, and stories that give this corner of the island its charm, tenacity, and unique flair.</p>
                        <p> This trip is offered by Atlas Obscura. Once you've reserved your spot, our team will be in touch to help you prepare for the trip. Please note that flights to and from St. John's are not included in the trip cost. This trip is limited by 12 travelers.</p>
                        <div class="package-included-area">
                            <h4 class="single-page-small-title">Included</h4>
                            <div class="row">
                                <div class="col-xl-4 col-sm-6">
                                    <div class="single-package-included">
                                        <img src="<%=pjName%>/resources/assets/images/icons/15.png" alt="icons">
                                        <h6>Food</h6>
                                        <p>3 breakfasts, 3 dinners</p>
                                    </div>
                                </div>
                                <div class="col-xl-4 col-sm-6">
                                    <div class="single-package-included">
                                        <img src="<%=pjName%>/resources/assets/images/icons/16.png" alt="icons">
                                        <h6>Accommodations</h6>
                                        <p>3 nights in a hotel</p>
                                    </div>
                                </div>
                                <div class="col-xl-4 col-sm-6">
                                    <div class="single-package-included">
                                        <img src="<%=pjName%>/resources/assets/images/icons/17.png" alt="icons">
                                        <h6>Transportation</h6>
                                        <p>2 boat rides, 1 car ride</p>
                                    </div>
                                </div>
                                <div class="col-xl-4 col-sm-6">
                                    <div class="single-package-included">
                                        <img src="<%=pjName%>/resources/assets/images/icons/18.png" alt="icons">
                                        <h6>Drinks</h6>
                                        <p>Water, tea, coffee, beer</p>
                                    </div>
                                </div>
                                <div class="col-xl-4 col-sm-6">
                                    <div class="single-package-included">
                                        <img src="<%=pjName%>/resources/assets/images/icons/19.png" alt="icons">
                                        <h6>Tickets</h6>
                                        <p>Entrance fee</p>
                                    </div>
                                </div>
                                <div class="col-xl-4 col-sm-6">
                                    <div class="single-package-included">
                                        <img src="<%=pjName%>/resources/assets/images/icons/20.png" alt="icons">
                                        <h6>Equipment</h6>
                                        <p>Outdoor gear, safety</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="package-included-location">
                            <h4 class="single-page-small-title">Your Itinerary</h4>
                            <div class="row">
                                <div class="col-lg-4 col-md-4">
                                    <div class="single-blog">
                                        <div class="p-list">
                                            <div class="list">1</div>
                                            <p>Day 1</p>
                                        </div>
                                        <div class="thumb">
                                            <img src="<%=pjName%>/resources/assets/images/blog/8.png" alt="blog">
                                        </div>
                                        <div class="single-blog-details">
                                            <h4 class="title">Welcome to St. John's</h4>
                                            <p class="content">After a welcome drink, we'll stroll into town and get to know each other over a hyper-local ânose-to-tailâ dinner. Show more</p>
                                            <a class="btn-read-more" href="#"><span>Show More<i class="la la-arrow-right"></i></span></a>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-4 col-md-4">
                                    <div class="single-blog">
                                        <div class="p-list">
                                            <div class="list">2</div>
                                            <p>Day 2</p>
                                        </div>
                                        <div class="thumb">
                                            <img src="<%=pjName%>/resources/assets/images/blog/1.png" alt="blog">
                                        </div>
                                        <div class="single-blog-details">
                                            <h4 class="title">Relaxation & Exploration</h4>
                                            <p class="content">After a welcome drink, we'll stroll into town and get to know each other over a hyper-local ânose-to-tailâ dinner. Show more</p>
                                            <a class="btn-read-more" href="#"><span>Show More<i class="la la-arrow-right"></i></span></a>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-4 col-md-4">
                                    <div class="single-blog single-blog-after-none">
                                        <div class="p-list">
                                            <div class="list">3</div>
                                            <p>Day 3</p>
                                        </div>
                                        <div class="thumb">
                                            <img src="<%=pjName%>/resources/assets/images/blog/9.png" alt="blog">
                                        </div>
                                        <div class="single-blog-details">
                                            <h4 class="title">Farewell & Departure</h4>
                                            <p class="content">After a welcome drink, we'll stroll into town and get to know each other over a hyper-local ânose-to-tailâ dinner. Show more</p>
                                            <a class="btn-read-more" href="#"><span>Show More<i class="la la-arrow-right"></i></span></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="host-area">
                            <div class="single-host-wrap text-center">
                                <div class="thumb">
                                    <img src="<%=pjName%>/resources/assets/images/client/02.png" alt="img">
                                </div>
                                <h4>Mike At Atlas Obscura Trips</h4>
                                <p>I'm your Atlas Obscura Trip Coordinator. Since 2016, Atlas Obscura has been offering unusual trips to the worldâs most extraordinary places. Our itineraries are developed in close collaboration with the locals and insiders who host themâour global community of explorers</p>
                                <p> Felicity Roberts will be leading your trip. A rural Newfoundlander, certified herbalist, farmer, writer, wild food advocate, and self relic, Felicity is most on the barrens cutting heather to dye wool or hanging off the edge</p>
                                <a class="btn btn-yellow" href="#">Contact Host</a>
                            </div>
                        </div>
                        <div class="service-location-map">
                            <h4 class="single-page-small-title">Service Location</h4>
                            <div class="service-location-map">
                                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d649788.5753409272!2d-0.5724199684037448!3d52.92186340524542!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x487604d94c3b82ab%3A0x62077a554c8e9a8e!2sPetty%20France%2C%20Westminster%2C%20London%2C%20UK!5e0!3m2!1sen!2sbd!4v1572346566908!5m2!1sen!2sbd"></iframe>
                            </div>
                        </div>
                        <div class="comments-area tour-details-review-area">
                            <h4 class="comments-title">Reviews</h4>
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
                                <li>
                                    <div class="single-comment-wrap">
                                        <div class="thumb">
                                            <img src="<%=pjName%>/resources/assets/images/client/3.png" alt="img">
                                        </div>
                                        <div class="content">
                                            <h4 class="title">Eliza Jordan</h4>
                                            <span class="date">17 SEP 2019</span>
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
                            <div class="btn-wrapper text-right mt-3">
                                <a class="btn-read-more" href="#"><span>More Review<i class="la la-arrow-right"></i></span></a>
                            </div>
                        </div>
                        <div class="location-review-area">
                            <form class="tp-form-wrap bg-gray tp-form-wrap-one">
                                <div class="row">
                                    <div class="col-lg-6"><h4 class="single-page-small-title">Write A Review</h4></div>
                                    <div class="col-lg-6">
                                        <div class="tp-review-meta text-lg-right">
                                            <span class="mr-3 ml-0">Assigned Rating</span>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <label class="single-input-wrap">
                                            <span class="single-input-title">Name</span>
                                            <input type="text">
                                        </label>
                                    </div>
                                    <div class="col-lg-6">
                                        <label class="single-input-wrap">
                                            <span class="single-input-title">Email</span>
                                            <input type="text">
                                        </label>
                                    </div>
                                    <div class="col-lg-12">
                                        <label class="single-input-wrap">
                                            <span class="single-input-title">Comments</span>
                                            <textarea></textarea>
                                        </label>
                                    </div>
                                    <div class="col-12">
                                        <a class="btn btn-yellow" href="#">Send</a>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="sidebar-area sidebar-area-4">
                        <div class="widget tour-list-widget">
                            <div class="widget-tour-list-meta">
                                <div class="single-widget-search-input-title"><i class="fa fa-user"></i> Name</div>
                                <div class="single-widget-search-input">
                                    <input type="text" placeholder="Name">
                                </div>
                                <div class="single-widget-search-input-title"><i class="fa fa-envelope"></i> Email</div>
                                <div class="single-widget-search-input">
                                    <input type="text" placeholder="Email">
                                </div>
                                <div class="single-widget-search-input-title"><i class="fa fa-phone"></i> Phone</div>
                                <div class="single-widget-search-input">
                                    <input type="text" placeholder="Phone">
                                </div>
                                <div class="single-widget-search-input-title"><i class="fa fa-calendar-minus-o"></i> Date</div>
                                <div class="single-widget-search-input">
                                    <input type="text" class="departing-date custom-select" placeholder="Departing">
                                </div>
                                <div class="single-widget-search-input-title"><i class="fa fa-calendar-minus-o"></i> Date</div>
                                <div class="single-widget-search-input">
                                    <input type="text" class="returning-date custom-select" placeholder="Returning">
                                </div>
                                <div class="single-widget-search-input-title"><i class="fa fa-keyboard-o"></i> Message</div>
                                <div class="single-widget-search-input">
                                    <textarea placeholder="Type"></textarea>
                                </div>
                                <div class="text-lg-center text-left">
                                    <a class="btn btn-yellow" href="#">Book Now <i class="fa fa-paper-plane"></i></a>
                                </div>
                            </div>
                        </div>
                        <div class="widget_ads">
                            <a href="#"><img class="w-100" src="<%=pjName%>/resources/assets/images/others/01.png" alt="img"></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- tour details area End -->

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