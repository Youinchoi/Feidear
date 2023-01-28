<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

   <!-- header.jsp -->
    <%@ include file='../header.jsp' %>
   <!-- header.jsp 끝 -->
   
   <!-- custom CSS -->
   <link rel="stylesheet" href="/css/smart-page.css">
   <!-- custom CSS 끝 -->
   
    <!-- breadcrumb area start -->
    <div class="breadcrumb-area jarallax" style="background-image:url(/images/index/breadcrumb.jpg);">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb-inner">
                        <h1 class="page-title">스마트 페이지</h1>
                        <ul class="page-list">
                            <li><a href="#">Smart Page</a></li>
                            <li>당신의 스마트한 일정을 위해</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- breadcrumb area End -->

    <!-- blog area start -->
    <div class="user-profile-area pd-top-120">
        <div class="container">
            <div class="row">
                <div class="col-xl-10 col-lg-12">
                    <div class="row">
                        <!-- 사이드 메뉴 -->
                        <div class="col-lg-4">
                            <ul class="nav nav-tabs tp-tabs style-two">
                                <input type="hidden" name="select" value="${param.cont}" id="selected"/>
                                
                                <li class="nav-item">
                                    <a class="nav-link active"  data-toggle="tab" href="#tabs_1"><i class="fa fa-users" aria-hidden="true"></i>혼잡도 체크</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" data-toggle="tab" href="#tabs_2"><i class="fa fa-sun-o" aria-hidden="true"></i>실시간 날씨</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" data-toggle="tab" href="#tabs_3"><i class="fa fa-bar-chart" aria-hidden="true"></i>유저's PICK</a>
                                </li>
                            </ul>
                        </div>
                        <!-- 사이드 메뉴 끝 -->

                        <!-- content -->
                        <div class="col-xl-7 col-lg-8 offset-xl-1">
                            <div class="tab-content user-tab-content">
                                <!-- 혼잡도 체크 탭 -->
                                <div class="tab-pane fade show active" id="tabs_1" >
                                    <div class="user-settings">
                                        <h3 class="user-details-title">혼잡도 체크</h3>
                                        <div class="row">
                                            <!-- 안내문구 -->
                                            <div class="single-widget-search-input-title col-lg-12" style="margin-bottom: 15px;">
                                                <span class="user-details-title" style="font-weight: bold;">전년도의 이동통신사별 방문자수 데이터를 기반으로 혼잡도를 측정하였습니다.</span>
                                            </div>
                                        </div>
                                        <!--차트가 그려질 부분-->
                                        <div class="chart-wrapper">
                                            <div id="myChartDiv1" class="chartDiv" style="width: 50%; height:300px;">
                                                <span> 광역별 방문자 수 </span>
                                                <canvas id="myChart1"></canvas>
                                            </div>  
                                            <div id="myChartDiv2" class="chartDiv" style="width: 50%; height:300px;">
                                                <span> 방문자 수 추이 </span>
                                                <canvas id="myChart2"></canvas>
                                            </div>  
                                        </div>
                                        <!--차트 끝-->
                                        <!-- 필터 검색 DIV -->
                                        <div class="single-widget-search-input-title col-lg-12" style="text-align : right; margin-top: 2rem;">
                                            <!-- 차트 필터 -->
                                            <div id="select_chart_div" class="categ-filter" style="float:right; width:50%;">
                                                <i class="fa fa-area-chart"></i>&nbsp;방문자 수 추이 그래프 선택 
                                                <div class="single-widget-search-input">
                                                    <select id="select_chart" class="select w-75 custom-select" style="display:inline-block">
                                                        <option value="0" selected>전체 비교하기</option>
                                                        <option value="1">현지인방문자(a)</option>
                                                        <option value="2">외지인방문자(b)</option>
                                                        <option value="3">외국인방문자(c)</option>
                                                        <option value="4">외부방문자(b+c)</option>
                                                        <option value="5">전체방문자(a+b+c)</option>
                                                    </select>
                                                    <button id="testtest" class="submit-btn" type="submit" style="display:inline-block; background: #254a79; border:none; padding:10px; border-radius: 10px; width:20%; height:3.08rem;"><i class="ti-search" style="color:white"></i></button>
                                                </div>
                                                
                                            </div>
                                        </div>
                                        <!-- 필터 검색 DIV 끝 -->  
                                    </div>
                                </div>    
                            
                                <!-- 혼잡도 체크 탭 끝 -->
                                    
                                <!-- 실시간 날씨 탭 -->
                                <div class="tab-pane fade" id="tabs_2">
                                    <div class="user-verification">
                                        <h3 class="user-details-title">실시간 날씨</h3>
                                        <div class="row">
                                            <!-- 필터 검색 DIV -->
                                            <div class="single-widget-search-input-title col-lg-12">
                                                <!-- 지역 필터 검색 -->
                                                <div class="categ-filter">
                                                    <i class="fa fa-map-pin"></i> &nbsp;지역
                                                    <div class="single-widget-search-input" id="searchArea">
                                                        <select class="select w-75 custom-select" id="selectArea">
                                                            <option value="" selected disabled hidden>지역 선택</option>
                                                            <option value="0">서울/인천/경기</option>
                                                            <option value="1">강원영서</option>
                                                            <option value="2">강원영동</option>
                                                            <option value="3">대전/세종/충남</option>
                                                            <option value="4">충북</option>
                                                            <option value="5">광주/전남</option>
                                                            <option value="6">전북</option>
                                                            <option value="7">부산/울산/경남</option>
                                                            <option value="8">제주</option>
                                                        </select>
                                                        <button id="testtest2" class="submit-btn" type="submit" style="display:inline-block; background: #254a79; border:none; padding:10px; border-radius: 10px; width:20%; height:3.08rem;"><i class="ti-search" style="color:white"></i></button>
                                                    </div>
                                                </div>
                                            <!-- 지역 필터 검색 끝 -->
                                            </div>
                                                <!-- 필터 검색 DIV 끝 -->  
                                            <div class="col-lg-12">
                                                <h5 class="user-details-title" id="areaName">지역을 선택하고, 검색 버튼을 눌러주세요!</h5>
                                                <img id="default_img" src="/images/weather/default.gif" style="display: block; margin: 0px auto; width: 20rem;"/>
                                                <!-- 날씨 출력 테이블 -->
                                                <table id="todayTbl" style="width:80%;">
                                                    
                                                </table>
                                                <table id="weatherTbl" style="width:100%; margin-bottom: 30%;">
                                                    
                                                    
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                    
                                    <!-- 여행 성향 분석 탭-->
                                <div class="tab-pane fade" id="tabs_3">
                                    <div class="user-details">
                                        <h3 class="user-details-title">FEIDEAR 유저 PICK 추천</h3>
                                        
                                        <div class="row">
                                            <div class="col-lg-12 bg-gray" style="padding-top: 3vw;">
                                                
                                                <!-- 여행 성향 분석 결과 -->
                                                <div class="col-lg-12" style="margin: 0px auto;">
                                                    <h3 id ="title" style="text-align: center; margin-bottom: 30px;">유저들이 추천해주는 축제들!</h3>
                                                    <c:if test="${not empty sessionScope.u_id}" >
                                                        <span style="display:block; margin-bottom: 2vw!important; font-size: 0.95em; text-align: center; margin: auto;"> ${sessionScope.u_id}님이 가보지 못한 축제 중에서 <br/> FEIDEAR 유저들이 가장 좋은 평가를 준 축제를 추천해드릴게요! </span><br/>
                                                    </c:if>
                                                    <div class="user-payment-card" style="text-align: center;">
                                                        <img src="../images/others/userpick.PNG" alt="img" style="margin-bottom: 1.25vw; border-radius: 70%; box-shadow: 0px 0px 15px 3px darkgrey;">
                                                        <br/>
                                                        <c:if test="${empty sessionScope.u_id}" >
                                                            <a id="test" class="btn btn-transparent signUp-btn" style="margin-top: 1vw; margin-bottom:3vw; display: inline-block; width: 30vw; padding:0;">로그인해야 이용 가능한 서비스입니다.</a>
                                                        </c:if>
                                                        <c:if test="${not empty vList[0] and not empty sessionScope.u_id}">
                                                            <a id="test" class="btn btn-transparent" href="/smart/fbti-test" style="margin: 1vw;">다시 검사해보기</a>
                                                        </c:if>
                                                        <c:if test="${empty vList[0] and not empty sessionScope.u_id}">
                                                            <a id="test" class="btn btn-transparent" href="/smart/fbti-test" style="margin: 1vw;">지금 검사해보기</a>
                                                        </c:if>
                                                    </div>
                                                </div>
                                                <c:if test="${not empty vList[0] and not empty sessionScope.u_id}">
                                                    <div id="desc" class="col-lg-10 widget-contact" style="margin:auto; margin-bottom: 3vw!important; margin-top: 1vw!important;">
                                                        <span style="display:block; font-size: 0.95em; text-align: center; margin: auto;"> ${sessionScope.u_id}님이 고른 축제의 주요 키워드는?? </span><br/>
                                                        <c:forEach var="tag" items="${tags}" varStatus="status">
                                                            <a href="/api/festival/search?u_no=${sessionScope.u_no}&log_word_searchword=%23${tag.key}">
                                                                <p class="graph">
                                                                    <i class="fa fa-thumb-tack" aria-hidden="true"></i>
                                                                    <span style="color: black;">&nbsp;${tag.key}</span>
                                                                    <span class="value" style="width: ${tag.value * 10}%; ">${tag.value}</span>
                                                                </p>
                                                            </a>
                                                        </c:forEach>
                                                        
                                                    </div>  
                                                    <!-- 여행 성향 기반 추천 -->
                                                    <div class="newslatter-area-wrap border-tp-solid" >
                                                        <h4 style="text-align: center; margin-bottom: 70px;">👇👇 이런 당신에게 유저들이 추천하는 축제는?? 👇👇</h4>
                                                        <div class="fstv-grid"  style="overflow:auto;">
                                                            <c:forEach var="vo" items="${vList}" varStatus="status">
                                                                <div class="col-lg-12" style="margin: 0px auto;">
                                                                    <a class="fetv_box" href="/festival/festivalDetails?fetv_no=${vo.fetv_no}">
                                                                        <div class="user-payment-card fstv-list" style="text-align: center; padding-bottom: 50%;">
                                                                            <div class="img_box">
                                                                            <img class="result_img" src="/festival_imgs/${vo.fetv_image}" alt="${vo.fetv_short}" style="margin-bottom: 1.25vw; border-radius: 70%">
                                                                            </div>
                                                                            <br/>
                                                                            <div class="fetv_name">${vo.fetv_name}</div>
                                                                        </div> 
                                                                    </a>
                                                                </div>
                                                            </c:forEach>
                                                        </div>
                                                    </div>    
                                                </c:if>
                                                
                                                
                                                
                                                    
                                            </div>
                                        </div>
                                        
                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- content 끝 -->
                    </div>
                </div>
            </div> 
        </div>
    </div>
    </div>
    <!-- blog area End -->
    
    <!-- newslatter area Start -->
    <div class="newslatter-area pd-top-120">
        <div class="container">
            
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
    
    <!-- custom js -->
    <script src="/js/smart-page-custom.js"></script>

    <!-- chart js -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.4.0/Chart.min.js"></script>
    <script src="/js/ChartJS/congestion.js"></script>

    <!-- footer.jsp -->
    <jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>