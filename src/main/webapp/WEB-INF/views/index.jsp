<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

   <!-- header.jsp -->
   <%@ include file='header.jsp' %>
   <!-- header.jsp 끝 -->
   
    <link rel="stylesheet" href="/css/index-custom.css">
    <style>
        .word, .word2 {
        display: block;
        width: 100%;
        overflow: hidden;
        text-overflow: ellipsis;
        white-space: normal;
        line-height: 1.2;
/*        height: 4.8em;*/
        text-align: left;
        word-wrap: break-word;
        display: -webkit-box;
        -webkit-line-clamp: 1 ;
        -webkit-box-orient: vertical;
    	}

        .single-upconing-card img{
            border-radius: 10px;
            box-shadow: 0px 5px 5px 1px #919191;
        }
	</style>
    
    <!-- banner area start -->
    <div class="banner-area">
        <div class="banner-slider banner-slider-3">
            <div class="banner-slider-item jarallax" style="background-image: url(images/index/namsan.jpg);">
                <div class="container">
                    <div class="row">
                        <div class="col-xl-8 col-lg-9">
                            <div class="row">
                                <div class="col-lg-9 col-sm-8">
                                    <div class="banner-inner">
                                        <h3 style="color: white;">&nbsp About</h3>
                                        <h2 class="banner-title s-animate-2">Feidear</h2><br>
                                        <h4 class="content s-animate-3">페이디어는 다양한 행사를 소개하며,<br><br>
                                            국내의 특색있고 재미있는 축제들을 홍보하고자 합니다.</h4>

                                    </div>
                                </div>
                                <div class="col-lg-3 col-sm-4">
                                    <div class="video-popup-btn s-animate-video">
                                        <a href="https://www.youtube.com/watch?v=0Bvd2mInMJQ" class="video-play-btn mfp-iframe"><i class="fa fa-play"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="banner-slider-item jarallax" style="background-image: url(images/index/slider2.jpg);">
                <div class="container">
                    <div class="row">
                        <div class="col-xl-8 col-lg-9">
                            <div class="row">
                                <div class="col-lg-9 col-sm-8">
                                    <div class="banner-inner">
                                        <h5 class="banner-cat s-animate-1"></h5>
                                        <h2 class="banner-title s-animate-2">대관령 <br> 눈꽃축제</h2><br>
                                        <h4 class="content s-animate-3">강릉시와 평창군을 가르는 험준한 산맥, 대관령.<br><br>
                                            김유신 장군이 무술을 연마했던 곳도, <br>태조 왕건을 돕기 위한 군대가 지났던 곳도 바로 대관령이다.</h4>
                                        <a class="btn btn-yellow s-animate-4" href="festival/festivalDetails?fetv_no=48">보러 가기</a>
                                    </div>
                                </div>
                                <div class="col-lg-3 col-sm-4">
                                    <div class="video-popup-btn s-animate-video">
                                        <a href="https://www.youtube.com/watch?v=ot_uGCyO5pI" class="video-play-btn mfp-iframe"><i class="fa fa-play"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="banner-slider-item jarallax" style="background-image: url(images/index/slider1.jpg);">
                <div class="container">
                    <div class="row">
                        <div class="col-xl-8 col-lg-9">
                            <div class="row">
                                <div class="col-lg-9 col-sm-8">
                                    <div class="banner-inner">
                                        <h3 style="color: white;">&nbsp스마트 추천</h3>
                                        <h2 class="banner-title s-animate-2">FBTI</h2><br>
                                        <h4 class="content s-animate-3">당신의 취향에 맞는 축제를 추천해 드립니다.<br><br>
                                        
                                        <c:if test="${empty sessionScope.u_id}">
                                            회원 가입 후 스마트한 추천으로 새로운 경험을 해 보세요! </h4>
                                            <a class="btn btn-yellow s-animate-4" href="/sign-up">가입하러 가기</a><br/>   
                                        </c:if>
                                        <c:if test="${not empty sessionScope.u_id}">
                                            ${sessionScope.u_id}님과 비슷한 유저들이<br>
                                            골라준 축제들을 확인해보세요!
                                            </h4>
                                            <a class="btn btn-yellow s-animate-4" href="/smart/smart-page?cont=recomm">추천받으러 가기</a><br/>   
                                        </c:if> 
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- <div class="container">  -->

        <br><br><br>
        <div class="container">
            <div class="banner-slider-controls"><br><br>
                <div class="slider-nav tp-control-nav"></div>
            </div>
        </div>
    </div>
    <!-- banner area end -->
    <!-- upcomming tour start -->
    <div style="padding-top: 20px;" class="explore-world pd-top-142">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-xl-7 col-lg-10">
                    <div class="section-title text-center">
                        <h2 class="title" style="color: darkorange">추위 비켜!</h2><br>
                        <h3 class="title">한겨울에도 뜨거운 겨울축제를 소개합니다</h3>
                    </div>
                </div>
            </div>
            <div class="upcomming-card-slider upcomming-card-slider-3 tp-common-slider-style tps-arrow-left-right"">
                <div class="single-upconing-card">
                    <div>
                        <a href="festival/festivalDetails?fetv_no=48"><img src="images/index/fetv_no_48.png" alt="img"></a>
                    </div>
                    <div class="details text-center">
                       <h3 class="title"><a href="festival/festivalDetails?fetv_no=48">대관령 눈꽃축제</a></h3>
                    </div>
                </div>
                <div class="single-upconing-card">
                    <div>
                        <a href="festival/festivalDetails?fetv_no=53"><img src="images/index/fetv_no_53.png" alt="img"></a>
                    </div>
                    <div class="details text-center">
                       <h3 class="title"><a href="festival/festivalDetails?fetv_no=53">태백산 눈축제</a></h3>
                    </div>
                </div>
                <div class="single-upconing-card">
                    <div>
                        <a href="festival/festivalDetails?fetv_no=42"><img src="images/index/fetv_no_42.png" alt="img"></a>
                    </div>
                    <div class="details text-center">
                       <h3 class="title"><a href="festival/festivalDetails?fetv_no=42">안동 눈빛축제</a></h3>
                    </div>
                </div>
                <div class="single-upconing-card">
                    <div>
                        <a href="festival/festivalDetails?fetv_no=22"><img src="images/index/fetv_no_22.png" alt="img"></a>
                    </div>
                    <div class="details text-center">
                       <h3 class="title"><a href="festival/festivalDetails?fetv_no=22">칠갑산 얼음분수축제</a></h3>
                    </div>
                </div>
                <div class="single-upconing-card">
                    <div>
                        <a href="festival/festivalDetails?fetv_no=29"><img src="images/index/fetv_no_29.PNG" alt="img"></a>
                    </div>
                    <div class="details text-center">
                       <h3 class="title"><a href="festival/festivalDetails?fetv_no=29">왕방마을 겨울축제</a></h3>
                    </div>
                </div>
            </div>
        </div>
    </div><br><br>
    <!-- upcomming tour end -->
    
    <!-- 유저 픽 축제 추천 시작 -->
    <div class="travelus-area pd-top-120 pd-bottom-92 jarallax" style="background-image: url('/images/idx-smart-bg2.jpg');">
        <div class="container">
            <div class="row">
                <div class="col-xl-6 col-lg-8">
                    <div class="section-title section-title-left-border style-two">
                        <h2 style="color: darkorange">FEIDEAR 유저들이</h2><h2>추천해주는 다양한 축제들</h2><br>
                        <c:if test="${empty sessionScope.u_id}">
                            <h4 style="color: white;">로그인이 필요한 서비스입니다.</h4><br>   
                        </c:if>
                        <c:if test="${not empty sessionScope.u_id}">
                            <h4 style="color: white;">${sessionScope.u_id}님과 비슷한 유저들이</h4><br>
                            <h4 style="color: white;">골라준 축제들을 확인해보세요!</h4>
                        </c:if> 
                        
                    </div>
                </div>
            </div>
            <ul class="row single-travelus-wrap-area">
                <li class="col-lg-2 col-sm-4 single-travelus-wrap">
                    <div class="single-travelus text-center">
                        <div class="icons">
                            <img src="images/icons/27.png" alt="img">
                        </div>
                        <h4>축제 검색</h4>
                    </div>
                </li>
                <li class="col-lg-2 col-sm-4 single-travelus-wrap">
                    <div class="single-travelus text-center">
                        <div class="icons">
                            <img src="images/icons/28.png" alt="img">
                        </div>
                        <h4>맞춤 추천</h4>
                    </div>
                </li>
                <li class="col-lg-2 col-sm-4 single-travelus-wrap">
                    <div class="single-travelus text-center">
                        <div class="icons">
                            <img src="images/icons/3.png" alt="img" style="width:30%;">
                        </div>
                        <h4>다양한 리뷰</h4>
                    </div>
                </li>
                <li class="col-lg-5 offset-xl-1 single-travelus-wrap">
                    <c:if test="${empty sessionScope.u_id}">
                        <a class="button signUp-btn" href="#"><img class="icons" src="images/others/userpick3.jpg" alt="img" style="border-radius: 50%; width: 35vw;"></a>
                    </c:if>
                    <c:if test="${not empty sessionScope.u_id}">
                        <a class="icons button " href="/smart/smart-page?cont=recomm"><img class="icons" src="images/others/userpick3.jpg" alt="img" style="border-radius: 50%; width: 35vw;"></a>
                    </c:if> 
                </li>
            </ul>
            <!-- package area end -->
            <div class="package-area pd-top-105">
                <div class="container">
                    <div class="row">
                        <div class="col-xl-6 col-lg-8">
                            <div class="section-title section-title-left-border style-two">
                                <h2 class="title">인기있는 축제,</h2> <h2 style="color: darkorange">궁금하지 않으세요?</h2><br>
                                <h4 style="color: white;">사람들이 많이 찾는 키워드가 무엇인지 확인해보세요!</h4><br>
                            </div><br>
                        </div>
                    </div>
                    
                        
                        
                    </div>
                </div>
            </div>
            <!-- package area end -->
        </div>
    </div>
    <!-- 유저 픽 축제 추천 끝 -->
    <!-- 인기 검색어 시작 -->
    <div class="row justify-content-center">
        <div class="col-xl-7 col-lg-10">
            <div  style="margin-top: 150px;" class="section-title text-center">
                <h2 class="title" style="color: darkorange">Trend Now</h2><br>
            </div>
        </div>
    </div>
    <iframe src="http://3.35.210.75:5601/app/dashboards#/view/3a281640-97d4-11ed-9f07-8dd3f249f4a0?embed=true&_g=(filters%3A!()%2CrefreshInterval%3A(pause%3A!t%2Cvalue%3A0)%2Ctime%3A(from%3Anow-15m%2Cto%3Anow))" height="770px" width="100%"></iframe>
	<br>
	
    <!-- 인기 검색어 끝 -->
    <!-- client area start -->
    <div class="client-area pd-top-108">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-xl-6 col-lg-8">
                    <div class="section-title text-center">
                        <h2 class="title">인 기 글</h2>
                        <p>🧡 지금 사용자들에게 인기 있는 리뷰를 확인해보세요 🧡</p>
                    </div>
                </div>
            </div>
            <div class="client-slider tp-common-slider-style">
                <c:forEach items="${getRank3}" var="getRank3">
                    <a href="/reviews/getReview?rv_no=${getRank3.rv_no}">
                        <div class="single-client-card" style="border-radius: 10px; height:300px;">
                            <div class="quote"><i class="fa fa-thumb-tack" aria-hidden="true"></i></div>
                            <p class="content-text">${getRank3.rv_content}</p>
                            <div class="media" style="position:absolute; bottom:30px;">
                                <div class="media-left">
                                    <c:if test="${getRank3.file_path != null}">
                                        <img src="${getRank3.file_path}" alt="img">
                                    </c:if>
                                    <c:if test="${getRank3.file_path == null}">
                                        <img src="images/hearts.png" alt="img">
                                    </c:if>
                                </div>
                                <div class="media-body">
                                    <h4>${getRank3.u_id}</h4>
                                    <span>${getRank3.u_comment}</span>
                                </div>
                            </div>
                        </div> 
                    </a>
                </c:forEach> 
                
                
                
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
                        <h2 class="title">페이디어 매거진</h2>
                        <p>페이디어의 독자적인 매거진을 만나보세요!</p>
                    </div>
                </div>
            </div>
            
            <div class="blog-slider tp-common-slider-style tps-arrow-left-right">
            <c:forEach items="${mm}" var="mm">
                <div class="blog-slider-item">
                        <div class="single-blog single-blog-wrap style-four">
                            <div class="thumb single-blog-left-wrap"
                            style="width:16.5em; height:16.5em; display: flex; justify-content: center; align-items: center;">
                                <c:if test="${mm.file_path != null}">
                                    <img src="${mm.file_path}" alt="blog">
                                </c:if>
                                <c:if test="${mm.file_path == null}">
                                    <img src="images/blog/11.png" alt="blog">
                                </c:if>
                            </div>
                            <div class="single-blog-details single-blog-right-wrap">
                                <p class="date">${mm.mgz_regdate}</p>
                                <h4 class="word2">${mm.mgz_title}</h4>
                                <p class="word">${mm.mgz_content}</p>
                                <a class="btn btn-yellow" href="/magazine-details?mgz_no=${mm.mgz_no}"><span>Read More<i class="la la-arrow-right"></i></span></a>
                            </div>
                        </div>
                </div>
            </c:forEach>

            </div>
        </div>
    </div>
    <!-- blog area End -->
    

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
  	<!-- footer.jsp -->
  	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>