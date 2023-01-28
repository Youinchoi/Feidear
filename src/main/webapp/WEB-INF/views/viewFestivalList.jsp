<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%String pjName = "/Feidear";%>
    
  <jsp:include page="header.jsp"></jsp:include>


    <!-- breadcrumb area start -->
    <div class="breadcrumb-area style-two jarallax" style="background-image:url(images/index/breadcrumb.jpg);">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb-inner">
                        <h1 class="page-title">대한민국 축제 정보</h1>
                        <ul class="page-list">
                            <li><a href="index">Home</a></li>
                            <li>Festival</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- breadcrumb area End -->

    <!-- Top bar -->
    <div class="tour-list-area pd-top-120">
        <div class="container">
            <div class="row">
                <div class="col-xl-9 col-lg-8 order-lg-12">
                    <div class="tp-tour-list-search-area">
                        <div class="row">
                            <div class="col-xl-6 col-sm-12">
                                <label class="single-input-wrap">
                                    <strong>지금 진행 중인 축제가 궁금하다면? <a href="/festival/calendar" style="color:#f3941e;">▶Click!◀</a></strong>
                                </label>
                            </div>
                        </div>
                    </div>
                    
                    <!-- Festival List -->
                    <c:forEach items="${festivalList}" var="list">
                    <div class="tour-list-area">
                        
                        <div class="single-destinations-list style-three">
                        
                            <div class="thumb">
                                <img src="/festival_imgs/${list.fetv_image}" alt="list" style="width:526px; height:260px;">
                            </div>
                            
                            <div class="details">
                                <p class="location"><img src="/images/icons/1.png" alt="map">${list.fetv_area}</p>
                                <h4 class="title"><a href="/festival/festivalDetails?fetv_no=${list.fetv_no}">${list.fetv_name} </a></h4>
                                <p class="content">${list.fetv_short}</p>
                                <div class="list-price-meta">
                                    <c:if test="${not empty list.fetv_startdate}">
                                    <ul class="tp-list-meta d-inline-block">
                                        <li><i class="fa fa-calendar-check-o fa-lg"></i> ${list.fetv_startdate}</li>
                                        <li><i class="fa fa-calendar-times-o fa-lg"></i> ${list.fetv_enddate}</li>
                                    </ul>
                                    </c:if>
                                    <c:if test="${empty list.fetv_startdate}">
                                        <ul class="tp-list-meta d-inline-block">
                                            <li><i class="fa fa-home fa-lg"></i> 일정은 홈페이지를 참조하세요</li>
                                        </ul>
                                    </c:if>
                                </div>
                            </div>
                        </div>
                    </div>
                </c:forEach>

                    <!-- 페이징 시작 -->
                    <div class="row">
                        <div class="col-lg-12  text-md-center text-left">
                            <div class="tp-pagination text-md-center text-left d-inline-block mt-4">
                                <ul>
                                	<c:if test="${pageMaker.prev}">
                                    	<li><a class="prev page-numbers" href="viewFestivalList${pageMaker.makeSearch(pageMaker.startPage - 1)}"><i class="la la-long-arrow-left"></i></a></li>
                                	</c:if>
                                	<c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="idx">                                	
                                    <li><a href="viewFestivalList${pageMaker.makeSearch(idx)}">
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
                                    	<li><a class="next page-numbers" href="viewFestivalList${pageMaker.makeSearch(pageMaker.endPage + 1)}"><i class="la la-long-arrow-right"></i></a></li>
                                	</c:if> 
                                </ul>                          
                            </div>
                        </div>
                    </div>
                    <!-- 페이징 끝 -->
                    
                </div>     
                
                <!-- 축제목록 사이드 바 -->
                <div class="col-xl-3 col-lg-4 order-lg-1">
                    <div class="sidebar-area">
                        <div class="widget tour-list-widget">
                            <div class="widget-tour-list-search">
                                <form role="search" class="search-form" id="festivalSearchForm" name="festivalSearchForm" action="/api/festival/search">
                                    <div class="form-group">
                                        <input type="text" placeholder="키워드로 검색하기" name="log_word_searchword" autofocus>
                                        <c:if test="${empty sessionScope.u_no}">
                                            <input type="hidden" name="u_no" value="0">
                                        </c:if>
                                        <c:if test="${not empty sessionScope.u_no}">
                                        <input type="hidden" name="u_no" value="${sessionScope.u_no}">
                                        </c:if>
                                    </div>
                                    <button class="submit-btn" type="submit"><i class="ti-search"></i></button>
                                </form><br>
                            </div>
                            

                            
          <!--검색 설정 시작-->       
                            <div class="widget-tour-list-search">
                                <div class="single-widget-search-input-title"><i class="fa fa-plus-circle"></i> 지역별 검색</div>
                                <div class="single-widget-search-input">
                                    <select class="select w-100 custom-select" id="selectArea">
                                        <option value="">전체</option>
                                        <option value="서울">서울</option>
	                                    <option value="강원">강원</option>
	                                    <option value="경기">경기</option>
	                                    <option value="경남">경남</option>
	                                    <option value="경북">경북</option>
	                                    <option value="광주">광주</option>
	                                    <option value="대구">대구</option>
	                                    <option value="대전">대전</option>
	                                    <option value="부산">부산</option>
	                                    <option value="세종">세종</option>
	                                    <option value="울산">울산</option>
	                                    <option value="인천">인천</option>
	                                    <option value="전남">전남</option>
	                                    <option value="전북">전북</option>
	                                    <option value="제주">제주</option>
	                                    <option value="충남">충남</option>
	                                    <option value="충북">충북</option>
	                                    <option value="온라">온라인</option>
                                    </select>
                                </div><br><br>                        
                                <div class="single-widget-search-input-title"><i class="fa fa-calendar-minus-o"></i> 시작일</div>
                                <div class="single-widget-search-input">
                                    <input type="text" class="departing-date custom-select" placeholder="Start-day" id="selectStartDate">
                                </div>
                                <div class="single-widget-search-input-title"><i class="fa fa-calendar-minus-o"></i> 종료일</div>
                                <div class="single-widget-search-input">
                                    <input type="text" class="returning-date custom-select" placeholder="End-day" id="selectEndDate">
                                </div>
                                <div class="input-group-append">
						        	<div class="list_search">
                               			<button class="btn btn-yellow3" type="button" id="selectSearchButton" style="z-index:auto;">검색하기</button>
                               		</div>
                            	</div>
                            </div>
                        </div>
         <!--검색 설정 끝 -->  
         
         
                        <div class="widget_ads">
                            <a href="#"><img src="/images/others/01.png" alt="img"></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- tour list area End -->

    <!-- newslatter area Start -->
    <div class="newslatter-area pd-top-108">
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
    <script src="js/category.js"></script>

    <!-- main js -->
    <script src="js/main.js"></script>
    
    <jsp:include page="footer.jsp"></jsp:include>

</body>
</html>