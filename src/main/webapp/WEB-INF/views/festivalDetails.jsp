<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%String pjName = "/Feidear";%>

<jsp:include page="header.jsp"></jsp:include>


    <!-- breadcrumb area start -->
    <div class="breadcrumb-area style-two jarallax" style="background-image:url(images/bg/1.png);">
        <div class="container">
            <div class="row">
                <div class="col-lg-12"><br><br><br>
                    <div class="breadcrumb-inner">
                        <h1 class="page-title">축제 상세</h1><br>
                        <ul class="page-list">
                            <li><a href="index">Home</a></li>
                            <li>Festival Details</li>
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
                        
                        <!-- gallery-item
                        <div class="tp-gallery-item col-md-5 col-sm-6 mb-10">
                            <div class="tp-gallery-item-img">
                                <div class="thumbnails">
                                    <img src="../images/tour-details/1.png" alt="image">
                                    <div class="video-popup-btn">
                                        <a href="https://www.youtube.com/watch?v=c7XEhXZ_rsk" class="video-play-btn mfp-iframe" tabindex="0"><i class="fa fa-play"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="tp-gallery-item col-lg-6 col-md-7 col-sm-10">
                            <div class="tp-gallery-item-img">
                                <a href="#" data-effect="mfp-zoom-in">
                                    <img src="../images/tour-details/${view.fetv_image}" alt="image">
                                </a>
                            </div>
                        </div>-->
                        
                    </div>
                    <div class="row">
                        <form action="viewFestival" id="viewFestival" name="viewFestival" method="get" style="width: 150%;">
                        <div class="col-xl-3 col-lg-4">
                            <h4 type="hidden" name="fetv_no" style="color: aliceblue;"></h4>
                            <div class="details">
                                <c:if test="${not empty view.fetv_startdate}">
                                    <b style="font-size: 1.3em; color: darkorange;"><i class="fa fa-calendar-o"></i>&nbsp&nbsp&nbsp${view.fetv_startdate} &nbsp&nbsp~&nbsp&nbsp ${view.fetv_enddate}</b><br>
                                </c:if>
                                <c:if test="${empty view.fetv_startdate}">
                                    <b style="font-size: 1.3em; color: aqua;"><i class="fa fa-exclamation-triangle"></i>&nbsp&nbsp&nbsp일정이 업데이트 될 예정입니다</b>
                                </c:if><br>
                                
                                <h4 style="font-size: 3.5em; width: 30em;">${view.fetv_name}</h4>
                            </div>
                        </div><br>
                        <div class="col-xl-9 col-lg-8">
                            <div class="book-list-warp">
                                <p class="book-list-content" style="font-size: 1.5em;">${view.fetv_short}</p><br>
                            </div><br>
                            <ul class="tp-list-meta border-tp-solid">
                                <p class="location mb-0" style="font-size: 1.3em; width: 100%; color: white;"><i class="fa fa-map-marker"></i>&nbsp ${view.fetv_place}</p><br>
                                
                                <c:if test="${not empty view.fetv_time}">
                                    <li class="ml-0" style="font-size: 1.2em;"><i class="fa fa-clock-o"></i>&nbsp&nbsp${view.fetv_time}</li>
                                </c:if>
                                <c:if test="${empty view.fetv_time}">
                                    <li class="ml-0" style="font-size: 1.2em;"><i class="fa fa-clock-o"></i>&nbsp&nbsp미정</li>
                                </c:if>

                                <c:if test="${not empty view.fetv_tel}">
                                    <li class="ml-0" style="font-size: 1.2em;"><i class="fa fa-phone"></i>&nbsp&nbsp${view.fetv_tel}</li>
                                </c:if>
                                <c:if test="${empty view.fetv_tel}">
                                    <li class="ml-0" style="font-size: 1.2em;"><i class="fa fa-phone"></i>&nbsp&nbsp홈페이지 참조</li>
                                </c:if>

                                <c:if test="${not empty view.fetv_homePage}">
                                    <li class="ml-0" style="font-size: 1.2em;"><i class="fa fa-info-circle"></i>&nbsp&nbsp${view.fetv_homePage}</li>
                                </c:if>
                                <c:if test="${empty view.fetv_homePage}">
                                    <li class="ml-0" style="font-size: 1.2em;"><i class="fa fa-info-circle"></i>&nbsp&nbsp등록된 정보가 없습니다</li>
                                </c:if>

                                <c:if test="${not empty view.fetv_fee}">
                                    <li class="ml-0" style="font-size: 1.2em;"><i class="fa fa-credit-card-alt"></i>&nbsp&nbsp${view.fetv_fee}</li>
                                </c:if>
                                <c:if test="${empty view.fetv_fee}">
                                    <li class="ml-0" style="font-size: 1.2em;"><i class="fa fa-credit-card-alt"></i>&nbsp&nbsp등록된 정보가 없습니다</li>
                                </c:if><br><br>

                                <i style="font-size: 1.2em; color: darkorange;">${view.fetv_tag}</i>
                            </ul>
                        </div>  
                        </form> 
                    </div>
                </div>
            </div>
        </div>

        <div>
            <div class="container">
                <p class="addToWish">
                    <button class="btn btn-new"><span>CSS는 나중에 보낼게욥</span></button>
                </p>  
                    
                   
            </div>
        </div><br><br>


        <div class="container">
            <div class="row">
                <div class="col-lg-8">
                    <div class="tour-details-wrap">
                        <h4 class="single-page-small-title" style="font-size: 2.7em;">상세 정보</h4><br>
                        <p style="font-size: 22px;">${view.fetv_info}</p>
                        <br>
                        <div class="package-included-location">
                            <h4 class="single-page-small-title" style="font-size: 2.7em;">축제 사진</h4><br>
                            <div>
                                <img src="/images/others/damgom.jpg">
                                <img src="/images/others/damgom.jpg">
                            </div><br><br>
                            <h4 class="single-page-small-title" style="font-size: 2.7em;">추천 코스</h4><br>
                            <div class="row">
                                <div class="col-lg-4 col-md-4">
                                    <div class="single-blog">
                                        <div class="p-list">
                                            <div class="list">1</div>
                                            <p>맛집</p>
                                        </div>
                                        <div class="thumb">
                                            <img src="/images/blog/8.png" alt="blog">
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
                                            <p>&nbsp</p>
                                        </div>
                                        <div class="thumb">
                                            <img src="/images/blog/1.png" alt="blog">
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
                                            <p>관광명소</p>
                                        </div>
                                        <div class="thumb">
                                            <img src="/images/blog/9.png" alt="blog">
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
                        <div class="service-location-map">
                            <h4 class="single-page-small-title" style="font-size: 2.7em; color: darkorange;">Service Location</h4>
                            <div class="service-location-map">
                                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d649788.5753409272!2d-0.5724199684037448!3d52.92186340524542!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x487604d94c3b82ab%3A0x62077a554c8e9a8e!2sPetty%20France%2C%20Westminster%2C%20London%2C%20UK!5e0!3m2!1sen!2sbd!4v1572346566908!5m2!1sen!2sbd"></iframe>
                            </div>
                        </div><br><br>
                        <div class="comments-area tour-details-review-area">
                            <h4 class="comments-title">Reviews</h4>
                            <ul class="comment-list mb-0">
                                <li>
                                    <div class="single-comment-wrap">
                                        <div class="thumb">
                                            <img src="/images/client/3.png" alt="img">
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
                <!-- 사이드 바 광고배너 -->
                <div class="col-lg-4">
                    <div class="sidebar-area sidebar-area-4">
                        <div class="widget_ads">
                            <a href="#"><img class="w-100" src="/images/others/01.png" alt="img"></a>
                        </div><br>
                        <div class="widget_ads">
                            <a href="#"><img class="w-100" src="/images/others/01.png" alt="img"></a>
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
    
    <!-- Additional plugin js -->
    <script src="/js/jquery-2.2.4.min.js"></script>
    <script src="/js/popper.min.js"></script>
    <script src="/js/bootstrap.min.js"></script>
    <script src="/js/jquery.magnific-popup.js"></script>
    <script src="/js/owl.carousel.min.js"></script>
    <script src="/js/wow.min.js"></script>
    <script src="/js/slick.js"></script>
    <script src="/js/waypoints.min.js"></script>
    <script src="/js/jquery.counterup.min.js"></script>
    <script src="/js/imagesloaded.pkgd.min.js"></script>
    <script src="/js/isotope.pkgd.min.js"></script>
    <script src="/js/swiper.min.js"></script>
    <script src="/js/jquery.nice-select.min.js"></script>
    <script src="/js/jquery-ui.min.js"></script>
    <script src="/js/jarallax.min.js"></script>

    <!-- main js -->
    <script src="/js/main.js"></script>

    <script type="text/javascript">
        $(".addWish_btn").click(function(){
           alert("hi");
         var gdsNum = $("#gdsNum").val();
         var cartStock = $(".numBox").val();
            
         var data = {
           gdsNum : gdsNum,
           cartStock : cartStock
           };
         
         $.ajax({
          url : "/shop/view/addWish",
          type : "post",
          data : data,
          success : function(result){
           alert("카트 담기 성공");
           $(".numBox").val("1");
          },
          error : function(){
           alert("카트 담기 실패");
          }
         });
        });
       </script>
    
    <jsp:include page="footer.jsp"></jsp:include>

</body>
</html>