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
    <title>Feidear</title>
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

    <!-- //. 회원가입 팝업 -->
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
    <!-- //. 회원가입 팝업 End -->

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
                        <a class="btn btn-yellow" href="calendar">축제 캘린더<i class="fa fa-paper-plane"></i></a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <!-- navbar area end -->


    <!-- 상단바 밑 제목 area start -->
    <div class="breadcrumb-area jarallax" style="background-image:url(<%=pjName%>/resources/assets/images/bg/1.png);">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb-inner">
                        <h1 class="page-title">MY PAGE</h1>
                        <ul class="page-list">
                            <li><a href="index">Home</a></li>
                            <li>마이 페이지</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- 상단바 밑 제목 area End -->

    <!-- 마이페이지 본문 area start -->
    
    	<!-- 마이페이지 탭팬 리스트 start -->
    <div class="user-profile-area pd-top-120">
        <div class="container">
            <div class="row">
                <div class="col-xl-10 col-lg-12">
                    <div class="row">
                        <div class="col-lg-4">
                            <ul class="nav nav-tabs tp-tabs style-two">
                                <li class="nav-item">
                                    <a class="nav-link active" data-toggle="tab" href="#tabs_1"><i class="fa fa-user"></i>회원정보 변경</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" data-toggle="tab" href="#tabs_2"><i class="fa fa-window-close-o" aria-hidden="true"></i>회원 탈퇴</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link"  data-toggle="tab" href="#tabs_3"><i class="fa fa-address-card"></i>비밀번호 변경</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link"  data-toggle="tab" href="#tabs_4"><i class="fa fa-bookmark" aria-hidden="true"></i>내 찜 목록</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link"  data-toggle="tab" href="#tabs_6"><i class="fa fa-book" aria-hidden="true"></i>내 후기</a>
                                </li>
                                <li class="text-center">
                                    <a class="btn btn-yellow" href="#"><i class="fa fa-sign-in" aria-hidden="true"></i> <span>로그아웃</span></a>
                                </li>
                            </ul>
                        </div>
    	<!-- 마이페이지 탭팬 리스트 end -->
                        
                        <!-- tabpan 목록 start-->
                        	<!-- 회원정보 변경 start -->
                        <div class="col-xl-7 col-lg-8 offset-xl-1">
                            <div class="tab-content user-tab-content">
                                <div class="tab-pane fade show active" id="tabs_1" >
                                    <div class="user-details">
                                        <h3 class="user-details-title">회원정보 변경</h3>
                                        <div class="tp-img-upload">
                                            <div class="tp-avatar-preview">
                                                <div id="tp_imagePreview" style="background-image: url(<%=pjName%>/resources/assets/images/team/1.png);">
                                                </div>
                                            </div>
                                            <div class="tp-avatar-edit">
                                                <input type='file' id="tp_imageUpload" accept=".png, .jpg, .jpeg" />
                                                <label class="btn btn-transparent" for="tp_imageUpload"><i class="fa fa-picture-o"></i>사진 변경</label>
                                                <h4 class="id">ID : </h4>
                                            </div>
                                        </div>
                                        <form action="modifyMember" class="tp-form-wrap" method="post">
                                        <div class="row">
                                            <div class="col-md-12">
                                                <label class="single-input-wrap style-two">
                                                    <span class="single-input-title">이름</span>
                                                    <input type="text" id="putname">
                                                </label>
                                            </div>
                                            <div class="col-lg-12">
                                                <label class="single-input-wrap style-two">
                                                    <span class="single-input-title">자기 소개</span>
                                                    <textarea></textarea>
                                                </label>
                                            </div>
                                            <div class="col-md-6">
                                                <label class="single-input-wrap style-two">
                                                    <span class="single-input-title">Email</span>
                                                    <input type="text">
                                                </label>
                                            </div>
                                            <div class="col-md-6">
                                                <label class="single-input-wrap style-two">
                                                    <span class="single-input-title">전화번호</span>
                                                    <input type="text" placeholder="010-1234-5678">
                                                </label>
                                            </div>
                                            <div class="col-12">
                                                <input type="submit" class="btn btn-yellow mt-3 text-center" value="변경사항 저장">
                                            </div>
                                        </div>
                                    </form>
                                    </div>
                                </div>
                        	<!-- 회원정보 변경 end -->
                                
                                
                        	<!-- 회원탈퇴 start -->
                                <div class="tab-pane fade" id="tabs_2">
                                    <div class="user-verification">
                                            <div class="col-lg-8">
                                                <h3 class="user-details-title">회원 탈퇴</h3>
                                                <div class="notice"><i class="fa fa-exclamation-triangle"></i>탈퇴 시 저장된 모든 기록이 삭제됨</div>
                                                <br/>
                                            </div>
                                        <form action="deleteMember" method="post">
                                        <div class="row">
                                            <div class="col-lg-7">
                                                <label class="single-input-wrap style-two">
                                                    <input type="password" placeholder="현재 비밀번호" id="Pass">
                                                </label>
                                            </div>
                                            <div class="col-lg-7">
                                                <label class="single-input-wrap style-two">
                                                    <input type="password" placeholder="비밀번호 확인" id="passCheck">
                                                </label>
                                            </div>
                                            </div>
                                                <input type="submit" class="btn btn-yellow mt-3 text-center" value="회원 탈퇴">
                                        </form>
                                    </div>
                                </div>
                        	<!-- 회원탈퇴 end -->
                                
                                
                        	<!-- 비밀번호 변경 start -->
                                <div class="tab-pane fade" id="tabs_3">
                                    <div class="user-settings">
                                        <h3 class="user-details-title">비밀번호 변경</h3>
                                        <form action="modifyPassword" method="post">
                                        <div class="row">
                                            <div class="col-lg-7">
                                                <label class="single-input-wrap style-two">
                                                    <span class="single-input-title mb-3">비밀번호를 변경합니다.</span>
                                                    <input type="password" placeholder="현재 비밀번호" id="oldPass">
                                                </label>
                                            </div>
                                            <div class="col-lg-7">
                                                <label class="single-input-wrap style-two">
                                                    <input type="password" placeholder="새 비밀번호" id="newPass">
                                                </label>
                                            </div>
                                            <div class="col-lg-7">
                                                <label class="single-input-wrap style-two">
                                                    <input type="password" placeholder="새 비밀번호 확인" id="newPassCheck">
                                                </label>
                                            </div>
                                        </div>
                                                <input type="submit" class="btn btn-yellow mt-3 text-center" value="변경사항 저장">
                                        </form>
                                    </div>
                                </div>
                        	<!-- 비밀번호 변경 end -->
                                
                                
                        	<!-- 내찜목록 start -->
                                <div class="tab-pane fade" id="tabs_4">
                                    <div class="user-recent-view">
                                        <h3 class="user-details-title">내 찜 목록</h3>
                                       	<span>
                                       	<input type="checkbox" value='selectall' onclick='selectAll(this)'/>전체 선택
                                        &nbsp;
                                       	<input type="button" class="btn btn-yellow mt-3 text-center" value="찜 삭제">
                                       	</span>
                                        <br/><br/>
                                        <div class="row">
                                            <!-- 페이징 필요함 -->
                                            <div class="col-sm-6">
                                                <div class="single-destinations-list style-two">
                                                    <div class="checkboxes">
                                                    	<input type="checkbox">
                                                    </div>
                                                    <div class="thumb">
                                                        <img src="<%=pjName%>/resources/assets/images/destination-list/4.png" alt="list">
                                                    </div>
                                                    <div class="details">
                                                        <p class="location"><img src="<%=pjName%>/resources/assets/images/icons/1.png" alt="map">위치</p>
                                                        <h4 class="title"><a href="tour-details">어쩌고 축제</a></h4>
                                                        <p class="content">뭘로쓰지</p>
                                                        <div class="tp-price-meta">
                                                            <h2>축제기간? <small>$</small></h2>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-sm-6">
                                                <div class="single-destinations-list style-two">
                                                    <div class="checkboxes">
                                                    	<input type="checkbox">
                                                    </div>
                                                    <div class="thumb">
                                                        <img src="<%=pjName%>/resources/assets/images/destination-list/4.png" alt="list">
                                                    </div>
                                                    <div class="details">
                                                        <p class="location"><img src="<%=pjName%>/resources/assets/images/icons/1.png" alt="map">위치</p>
                                                        <h4 class="title"><a href="tour-details">어쩌고 축제</a></h4>
                                                        <p class="content">뭘로쓰지</p>
                                                        <div class="tp-price-meta">
                                                            <h2>축제기간? <small>$</small></h2>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-sm-6">
                                                <div class="single-destinations-list style-two">
                                                    <div class="checkboxes">
                                                    	<input type="checkbox">
                                                    </div>
                                                    <div class="thumb">
                                                        <img src="<%=pjName%>/resources/assets/images/destination-list/4.png" alt="list">
                                                    </div>
                                                    <div class="details">
                                                        <p class="location"><img src="<%=pjName%>/resources/assets/images/icons/1.png" alt="map">위치</p>
                                                        <h4 class="title"><a href="tour-details">어쩌고 축제</a></h4>
                                                        <p class="content">뭘로쓰지</p>
                                                        <div class="tp-price-meta">
                                                            <h2>축제기간? <small>$</small></h2>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                        	<!-- 내찜목록 end -->
                                
                                
                        	<!-- 내 후기 start -->
                                <div class="tab-pane fade" id="tabs_6">
                                    <div class="user-tour-details">
                                        <h3 class="user-details-title">내 후기</h3>
                                        <span class="user-tour-details-title">내가 작성한 후기</span>
                                        <span>| 후기 모아보기</span>
                                        <!-- 페이징 필요함 -->
                                        <div class="comments-area tour-details-review-area">
                                            <ul class="comment-list mb-0">
                                                <li>
                                                    <div class="single-comment-wrap">
                                                        <div class="thumb">
                                                            <img src="<%=pjName%>/resources/assets/images/client/2.png" alt="img">
                                                        </div>
                                                        <div class="content">
                                                            <h4 class="title">요뎡</h4>
                                                            <span class="date">2023-01-01</span>
                                                            <div class="tp-review-meta">
                                                                <i class="ic-yellow fa fa-star"></i>
                                                                <i class="ic-yellow fa fa-star"></i>
                                                                <i class="ic-yellow fa fa-star"></i>
                                                                <i class="ic-yellow fa fa-star"></i>
                                                                <i class="ic-yellow fa fa-star"></i>
                                                            </div>
                                                            <p>후기를 남겨야지요. 뭐라고 쓸건지 알아서 쓰겠지만 내가 이렇게 어쩌고라고 써야겠지요.
                                                            	후기를 남겨야지요. 뭐라고 쓸건지 알아서 쓰겠지만 내가 이렇게 어쩌고라고 써야겠지요.
                                                            </p>
                                                        </div>
                                                    </div>
                                                </li>

                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        	<!-- 내 후기 end -->
                    	<!-- tabpan 목록 end-->
                    
                    </div>
                </div> 
            </div>
        </div>
    </div>
    <!-- 마이페이지 본문 area End -->
    
    <!-- 뉴스레터 area Start -->
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
    <!-- 뉴스레터 area End -->
    
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
                &copy; Feidear 2022 All rights reserved. Powered with <a href="#" target="_blank"><i class="fa fa-heart"></i> </a> by <a href="#" target="_blank"><span>Feidear.</span></a>
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
    <script type="text/javascript">
    function selectAll(selectAll)  {
    	  const checkboxes 
    	     = document.querySelectorAll('input[type="checkbox"]');
    	  
    	  checkboxes.forEach((checkbox) => {
    	    checkbox.checked = selectAll.checked
    	  })
    	}
    </script>

</body>
</html>