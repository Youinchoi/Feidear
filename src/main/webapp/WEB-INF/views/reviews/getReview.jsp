<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>  

 	<!-- header -->
     <%@ include file='../header.jsp' %>
 	
    <!-- //. sign up Popup -->
    <div class="signUp-popup login-register-popup" id="signUp-popup">
        <div class="login-register-popup-wrap">
            <div class="row no-gutters">
                <div class="col-lg-6">
                    <div class="thumb">
                        <img src="../images/others/signup.png" alt="img">
                    </div>
                </div>
                <div class="col-lg-6 align-self-center">
                    <div class="shape-thumb">
                        <img src="../images/others/signup-shape.png" alt="img">
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

    <!-- breadcrumb area start -->
    <div class="breadcrumb-area style-three jarallax" style="background-image:url(../images/bg/1.png);">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb-inner">
                        <h1 class="page-title">축제 일기 글 제목</h1>
                        <ul class="page-list">
                            <li><a href="index">Home</a></li>
                            <li>리뷰 게시판 상세보기입니다</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- breadcrumb area End -->

    <!-- blog area start -->
    <div class="blog-details-area pd-top-120">
        <div class="container">
            <div class="row">
                <div class="col-lg-8">
                    <form action="updateReview" class="tp-form-wrap" method="post">
                        <div class="single-blog mb-0">
                            <div class="thumb">
                                <img src="../images/blog-details/1.png" alt="blog">
                            </div>
                            <div class="single-blog-details">
                                <input type="hidden" name="rv_no" id="rv_no" value="${reviews.rv_no}">
                                <p class="date mb-0" name="rv_regdate">작성일 : ${reviews.rv_regdate}</p>
                                <h3 class="title" name="rv_title">${reviews.rv_title}</h3>
                                <p class="content mb-0" name="rv_content">${reviews.rv_content}</p>
                            </div>
                        </div>
                    <!-- 인용문구 시작 details-blockquote-start -->
                    <blockquote class="blockquote tp-blockquote bg-dark-blue">
                      <p class="mb-0">인용 문구 어쩌구 저쩌구 인용 문구 어쩌구 저쩌구 인용 문구 어쩌구 저쩌구 인용 문구 어쩌구 저쩌구 </p>
                    </blockquote>
                    <!-- 인용문구 끝 details-blockquote-end -->
                    <p>리뷰 내용 어쩌구 저쩌구 리뷰 내용 어쩌구 저쩌구 리뷰 내용 어쩌구 저쩌구 리뷰 내용 어쩌구 저쩌구 리뷰 내용 어쩌구 저쩌구 </p>
                    <h4 class="single-page-small-title mt-5">축제 사진</h4>

                    <!-- 축제 사진 시작 details-gallery-start -->
                    <div class="gallery-area">
                        <div class="containerss">
                            <div class="gallery-filter-area row custom-gutter">
                                <div class="gallery-sizer col-1"></div>
                                <!-- gallery-item 1-->
                                <div class="tp-gallery-item col-md-4 col-sm-6 mb-10">
                                    <div class="tp-gallery-item-img">
                                        <img src="../images/blog-details/2.png" alt="image">
                                        ${reviews.rv_image}
                                    </div>
                                </div>
                                <!-- gallery-item 2-->
                                <div class="tp-gallery-item col-md-4 col-sm-6">
                                    <div class="tp-gallery-item-img">
                                        <img src="../images/blog-details/3.png" alt="image">
                                    </div>
                                </div>
                                <!-- gallery-item 3-->
                                <div class="tp-gallery-item col-md-4 col-sm-6">
                                    <div class="tp-gallery-item-img">
                                        <img src="../images/blog-details/4.png" alt="image">
                                    </div>
                                </div>
                                <!-- gallery-item 4-->
                                <div class="tp-gallery-item col-md-4 col-sm-6">
                                    <div class="tp-gallery-item-img">
                                        <img src="../images/blog-details/5.png" alt="image">
                                    </div>
                                </div>
                                <!-- gallery-item 5-->
                                <div class="tp-gallery-item col-md-4 col-sm-6">
                                    <div class="tp-gallery-item-img">
                                        <img src="../images/blog-details/6.png" alt="image">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- 축제 사진 끝 details-gallery-end -->

                    <!-- details-video-start -->
                    <h4 class="single-page-small-title mt-5">이게 동영상이란다</h4>
                    <div class="video-popup-wrap style-two">
                        <div class="thumb">
                            <img src="../images/blog-details/7.png" alt="video">
                        </div>
                        <div class="video-popup-btn">
                            <a href="https://www.youtube.com/watch?v=c7XEhXZ_rsk" class="video-play-btn mfp-iframe"><i class="fa fa-play"></i></a>
                        </div>
                    </div>
                    <!-- details-video-end -->

                    <p>나는 동영상 아래 설명이야 히히</p>
                    <p>난 동영상 아래 설명 아래 설명이야 히히힛</p>

                    <!-- 좋아요 및 태그 시작 -->
                    <div class="row tag-share-area">
                        <!-- 좋아요 시작 -->
                        <div class="col-lg-6">
                            <span class="mr-2">리뷰 좋아요 </span>
                            <ul class="social-icon style-two">
                                <li>
                                    <a class="linkedin" href="#"><i class="fa fa-thumbs-o-up"></i></a>
                                </li>
                            </ul>
                        </div>
                        <!-- 좋아요 끝 -->

                        <div class="col-xl-5 col-lg-6 offset-xl-1">
                            <form action="updateReview" class="tp-form-wrap" method="post">
                                <div class="single-blog-post-tags d-flex">
                                    <span class="all-tags-title">관련 태그 :</span>
                                    <div class="all-tags">
                                        <c:forEach items="${reviewList}" var="reviews">
                                            <a href="#">${reviews.rv_tag}</a>
                                        </c:forEach>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                    <!-- 좋아요 및 태그 끝 -->

                    <nav class="navigation post-navigation single-post-navigation">
                        <div class="nav-links tp-control-nav">
                            <div class="row">
                                <div class="col-xl-5 col-lg-6 col-6 ">
                                    <div class="nav-previous w-100">
                                        <a href="#">
                                            <span class="slick-arrow float-left"><i class="la la-long-arrow-left"></i></span>
                                            <span class="nav-post-text pl-2 float-left">이전 리뷰 : </span>
                                            <h4 class="float-left">${reviews.rv_title}</h4>
                                        </a> 
                                    </div>
                                </div>
                                <div class="col-xl-5 col-lg-6 col-6  offset-xl-2">
                                    <div class="nav-next w-100">
                                        <a href="#">
                                            <span class="pr-2 nav-post-text">다음 리뷰 : </span>
                                            <span class="slick-arrow float-right"><i class="la la-long-arrow-right"></i></span>
                                            <h4 class="float-right">${reviews.rv_title}</h4>
                                        </a> 
                                    </div>
                                </div>
                            </div>
                        </div>
                    </nav>
                    <!-- author-area-start -->
                    <div class="author-area media">
                        <div class="media-left">
                            <img src="../images/blog-details/8.png" alt="img">
                        </div>
                        <div class="media-body">
                            <h4>리뷰 작성자 정보</h4>
                            <h7><b>리뷰 작성자</b>${reviews.u_no}</h7>
                            <p><b>리뷰 작성자 소개</b>${user.u_comment}</p>
                            <ul class="social-icon style-three">
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
                    </div>
                    <!-- author-area-end -->
                    <!-- comments-area-start -->
                    <div class="comments-area">
                        <h4 class="comments-title">댓 글</h4>
                        <ul class="comment-list" id="rv_cmtList">
                            <li>
                                <div class="single-comment-wrap">
                                    <div class="thumb">
                                        <img src="../images/blog-details/9.png" alt="img">
                                    </div>
                                    <div class="content">
                                        <h4 class="title">${reviews.u_no}</h4>
                                        <span class="date">${list.rv_cmt_regdate}</span>
                                        <p>${list.rv_cmt}</p>
                                        <!-- <a href="#" class="reply btn btn-yellow"><span><i class="fa fa-reply"></i>답글 달기</span></a> -->
                                    </div>
                                </div>
                            </li>
                            <!--<li>
                                 <ul class="children">
                                    <li >
                                        <div class="single-comment-wrap">
                                            <div class="thumb">
                                                <img src="../images/blog-details/10.png" alt="img">
                                            </div>
                                            <div class="content">
                                                <h4 class="title">Laurie</h4>
                                                <span class="date">17 SEP 2019</span>
                                                <p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren</p>
                                                <a href="#" class="reply btn btn-yellow"><span><i class="fa fa-reply"></i>Reply</span></a>
                                            </div>
                                        </div>
                                    </li>
                                </ul> 
                            </li>-->
                        </ul>
                    </div>
                </form>
                    <!-- comments-area-end -->
                    <!-- blog-comment-area start -->
                    <div class="blog-comment-area">
                        <form class="tp-form-wrap bg-gray tp-form-wrap-one" action="">
                            <h4 class="single-page-small-title">댓글 작성하기</h4>
                            <div class="row">
                                <div class="col-lg-6 col-md-6">
                                    <label class="single-input-wrap">
                                        <input type="hidden" name="u_no" value="${reviews.u_no}" >
                                        <span class="single-input-title">아이디 : ${reviews.u_no} </span>
                                    </label>
                                </div>
                                <div class="col-lg-12">
                                    <label class="single-input-wrap">
                                        <span class="single-input-title">댓글 내용</span>
                                        <textarea id="rv_cmt" name="rv_cmt"></textarea>
                                    </label>
                                </div>
                                <div class="col-12">
                                    <input type="button" class="btn btn-yellow" id="submitBtn" value="저 장">
                                </div>
                            </div>
                        </form>
                    </div>
                    <!-- blog-comment-area start -->
                </div>
                
                <div class="col-lg-4">
                    <aside class="sidebar-area sidebar-area-4">
                        <!-- 인기글 시작-->
                        <div class="widget widget_categories">
                            <h2 class="widget-title">인 기 글</h2>
                            <div>
	                            <ul>
                                    <c:forEach items="${rankList}" var="rank">
                                        <li  style="padding-top: 15px; padding-bottom: 15px;">
                                            <div class="media">
                                                <img src="/upload_img_file/부적5.png" alt="widget" style="width:35%;">
                                                <div class="media-body" style="margin: 10px;">
                                                    <span class="post-date">${rank.rv_regdate}</span>
                                                    <h6 class="title"><a href="getReview?rv_no=${rank.rv_no}">${rank.rv_title}</a></h6>
                                                </div>
                                            </div>
                                        </li>
                                    </c:forEach>
	                            </ul>
                        	</div>
                        </div>
                        <!-- 인기글 끝 -->

                        <div class="widget widget_tag_cloud">
                            <h2 class="widget-title">태 그</h2>
                            <div class="tagcloud">
                                <a href="#">겨 울</a>
                                <a href="#">눈 꽃</a>
                                <a href="#">불 빛</a>
                                <a href="#">새 해</a>
                                <a href="#">힘 내 자</a>
                            </div>
                        </div>
                        <!-- 광고 배너 위치  -->
                            <div class="widget widget_tag_cloud">
	                            <h2 class="widget-title">광고 배너</h2>
	                           <a href="#"><img src="../images/others/01.png" alt="img"></a>
                            </div>
                       </div>
                    </aside>
                </div>
            </div>
        </div>
    </div>
    <!-- blog area End -->
    
