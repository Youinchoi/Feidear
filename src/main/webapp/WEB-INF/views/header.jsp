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
    <title>Feidear</title>
    <!-- favicon -->
    <link rel=icon href="/images/favicon.png" sizes="20x20" type="image/png">

    <script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.2.js" charset="utf-8"></script>
    <script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.min.js"></script>

    <style type="text/css">
        html, div, body,h3{
          margin: 0;
          padding: 0;
        }
        h3{
          display: inline-block;
          padding: 0.6em;
        }
        </style>

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
    <!-- sweet alert창 -->
   <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
   <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.js"></script>
   <link rel="stylesheet"href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.css" />

   <script type="text/javascript">

    var t = '${feidear}';
    if (t == '5') {
       alert('로그인 오류! 다시 입력해주세요')
       window.history.go(-1);s
    }
    </script>

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

 <div class="body-overlay" id="body-overlay"></div>

    <!-- //. login Popup -->
    <div class="signUp-popup login-register-popup" id="signUp-popup">
        <div class="login-register-popup-wrap">
            <div class="row no-gutters">
                <div class="col-lg-6">
                    <div class="thumb">
                        <a href="festival/festivalDetails?fetv_no=53"><img src="/images/index/fetv_no_53.png" alt="img"></a>
                    </div>
                </div>
                <div class="col-lg-6 align-self-center">
                    
                    <form class="login-form-wrap" method="POST" action="/user/loginUser">
                        <h4 class="text-center">Log In</h4>
                        <div class="single-input-wrap style-two">
                            <input type="text" placeholder="ID" name="u_id" id="u_id">
                            <span class="single-input-title"><i class="fa fa-user"></i></span>
                        </div>
                        <div class="single-input-wrap style-two">
                            <input type="password" placeholder="Password" name="u_pw" id="u_pw">
                            <span class="single-input-title"><i class="fa fa-lock"></i></span>
                        </div>
                        <div class="single-input-wrap style-two">
                            <button class="btn btn-yellow w-100" id="u_loginBtn">로그인</button>
                        </div>
                        <ul>
                            <div class="sign-in-btn">페이디어 계정이 없어요 ☞ <a href="/sign-up">회원가입</a></div><br>
                              <!-- 네이버 소셜 로그인 섹션 
                              <div id="naver_id_login" style="text-align:center"><a href="${url}">
                                <img width="223" src="https://developers.naver.com/doc/review_201802/CK_bEFnWMeEBjXpQ5o8N_20180202_7aot50.png"/></a>
                              </div> -->
                        </ul>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <!-- //. login Popup End -->

    <!-- navbar area start -->
    <div class="top-navbar">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 topbar-contact-wrap">
                    <div class="topbar-contact">
                        <i class="fa fa-phone"></i>
                        <span class="title">TEL</span>
                        <span class="number">02 1234 5678</span>
                    </div>
                    <div class="topbar-contact" style="min-width:300px;">
                        <i class="fa fa-envelope-o"></i>
                        <span class="title">E-MAIL</span>
                        <span class="number">feidear@kosmo.com</span>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="nav-right-content float-right">
                        <ul class="pl-0">
                            <li class="notification">
                                <a class="signUp-btn">
                                    <c:if test="${empty sessionScope.u_id}">
                                        <i class="fa fa-user-o"></i>
                                    </c:if>
                                </a>
                                    <c:if test="${not empty sessionScope.u_id}">
                                        <a href="/user/getUser?u_no=${sessionScope.u_no}">
                                            <span style="color:rgb(255, 255, 255)">${sessionScope.u_id}님 환영합니다!</span>&nbsp&nbsp&nbsp&nbsp&nbsp
                                            <i class="fa fa-user-circle fa-lg" aria-hidden="true"></i>
                                        </a>
                                        <c:if test="${sessionScope.u_id eq 'admin'}">
                                            <a href="/admin/index">
                                            <span style="color:rgb(255, 255, 255)">&nbsp;&nbsp;|&nbsp;&nbsp;관리자 페이지</span>&nbsp;<i class="fa fa-cogs fa-lg" aria-hidden="true"></i>
                                            </a>
                                        </c:if>
                                    </c:if>
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
                    <a href="/index">
                        <img src="/images/sticky-logo.png" alt="logo">
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
                            <a class="btn btn-yellow" href="/festival/calendar">축제 캘린더<i class="fa fa-paper-plane"></i></a>
                        </li>

                        <li class="notification">
                            <a class="signUp-btn" href="/#">
                                <i class="fa fa-user-o"></i>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="collapse navbar-collapse" id="tp_main_menu">
                <div class="logo-wrapper desktop-logo">
                    <a href="/index" class="main-logo">
                        <img src="/images/logo.png" alt="logo">
                    </a>
                    <a href="/index" class="sticky-logo">
                        <img src="/images/sticky-logo.png" alt="logo">
                    </a>
                </div>
                <ul class="navbar-nav">
                    <li><a href="/viewFestivalList">축제 둘러보기</a></li>
                    <li class="menu-item-has-children">
                        <a>커뮤니티</a>
                        <ul class="sub-menu">
                            <li><a href="/reviews/getReviewList">축제 일기</a></li>
                            <li><a href="/magazine">매거진</a></li>
                        </ul>
                    </li>
                    <li class="menu-item-has-children">
                        <a>이벤트</a>
                        <ul class="sub-menu">
                            <li><a href="/event">제휴 이벤트</a></li>
                      		<li><a href="/supporters">서포터즈</a></li>
                        </ul>
                    </li>
                    <c:if test="${empty sessionScope.u_id}">
                        <li>
                            <a class="signUp-btn" href="#">스마트 페이지</a>
                        </li>
                    </c:if>
                    <c:if test="${not empty sessionScope.u_id}">
                        <li class="menu-item-has-children">
                            <a>스마트 페이지</a>
                            <ul class="sub-menu">
                                <li><a href="/smart/smart-page?cont=smart">혼잡도 체크</a></li>
                                <li><a href="/smart/smart-page?cont=weather">실시간 날씨</a></li>
                                <li><a href="/smart/smart-page?cont=recomm">유저 PICK 추천</a></li>
                            </ul>
                        </li>
                    </c:if>
                    <li>
                        <a href="/faq/faq">FAQ</a>
                    </li>
                </ul>
            </div>
            <div class="nav-right-content">
                <ul>
                    <li>
                    </li>
                    <li class="pr-0">
                        <a class="btn btn-yellow" href="/festival/calendar">축제 캘린더<i class="fa fa-paper-plane"></i></a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <!-- navbar area end -->