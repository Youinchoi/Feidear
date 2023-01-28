<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

	<%String pjName = "/Feidear";%>
 
	<!-- header -->
	<%@ include file='header.jsp' %>

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


    <!-- 매거진 상세 상단 area start -->
    <div class="breadcrumb-area jarallax" style="background-image:url(images/bg/banner.png);">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb-inner">
                        <h1 class="page-title">매거진 상세보기</h1>
                        <ul class="page-list">
                            <li><a href="index">Home</a></li>
                            <li>상세보기</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- 매거진 상세 상단 area End -->

    <!-- 매거진 상세 내용 area start -->
    <div class="blog-details-area pd-top-120">
        <div class="container">
            <div class="row">
                <div class="col-lg-8">
                    <div class="single-blog mb-0">
                        <div class="thumb">
                          <c:if test="${not empty mgz.file_path}">
                            <img src="${mgz.file_path}" alt="blog">                          
                          </c:if>
                          <c:if test="${empty mgz.file_path}">
                            <img src="/images/bg/banner.png" alt="blog">                          
                          </c:if>
                        </div>
                        <div class="single-blog-details">
                            <p class="date mb-0">${mgz.mgz_regdate}</p>
                            <h3 class="title" id="mgz_title">${mgz.mgz_title}</h3>
                        </div>
                    </div>
                    <!-- 매거진 제목-start -->
                    <blockquote class="blockquote tp-blockquote bg-dark-blue">
                      <p class="mb-0">${mgz.mgz_content}</p>
                    </blockquote>
                    <!-- 매거진 제목-end -->
                    <h4 class="single-page-small-title mt-5">매거진 상세설명 관련 사진</h4>

                    <!-- 매거진 상세설명-start -->
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
                    <!-- details-gallery-end -->
                    <p>위에 사진에서 보여준 매거진 내용</p>

                    <div class="row tag-share-area">
                        <div class="col-xl-5 col-lg-6 offset-xl-1">

                        </div>
                    </div>
                    <nav class="navigation post-navigation single-post-navigation">
                        <div class="nav-links tp-control-nav">
                            <div class="row">
                                <div class="col-xl-5 col-lg-6 col-6 ">
                                    <div class="nav-previous w-100">
                                        <a href="/magazine-details?mgz_no=${mgz.mgz_no-1}">
                                            <span class="slick-arrow float-left"><i class="la la-long-arrow-left"></i></span>
                                            <span class="nav-post-text pl-2 float-left">이전 매거진</span>
                                            <h4 class="float-left">이전 매거진 제목</h4>
                                        </a> 
                                    </div>
                                </div>
                                <div class="col-xl-5 col-lg-6 col-6  offset-xl-2">
                                    <div class="nav-next w-100">
                                        <a href="/magazine-details?mgz_no=${mgz.mgz_no+1}">
                                            <span class="pr-2 nav-post-text">다음 매거진</span>
                                            <span class="slick-arrow float-right"><i class="la la-long-arrow-right"></i></span>
                                            <h4 class="float-right">다음 매거진 제목</h4>
                                        </a> 
                                    </div>
                                </div>
                            </div>
                        </div>
                    </nav>

                    <!-- 태그 목록-area start -->
                </div>
                <div class="col-lg-4">
                    <aside class="sidebar-area sidebar-area-4">
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
    <!-- 태그 목록 area End -->
    
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
    
        <script>
			var b= $('#mgz_title').text();
			if(b == ''){
				Swal.fire({
            		title : '접근 불가',
                    text : '존재하는 게시글이 없습니다!',
                    icon : 'error',
                    confirmButtonColor: '#d33'
	            }).then((result) => {
					window.self.location = "/magazine";			
				})//then
			}//if
	</script>

</body>
</html>