<%@ page language="java" contentType="text/html; charset=UTF-8"     pageEncoding="UTF-8"%>


	<!-- header 시작 -->
	<%@ include file='../header.jsp' %>
    <!-- header 끝 -->

    <style>
        .title, .content {
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
	</style>

    <!-- breadcrumb area start -->
    <div class="breadcrumb-area style-three jarallax" style="background-image:url(../images/index/breadcrumb.jpg);">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb-inner">
                        <h1 class="page-title">축제 일기</h1>
                        <ul class="page-list">
                            <li><a href="index">Home</a></li>
                            <li>내가 방문했던 축제는 ?</li>
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

                <!-- 리뷰 목록 시작 -->
                <div class="col-lg-8">
                    <div class="gallery-filter-area row justify-content-center">
                        
                        <!-- 왼쪽 리뷰 목록 시작 (홀수) -->
                        <c:forEach items="${reviewList}" var="reviews">
                            <div class="col-lg-6 col-md-6 tp-gallery-item">
                                <form action="" class="tp-form-wrap" method="post">
                                        <div class="single-blog">
                                            <!-- 썸네일 왼쪽 상단 태그 시작 -->
                                            <div class="thumb">
                                                <c:if test="${reviews.file_path != null}">
                                                    <img src="${reviews.file_path}" alt="blog" style="width: 526px; height: 320px;">
                                                </c:if>
                                                <c:if test="${reviews.file_path == null}">
                                                    <img src="/images/sticky-logo.png" alt="blog" style="width: 526px; height: 320px;">
                                                </c:if>
                                                <a class="tag" href="#">NEW</a>
                                            </div>
                                            <!-- 썸네일 왼쪽 상단 태그 끝 -->

                                            <!-- 날짜, 제목, 내용 시작 -->
                                            <div class="single-blog-details">
                                                    <p class="date" name="rv_regdate">${reviews.rv_regdate}</p>
                                                    <h4 class="title"><a name="rv_title" href="getReview?rv_no=${reviews.rv_no}">${reviews.rv_title}</a></h4>
                                                    <p class="content" name="rv_content">${reviews.rv_content}</p>
                                                    <h8><i class="fa fa-eye"></i>&nbsp;&nbsp;${reviews.rv_cnt}</h8>
                                                    <a class="btn-read-more" href="getReview?rv_no=${reviews.rv_no}"><span style="padding-left:20em;">더 보기<i class="la la-arrow-right"></i></span></a>
                                            </div>
                                            <!-- 날짜, 제목, 내용 끝 -->
                                        </div>
                                </form>
                            </div>
                            <div class="gallery-sizer col-3" style="z-index: -123165465;"></div>
                        </c:forEach>
                        <!-- 왼쪽 리뷰 목록 끝 -->

                    </div>
                    
                    <!-- 페이징 시작 -->
                    <div class="row">
                        <div class="col-lg-12  text-md-center text-left">
                            <div class="tp-pagination text-md-center text-left d-inline-block mt-4">
                                <ul>
                                	<c:if test="${pageMaker.prev}">
                                    	<li><a class="prev page-numbers" href="/reviews/getReviewList${pageMaker.makeQuery(pageMaker.startPage - 1)}"><i class="la la-long-arrow-left"></i></a></li>
                                	</c:if>
                                	<c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="idx">                                	
                                    <li><a href="/reviews/getReviewList${pageMaker.makeQuery(idx)}">
                                    	<!--현재 파라미터로 넘겨받은 페이지의 숫자가 생성되는 숫자와 같으면(현재 페이지) -->
                                    	<c:if test="${param.page eq idx}">
                                    	<span class="page-numbers current">${idx}</span>
                                    	</c:if>
                                    	
                                    	<!--현재 파라미터로 넘겨받은 페이지의 숫자가 생성되는 숫자와 다르면(나머지 페이지) -->
                                    	<c:if test="${param.page ne idx}">
                                    	<span class="page-numbers">${idx}</span>
                                    	</c:if>
                                    	
                                    	</a></li>
                                	</c:forEach>
                                    <c:if test="${pageMaker.next && pageMaker.endPage > 0}">
                                    	<li><a class="next page-numbers" href="/reviews/getReviewList${pageMaker.makeQuery(pageMaker.endPage + 1)}"><i class="la la-long-arrow-right"></i></a></li>
                                	</c:if> 
                                </ul>                          
                            </div>
                        </div>
                    </div>
                    <!-- 페이징 끝 -->
                </div>
                <!-- 리뷰 목록 끝 -->

                <!-- 축제 일기 우측 사이드바 시작 -->
                <div class="col-lg-4"  id="select-category">
                    <aside class="sidebar-area sidebar-area-4">
                        <div class="widget widget_search bg-none pd-none">
                          	<!-- 축제 일기(리뷰 작성 버튼) 시작 -->
                            <form class="write-form" action="/reviews/insertReview">
                                <c:if test="${not empty sessionScope.u_id}">
                                    <div class="form-group">
                                        <button class="submit-btn" type="submit" ><a href="/reviews/insertReview">나의 일기 쓰러 가기</a>&nbsp;<img src="/images/pencil_24.png" ></button>
                                    </div>
                                </c:if>
                            </form></br>
                          	<!-- 축제 일기(리뷰 작성 버튼) 끝 -->
							
							<!-- 축제명 검색 시작 -->
                            <form class="search-form" action="getReviewList">
                                <div class="form-group">
                                    <input type="text" name="searchKeyword" placeholder="축제 일기 제목" >
                                </div>
                                <button class="submit-btn" type="submit" style="background: #254a79;"><i class="ti-search"></i></button>
                            </form>
							<!-- 축제명 검색 끝 -->
                        </div>
                        
                        
                        <!-- 인기글 시작 -->
                        <div class="widget widget-recent-post">
                            <h2 class="widget-title">인 기 글</h2>
                            <ul>
                                <form action="getReview?rv_no=${reviews.rv_no}" class="tp-form-wrap" method="post">
                                    <c:forEach items="${rankList}" var="rank">
                                         <li>
                                            <div class="media">
                                                <div id="media-body" class="media-body" style='display:block;'>
                                                    <img src="${rank.file_path}" alt="blog" style="">
                                                </div>
                                                <div class="media-body">
                                                    <b><span class="post-date">${rank.rv_regdate}</span></b>
                                                    <h6 class="title"><a href="getReview?rv_no=${rank.rv_no}">${rank.rv_title}</a></h6>
                                                </div>
                                            </div>
                                        </li>
                                    </c:forEach>
                                </form>
                            </ul>
                        </div>
                        <!-- 인기글 끝 -->
                        
                        <!-- 인기 태그 시작 -->
                        <div class="widget widget_tag_cloud">
                            <h2 class="widget-title">인기 태그</h2>
                            <div class="tagcloud">
                                <a href="#">눈꽃</a>
                                <a href="#">데이트</a>
                                <a href="#">별빛</a>
                                <a href="#">사랑</a>
                                <a href="#">빙어</a>
                            </div>
                        </div>
                        <!-- 인기 태그 끝 -->
                        
                        <!-- 광고 배너 시작 -->
                            <div class="widget widget_tag_cloud">
	                            <h2 class="widget-title">광고 배너</h2>
	                           <a href="#"><img src="/images/others/01.png" alt="img"></a>
                            </div>
                        <!-- 광고 배너 끝 -->
                    </aside>
                </div>
                <!-- 축제 일기 우측 사이드바 끝 -->
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

</body>
</html>