<!-- newslatter area Start ( 공백용 ) -->
<div class="newslatter-area pd-top-120">
    <div class="container">
        <div class="newslatter-area-wrap border-tp-solid">
        </div>
    </div>
</div>
<!-- newslatter area End -->
    
    <!-- footer -->
    <jsp:include page="../footer.jsp"></jsp:include>

    <!-- Additional plugin js -->
    <script src="../js/jquery-2.2.4.min.js"></script>
    <script src="../js/popper.min.js"></script>
    <script src="../js/bootstrap.min.js"></script>
    <script src="../js/jquery.magnific-popup.js"></script>
    <script src="../js/owl.carousel.min.js"></script>
    <script src="../js/wow.min.js"></script>
    <script src="../js/slick.js"></script>
    <script src="../js/waypoints.min.js"></script>
    <script src="../js/jquery.counterup.min.js"></script>
    <script src="../js/imagesloaded.pkgd.min.js"></script>
    <script src="../js/isotope.pkgd.min.js"></script>
    <script src="../js/swiper.min.js"></script>
    <script src="../js/jquery.nice-select.min.js"></script>
    <script src="../js/jquery-ui.min.js"></script>
    <script src="../js/jarallax.min.js"></script>

    <!-- 댓글 js -->
    <script src="../js/review_comment_reply.js"></script>

    <!-- main js -->
    <script src="../js/main.js"></script>

    <!--<script type="text/javascript">
        $("#submitBtn").click(function(){

        })

    </script>-->
</body>
</html>