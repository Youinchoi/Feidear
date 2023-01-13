<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

	<%String pjName = "/Feidear";%>
 
	<!-- header -->
	<jsp:include page="header.jsp"></jsp:include>

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


    <!-- 이벤트 상단 제목 area start -->
    <div class="breadcrumb-area jarallax" style="background-image:url(images/bg/1.png);">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb-inner">
                        <h1 class="page-title">Event Details</h1>
                        <ul class="page-list">
                            <li><a href="index">Home</a></li>
                            <li>Event Details</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- 이벤트 상단 제목 area End -->

    <!-- 이벤트 상세 내용 area start -->
    <div class="blog-details-area pd-top-120">
        <div class="container">
            <div class="row">
                <div class="col-lg-8">
                    <div class="single-blog mb-0">
                        <div class="thumb">
                            <img src="images/blog-details/1.png" alt="blog">
                        </div>
                        <div class="single-blog-details">
                            <p class="date mb-0">2023. 01. 06</p>
                            <h3 class="title">이벤트 제목</h3>
                            <p class="content mb-0">이벤트 상세내용</p>
                        </div>
                    </div>
                    <!-- 이벤트 상세 설명-start -->
                    <blockquote class="blockquote tp-blockquote bg-dark-blue">
                      <p class="mb-0">이벤트 상세설명 상세설명</p>
                    </blockquote>
                    <!-- 이벤트 상세 설명-end -->
                    <p>이벤트 상세설명 상세설명 상세설명</p>
                    <h4 class="single-page-small-title mt-5">이벤트 상세설명 관련 사진</h4>

                    <!-- 이벤트 사진-start -->
                    <div class="gallery-area">
                        <div class="containerss">
                            <div class="gallery-filter-area row custom-gutter">
                                <div class="gallery-sizer col-1"></div>
                                <!-- gallery-item -->
                                <div class="tp-gallery-item col-md-4 col-sm-6 mb-10">
                                    <div class="tp-gallery-item-img">
                                        <img src="images/blog-details/2.png" alt="image">
                                    </div>
                                </div>
                                <!-- gallery-item -->
                                <div class="tp-gallery-item col-md-4 col-sm-6">
                                    <div class="tp-gallery-item-img">
                                        <img src="images/blog-details/3.png" alt="image">
                                    </div>
                                </div>
                                <!-- gallery-item -->
                                <div class="tp-gallery-item col-md-4 col-sm-6">
                                    <div class="tp-gallery-item-img">
                                        <img src="images/blog-details/4.png" alt="image">
                                    </div>
                                </div>
                                <!-- gallery-item -->
                                <div class="tp-gallery-item col-md-4 col-sm-6">
                                    <div class="tp-gallery-item-img">
                                        <img src="images/blog-details/5.png" alt="image">
                                    </div>
                                </div>
                                <!-- gallery-item -->
                                <div class="tp-gallery-item col-md-4 col-sm-6">
                                    <div class="tp-gallery-item-img">
                                        <img src="images/blog-details/6.png" alt="image">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- 이벤트 사진-end -->
                    <p>위에 사진에서 보여준 이벤트 내용</p>
                    <!-- 이벤트 관련 비디오-start -->
                    <h4 class="single-page-small-title mt-5">이벤트 관련 영상</h4>
                    <div class="video-popup-wrap style-two">
                        <div class="thumb">
                            <img src="images/blog-details/7.png" alt="video">
                        </div>
                        <div class="video-popup-btn">
                            <a href="https://www.youtube.com/watch?v=c7XEhXZ_rsk" class="video-play-btn mfp-iframe"><i class="fa fa-play"></i></a>
                        </div>
                    </div>
                    <!-- 이벤트 관련 비디오 -end -->
                    <p>이벤트 관련 영상에서 보여준 것</p>
                    <p>이벤트 영상대로 하면 끝</p>
                    <div class="row tag-share-area">
                        <div class="col-lg-6">
                            <span class="mr-2">공유 및 찜:</span>
                            <ul class="social-icon style-two">
                                <li>
                                    <a class="facebook" href="#"><i class="fa fa-facebook"></i></a>
                                </li>
                                <li>
                                    <a class="twitter" href="#"><i class="fa fa-twitter"></i></a>
                                </li>
                                <li>
                                    <a class="pinterest" href="#"><i class="fa fa-instagram"></i></a>
                                </li>
                                <li>
                                    <a class="linkedin" href="#"><i class="fa fa-linkedin"></i></a>
                                </li>
                            </ul>
                        </div>
                        <div class="col-xl-5 col-lg-6 offset-xl-1">
                            <div class="single-blog-post-tags d-flex">
                                <span class="all-tags-title">관련 태그:</span>
                                <div class="all-tags">
                                    <a href="#">태그1</a>
                                    <a href="#">태그2</a>
                                    <a href="#">태그3</a>
                                    <a href="#">태그4</a>
                                    <a href="#">travel</a>
                                    <a href="#">겨울</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <nav class="navigation post-navigation single-post-navigation">
                        <div class="nav-links tp-control-nav">
                            <div class="row">
                                <div class="col-xl-5 col-lg-6 col-6 ">
                                    <div class="nav-previous w-100">
                                        <a href="#">
                                            <span class="slick-arrow float-left"><i class="la la-long-arrow-left"></i></span>
                                            <span class="nav-post-text pl-2 float-left">이전 이벤트</span>
                                            <h4 class="float-left">이전 이벤트 제목</h4>
                                        </a> 
                                    </div>
                                </div>
                                <div class="col-xl-5 col-lg-6 col-6  offset-xl-2">
                                    <div class="nav-next w-100">
                                        <a href="#">
                                            <span class="pr-2 nav-post-text">다음 이벤트</span>
                                            <span class="slick-arrow float-right"><i class="la la-long-arrow-right"></i></span>
                                            <h4 class="float-right">다음 이벤트 제목</h4>
                                        </a> 
                                    </div>
                                </div>
                            </div>
                        </div>
                    </nav>
                    <!-- author-area-start -->
                    
                    <!-- 이벤트 태그 목록-area start -->
                </div>
                <div class="col-lg-4">
                    <aside class="sidebar-area sidebar-area-4">
                        <div class="widget widget_search bg-none pd-none">
                            <form class="search-form">
                                <div class="form-group">
                                    <input type="text" placeholder="Search">
                                </div>
                                <button class="submit-btn" type="submit"><i class="ti-search"></i></button>
                            </form>
                        </div>
                        <div class="widget widget_categories">
                            <h2 class="widget-title">인기글</h2>
                            <ul>
                                <li><a href="#">인기글 1</a></li>
                                <li><a href="#">인기글 2</a></li>
                                <li><a href="#">인기글 3</a></li>
                                <li><a href="#">인기글 4</a></li>
                                <li><a href="#">인기글 5</a></li>
                                <li><a href="#">인기글 6</a></li>
                            </ul>
                        </div>
                        
                        <div class="widget widget_tag_cloud">
                            <h2 class="widget-title">Tags</h2>
                            <div class="tagcloud">
                                <a href="#">태그1</a>
                                <a href="#">태그2</a>
                                <a href="#">태그3</a>
                                <a href="#">태그4</a>
                                <a href="#">태그5</a>
                            </div>
                        </div>
                        <!-- 광고 배너 위치  -->
                            <div class="widget widget_tag_cloud">
	                            <h2 class="widget-title">광고 배너</h2>
                            <a href="#"><img class="w-100" src="images/others/01.png" alt="img"></a>
                        </div>
                    </aside>
                </div>
            </div>
        </div>
    </div>
    <!-- 이벤트 상세 설명 area End -->
    
	<!-- newslatter area Start ( 공백용 ) -->
	<div class="newslatter-area pd-top-120">
    	<div class="container">
        	<div class="newslatter-area-wrap border-tp-solid">
        </div>
    </div>
</div>
<!-- newslatter area End -->
    
    <!-- footer -->
    <jsp:include page="footer.jsp"></jsp:include>


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