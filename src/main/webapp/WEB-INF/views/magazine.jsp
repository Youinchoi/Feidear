<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

	<!-- header.jsp -->
	<%@ include file='header.jsp' %>
	<!-- header.jsp 끝 -->

    <!-- 매거진 상단바 제목 밑 글 area start -->
    <div class="breadcrumb-area jarallax" style="background-image:url(images/bg/1.png);">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb-inner">
                        <h1 class="page-title">Magazine</h1>
                        <ul class="page-list">
                           <li>페이디어 자체 매거진</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- 매거진 상단바 제목 밑 글 area End -->

    <!-- 매거진 DB 목록 출력 start -->
    <div class="blog-list-area pd-top-120">
        <div class="container">
            <div class="row justify-content-center">
           <c:forEach items="${mgzList}" var="mgzList">
                <div class="col-lg-4 col-md-6">
                    <div class="single-blog">
                        <div class="thumb">
                        	<c:if test="${mgzList.file_path != null}">
                            	<img src="${mgzList.file_path}" alt="blog" style="width:526px; height:280px;">
							</c:if>
                        	<c:if test="${mgzList.file_path == null}">
                            	<img src="images/blog/1.png" alt="blog" style="width:526px; height:280px;">
							</c:if>
				                            
                            <a class="tag" href="#">NEW</a>
                        </div>
                        <div class="single-blog-details">
                            <p class="date">${mgzList.mgz_regdate}</p>
                            <h4 class="title"><a href="/magazine-details?mgz_no=${mgzList.mgz_no}">${mgzList.mgz_title}</a></h4>
                            <p class="content">${mgzList.mgz_content}</p>
                            <a class="btn-read-more" href="/magazine-details?mgz_no=${mgzList.mgz_no}"><span>Read More<i class="la la-arrow-right"></i></span></a>
                        </div>
                    </div>
                </div>
            </c:forEach>
            </div>
            
            <!-- 페이징 시작 -->
                    <div class="row">
                        <div class="col-lg-12  text-md-center text-left">
                            <div class="tp-pagination text-md-center text-left d-inline-block mt-4">
                                <ul>
                                	<c:if test="${pageMaker.prev}">
                                    	<li><a class="prev page-numbers" href="magazine${pageMaker.makeQuery(pageMaker.startPage - 1)}"><i class="la la-long-arrow-left"></i></a></li>
                                	</c:if>
                                	<c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="idx">                                	
                                    <li><a href="magazine${pageMaker.makeQuery(idx)}">
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
                                    	<li><a class="next page-numbers" href="magazine${pageMaker.makeQuery(pageMaker.endPage + 1)}"><i class="la la-long-arrow-right"></i></a></li>
                                	</c:if> 
                                </ul>                          
                            </div>
                        </div>
                    </div>
                    <!-- 페이징 끝 -->
            
        </div>
    </div>
    <!-- 매거진 DB 목록 출력 End -->
    
<!-- newslatter area Start ( 공백용 ) -->
<div class="newslatter-area pd-top-120">
    <div class="container">
        <div class="newslatter-area-wrap border-tp-solid">
        </div>
    </div>
</div>
<!-- newslatter area End -->
    
    

    <!-- back to top area start -->
    <div class="back-to-top">
        <span class="back-top"><i class="fa fa-angle-up"></i></span>
    </div>
    <!-- back to top area end -->


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