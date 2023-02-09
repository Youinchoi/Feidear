<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>  

 	<!-- header -->
     <%@ include file='../header.jsp' %>
 	
    <!-- breadcrumb area start -->
   <div class="breadcrumb-area jarallax" style="background-image:url(/images/index/breadcrumb.jpg);">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb-inner">
                        <h1 class="page-title">축제 일기</h1>
                        <ul class="page-list">
                            <li><a href="/index">Home</a></li>
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
                    <div class="single-blog mb-0">
                        <div class="thumb">
                            <img src="${reviews.r_file}" alt="blog">
                        </div>
                        <div class="single-blog-details">
                            <input type="hidden" name="rv_no" id="rv_no" value="${reviews.rv_no}">
                            <div>
                                    <span class="date mb-0" name="rv_regdate">작성일 : ${reviews.rv_regdate}</span>
                                    <p style="margin-left:50em;">조회수 : ${reviews.rv_cnt}</p>
                                </div>
                                <h3 class="title" name="rv_title" id="rv_title">${reviews.rv_title}</h3>
                                <p class="content mb-0" name="rv_content">${reviews.rv_content}</p>
                            </div>
                        </div>
                        
                        <!-- 사진 슬라이드 -->
                        <div class="client-area pd-top-108" style="margin-bottom: 3%;">
                            <div class="container">
                                <div class="client-slider tp-common-slider-style">
                                    <c:if test="${not empty reviews.r_file}">
                                        <div class="single-client-card" style="border-radius: 10px; height:350px; padding:40px 20px 15px 20px;">
                                            
                                            <div class="media">
                                                <img src="${reviews.r_file}" alt="blog" style="display: block; margin: auto;">
                                            </div>
                                        </div> 
                                    </c:if>

                                    <c:if test="${not empty reviews.file_path2}">
                                        <div class="single-client-card" style="border-radius: 10px; height:350px; padding:40px 20px 15px 20px;">
                                            
                                            <div class="media">
                                                <img src="${reviews.file_path2}" alt="blog" style="display: block; margin: auto;">
                                            </div>
                                        </div> 
                                    </c:if>

                                    <c:if test="${not empty reviews.file_path3}">
                                        <div class="single-client-card" style="border-radius: 10px; height:350px; padding:40px 20px 15px 20px;">
                                            
                                            <div class="media"> 
                                                <img src="${reviews.file_path3}" alt="blog" style="display: block; margin: auto;">
                                            </div>
                                        </div> 
                                    </c:if>
     
                                    <c:if test="${not empty reviews.file_path4}">
                                        <div class="single-client-card" style="border-radius: 10px; height:350px; padding:40px 20px 15px 20px;">
                                            
                                            <div class="media"> 
                                                <img src="${reviews.file_path4}" alt="blog" style="display: block; margin: auto;">
                                            </div>
                                        </div> 
                                    </c:if>
                                    
                                </div>
                            </div>
                        </div>
                        
                        <!-- 사진 슬라이드 끝 -->
                        
                        
                        <nav class="navigation post-navigation single-post-navigation">
                            <div class="nav-links tp-control-nav">
                            <div class="row" style="margin-top: 7em;">
                                <div class="col-xl-5 col-lg-6 col-6 ">
                                    <div class="nav-previous w-100">
                                        <a href="/reviews/getReview?rv_no=${reviews.rv_no-1}">
                                            <span class="slick-arrow float-left" id="last_review"><i class="la la-long-arrow-left"></i></span>
                                            <span class="nav-post-text pl-2 float-left">이전 리뷰 : </span>
                                            <h4 class="float-left">이전 리뷰 보기</h4>
                                        </a> 
                                    </div>
                                </div>
                                <div class="col-xl-5 col-lg-6 col-6  offset-xl-2">
                                    <div class="nav-next w-100">
                                        <a href="/reviews/getReview?rv_no=${reviews.rv_no+1}">
                                            <span class="pr-2 nav-post-text">다음 리뷰 : </span>
                                            <span class="slick-arrow float-right"><i class="la la-long-arrow-right"></i></span>
                                            <h4 class="float-right">다음 리뷰 보기</h4>
                                        </a> 
                                    </div>
                                </div>
                            </div>
                        </div>
                    </nav>

                    <!-- 리뷰 작성자 시작 author-area-start -->
                    <div class="author-area media">
                        <div class="media-left">
                            <img src="${reviews.file_path}" alt="img">
                        </div>
                        <div class="media-body">
                            <h4>리뷰 작성자 정보</h4>
                            <h7><b>리뷰 작성자</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ${reviews.u_id}</h7>
                            <p><b>리뷰 작성자 소개</b>&nbsp;&nbsp;&nbsp;&nbsp;${reviews.u_comment}</p>
                            <ul class="social-icon style-three">
                            </ul>
                        </div>
                    </div>
                    <!-- 리뷰 작성자 끝 author-area-end -->
                    
                    <!-- 댓글 시작 comments-area-start -->
                    <div class="comments-area">
                        <h4 class="comments-title">댓 글</h4>
                        <ul class="comment-list" id="rv_cmtList">
                            <input type="hidden" name="rv_cmt_no" value="${sessionScope.rv_cmt_no}">
                            <li>
                                <div class="single-comment-wrap">
                                    
                                    <div class="thumb">
                                        <img src="${user.file_path}" alt="img">
                                    </div>
                                    <div class="content">
                                        <h4 class="title">${sessionScope.u_id}</h4>
                                        <span class="date">${list.rv_cmt_regdate}</span>
                                        <p>${list.rv_cmt}</p>
                                        <!-- <a href="#" class="reply btn btn-yellow"><span><i class="fa fa-reply"></i>답글 달기</span></a> -->
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                    <!-- 댓글 끝 comments-area-end -->
                    
                    <!-- blog-comment-area start -->
                    <!-- 댓글 작성 폼 시작 -->
                    <c:if test="${empty sessionScope.u_id}">
                        <div class="blog-comment-area" style="text-align:center; padding-top:2.7vw;">
                            <h4>로그인이 필요한 서비스입니다.</h4>
                        </div>
                    </c:if>
                    <c:if test="${not empty sessionScope.u_id}">
                        <div class="blog-comment-area">
                            <form class="tp-form-wrap bg-gray tp-form-wrap-one" action="">
                                <h4 class="single-page-small-title">댓글 작성하기</h4>
                                <div class="row">
                                    
                                    <div class="col-lg-6 col-md-6">
                                        <label class="single-input-wrap">
                                            <input type="hidden" name="u_no" value="${sessionScope.u_no}">
                                            <span class="single-input-title">아이디 : ${sessionScope.u_id}</span>
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
                    </c:if>
                    <!-- 댓글 작성 폼 끝 -->
                    <!-- blog-comment-area start -->
                </div>
                
                <div class="col-lg-4">
                    <aside class="sidebar-area sidebar-area-4">
                        <!-- 리뷰 수정/삭제 버튼 시작 -->
                        <div class="widget widget_search bg-none pd-none">
                            <c:if test="${reviews.u_no eq sessionScope.u_no}">
                                <div class="form-group">
                                    <form action="updateReview?rv_no=${reviews.rv_no}" class="tp-form-wrap" method="post">
                                        <button class="rv_modify-btn" type="submit" style="border: none; color: #6A5F5F; float: left; width: 25%; align-items: right; margin-left: 5em; margin-right: 2em; background-color: #F0B153; border-radius: 5px;">수정&nbsp&nbsp<i class="fa fa-pencil" aria-hidden="true"></i></button>
                                    </form> 
                                    <form action="deleteReview?rv_no=${reviews.rv_no}&u_no=${sessionScope.u_no}" class="tp-form-wrap" method="post">
                                        <button class="rv_delete-btn" type="delete" style="border: none; color: #6A5F5F; width: 25%; border-radius: 5px;">삭제 &nbsp&nbsp<i class="fa fa-trash" aria-hidden="true"></i></button>
                                    </form>
                                </div>
                            </c:if>
                        </div>
                        <!-- 리뷰 수정/삭제 버튼 끝 -->

                        <!-- 인기글 시작-->
                        <div class="widget widget_categories">
                            <h2 class="widget-title">인 기 글</h2>
                            <div>
	                            <ul>
                                    <form action="getReview?rv_no=${reviews.rv_no}" class="tp-form-wrap" method="post">
                                         <c:forEach items="${rankList}" var="rank">
                                            <li>
                                                <div class="media">
                                                    <div id="media-body" class="media-body" style='display:block; width: 105px; height:59px auto;'>
                                                        <c:if test="${rank.file_path != null}">
                                                            <img src="${rank.file_path}" alt="blog">
                                                        </c:if>
                                                        <c:if test="${rank.file_path == null}">
                                                            <img src="/images/sticky-logo.png" alt="blog" style="width: 105px; height:59px;">
                                                        </c:if>
                                                    </div>
                                                    <div class="media-body">
                                                        <h7 class="post-date"><b>${rank.rv_regdate}</b></h7>
                                                        <h6 class="title"><a href="getReview?rv_no=${rank.rv_no}">${rank.rv_title}</a></h6>
                                                    </div>
                                                </div>
                                            </li>
                                        </c:forEach>
                                    </form>
	                            </ul>
                        	</div>
                        </div>
                        <!-- 인기글 끝 -->

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
    
    <script>
        var b= $('#rv_title').text();
        if(b == ''){
            Swal.fire({
                title : '접근 불가',
                text : '존재하는 게시글이 없습니다!',
                icon : 'error',
                confirmButtonColor: '#d33'
            }).then((result) => {
                window.self.location = "/reviews/getReviewList";			
            })//then
        }//if
	</script>

    <!-- footer -->
    <jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>