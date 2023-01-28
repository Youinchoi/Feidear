<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

   <!-- header.jsp -->
   <%@ include file='header.jsp' %>
   <!-- header.jsp 끝 -->


     <!-- custom CSS -->
   <style type="text/css">
      .fstv-grid{
      	 height : 200px;
         display : grid;
          margin-bottom: 5px;   
          grid-template-columns: repeat(4, 1fr);
            gap: 28px;
         @media screen and (max-width: 718px) {
             gap: 3px;   
         }
      }
      .fstv-list {
         width: 100%;
            position: relative;
         }
         
         .fstv-list::after {
         display:block;
      }
      
      .categ-filter {
         float : center;
         width : 40%;
         margin-right :0.5vw;
      }
      
      #weatherTbl .weatherIcon {
         max-width: 100%;
      }
      
      .weatherTd, .dayTd {
         width:10%;
      }
      
      #weatherTbl td {
         text-align: center;
      }
   
        #title {
        display: block;
        width: 100%;
        overflow: hidden;
        text-overflow: ellipsis;
        white-space: normal;
        line-height: 1.2;
/*        height: 4.8em;*/
        text-align: center;
        word-wrap: break-word;
        -webkit-line-clamp: 1 ;
        -webkit-box-orient: vertical;
    	}
   </style>


    <!-- breadcrumb area start -->
    <div class="breadcrumb-area jarallax" style="background-image:url(images/index/breadcrumb.jpg);">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb-inner">
                        <h1 class="page-title">서포터즈 모집</h1>
                        <ul class="page-list">
                          <li>페이디어 서포터즈가 되는 방법</li>
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

                        <div class="col-lg-4">
                            <div class="widget_ads">
                                          <!-- 축제 일기 좌측 사이드바 시작 -->
                <div class="col-lg-12"  id="select-category">
                    <aside class="sidebar-area sidebar-area-4">
                        <!-- 광고 배너 시작 -->
                            <div class="widget widget_tag_cloud" style="text-align:center;">
	                            <h2 class="widget-title" style="text-align:left;">이런 축제는 어때요?</h2>
	                           <a href="#"><img src="/images/others/rhkdrh.jpg" alt="img"></a>
                            </div>
                        <!-- 광고 배너 끝 -->
                        <!-- 광고 배너 시작 -->
                            <div class="widget widget_tag_cloud" style="text-align:center;">
	                            <h2 class="widget-title" style="text-align:left;">이런 축제도 있어요!</h2>
	                           <a href="#"><img src="/images/others/rhkdrh.jpg" alt="img"></a>
                            </div>
                        <!-- 광고 배너 끝 -->
                    </aside>
                </div>
<!-- 축제 일기 좌측 사이드바 끝 -->
                            </div>
                            
                        </div>
                        
                                
                                <!-- 디어유 모집 탭-->
                                <div class="col-xl-8 col-lg-8">
                                    <div class="tab-pane fade active show" id="tabs_3">
                                        <div class="user-details">
                                            <h3 class="user-details-title"></h3>
                                            
                                            <div class="row">
                                                <div class="col-lg-12 bg-gray" style="padding-top: 3vw; margin-top:-3.55%;">
                                                    
                                                    <!-- 디어유 제목 탭 -->
                                                    <div class="col-lg-5" style="margin: 0px auto;">
                                                        <h3 style="text-align: center; margin-bottom: 30px;">디어유가 되어 줘!</h3>
                                                        <div style="text-align: center; margin-bottom: 30px;">페이디어의 서포터즈를 모집해요!</div>
                                                        <div class="user-payment-card" style="text-align: center;">
                                                            <img src="images/others/01.PNG" alt="img" style="margin-bottom: 1.25vw; border-radius: 70%">
                                                            <br/>
                                                            
                                                            
                                                        </div>
                                                    </div>
                                                    <div class="col-lg-10 widget-contact" style="margin: 0px auto;">
                                                        <p>
                                                            <i class="fa fa-thumb-tack" aria-hidden="true"></i>
                                                            <span style="color: black;"><strong>디어유가 뭐에요?</strong> <br> 소정의 지원금을 받고 페이디어의 대표로 축제를 체험한 후 <br> 양질의 후기를 나누어 주는 페이디어의 서포터즈입니다! </span>
                                                        </p>
                                                        <p>
                                                            <i class="fa fa-thumb-tack" aria-hidden="true"></i>
                                                            <span style="color: black;"><strong>디어유는 뭘 하죠?</strong> <br> - 페이디어 대표로 즐거운 축제들 참여하기! <br> - 즐거운 축제의 현장을 생생하게 담은 사진 찍기! <br> - 신나게 즐기고 온 축제의 짜릿함을 담은 리뷰 올리기! </span>
                                                        </p>
                                                        <p>
                                                            <i class="fa fa-thumb-tack" aria-hidden="true"></i>
                                                            <span style="color: black;"><strong>디어유의 혜택은 뭐에요?</strong><br> - 소정의 경비 제공 <br> - 많은 관심과 뿌듯함 <br> - 페이디어 매거진에 내 후기 싣기</span>
                                                        </p>
                                                        <p>
                                                            <i class="fa fa-thumb-tack" aria-hidden="true"></i>
                                                            <span style="color: black;"><strong>디어유에 지원하는 방법은 뭔가요?</strong><br> 아래 첨부된 파일을 다운로드 후 작성하여 feidear@gmail.com 으로 보내면 끝! <br> 합불 여부에 관계없이 결과 메일은 모두에게 전송됩니다!</span>
                                                            <!-- 신청서 양식 다운로드 버튼 시작 -->
                                                            <a class="btn btn-transparent" href="images/fstv_form.docx"download style="color: black ; display: block; margin-top:10px;">디어유 모집 신청서 다운로드 ☜(ﾟヮﾟ☜)</a>
                                                            <!-- 신청서 양식 다운로드 버튼 끝 -->
                                                        </p>
                                                        
                                                    </div>   
                                                    
                                                    <!-- 디어유 활동 내역 보기 -->
                                                    <div class="newslatter-area-wrap border-tp-solid" >
                                                    <h4 style="text-align: center; margin-bottom: 70px;">지난 기수 활동 구경하기</h4>
                                                        <div class="fstv-grid"  style="overflow:auto;">
                                                            <c:forEach items="${mgz3}" var="m">
                                                                <div class="col-lg-12" style="margin: 0px auto; ">
                                                                    <div class="user-payment-card fstv-list" style="text-align: center; width:7em; height:7em;">
                                                                        <c:if test="${m.file_path != null}">
                                                                        	<a href="/magazine-details?mgz_no=${m.mgz_no}">
                                                                            <img src="${m.file_path}"  alt="img" style="margin-bottom: 1.25vw; border-radius: 70%; width:7em; height:6.8em;">
                                                                        	</a>
                                                                        </c:if>
                                                                        <c:if test="${m.file_path == null}">
                                                                        	<a href="/magazine-details?mgz_no=${m.mgz_no}">
                                                                            <img src="images/others/01.png" alt="img" style="margin-bottom: 1.25vw; border-radius: 70%; width:7em; height:6.8em;">
                                                                        	</a>
                                                                        </c:if>
                                                                        <br/>
                                                                            <span style="white-space: nowrap;" id="title">${m.mgz_title}</span>
                                                                    </div>
                                                                </div>
                                                            </c:forEach>
                                                            
                                                        </div>
                                                    </div>     
                                                </div>
 
                                            </div>
                                            
                                        </div>
                                    </div>
                                </div>
                            </div>
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