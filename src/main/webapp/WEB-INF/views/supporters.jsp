<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%String pjName = "/Feidear";%>

<jsp:include page="header.jsp"></jsp:include>
	
     <!-- custom CSS -->
   <style type="text/css">
      .fstv-grid{
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
   </style>


    <!-- breadcrumb area start -->
    <div class="breadcrumb-area jarallax" style="background-image:url(images/bg/1.png);">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb-inner">
                        <h1 class="page-title">디어유 모집</h1>
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
                                <a href="#"><img src="images/others/01.png" alt="img"></a>
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
                                                        <div class="user-payment-card" style="text-align: center;">
                                                            <img src="images/others/01.png" alt="img" style="margin-bottom: 1.25vw; border-radius: 70%">
                                                            <br/>
                                                            
                                                            
                                                        </div>
                                                    </div>
                                                    <div class="col-lg-10 widget-contact" style="margin: 0px auto;">
                                                        <p>
                                                            <i class="fa fa-thumb-tack" aria-hidden="true"></i>
                                                            <span style="color: black;">디어유란? <br> 소정의 지원금을 받고 축제를 체험한 후 <br> 양질의 후기를 나누어 주는 페이디어의 서포터즈 </span>
                                                        </p>
                                                        <p>
                                                            <i class="fa fa-thumb-tack" aria-hidden="true"></i>
                                                            <span style="color: black;">디어유가 하는 일 <br> 막노동 <br> 사진 찍기 <br> 리뷰 올리기 </span>
                                                        </p>
                                                        <p>
                                                            <i class="fa fa-thumb-tack" aria-hidden="true"></i>
                                                            <span style="color: black;">디어유 혜택 <br> 소정의 경비 제공 <br> 뿌듯함 <br> 관심 받을 수 있음</span>
                                                        </p>
                                                        <p>
                                                            <i class="fa fa-thumb-tack" aria-hidden="true"></i>
                                                            <span style="color: black;">디어유가 되는 방법 <br> 아래 첨부된 파일을 다운로드 후 작성하여 email@email.com 으로 보내 주면 끝! <br> 합불 여부에 관계없이 결과 메일은 모두에게 전송됩니다</span>
                                                            <!-- 신청서 양식 다운로드 버튼 시작 -->
                                                            <a class="btn btn-transparent" href="images/fstv_form.docx"download style="color: #fff ; display: block; margin-top:10px; ">신청서 다운로드</a>
                                                            <!-- 신청서 양식 다운로드 버튼 끝 -->
                                                        </p>
                                                        
                                                    </div>   
                                                    
                                                    <!-- 디어유 활동 내역 보기 -->
                                                    <div class="newslatter-area-wrap border-tp-solid" >
                                                    <h4 style="text-align: center; margin-bottom: 70px;">지난 기수 활동 구경하기</h4>
                                                        <div class="fstv-grid"  style="overflow:auto;">
                                                            <div class="col-lg-12" style="margin: 0px auto;">
                                                                <div class="user-payment-card fstv-list" style="text-align: center;">
                                                                    <img src="images/others/01.png" alt="img" style="margin-bottom: 1.25vw; border-radius: 70%">
                                                                    <br/>
                                                                    <span style="white-space: nowrap;"> OO축제 </span>
                                                                </div>
                                                            </div>
                                                            
                                                            <div class="col-lg-12" style="margin: 0px auto;">
                                                                <div class="user-payment-card fstv-list" style="text-align: center;">
                                                                    <img src="images/others/01.png" alt="img" style="margin-bottom: 1.25vw; border-radius: 70%">
                                                                    <br/>
                                                                    <span style="white-space: nowrap;"> OO축제 </span>
                                                                </div>
                                                            </div>
                                                            
                                                            <div class="col-lg-12" style="margin: 0px auto;">
                                                                <div class="user-payment-card fstv-list" style="text-align: center;">
                                                                    <img src="images/others/01.png" alt="img" style="margin-bottom: 1.25vw; border-radius: 70%">
                                                                    <br/>
                                                                    <span style="white-space: nowrap;"> OO축제 </span>
                                                                </div>
                                                            </div>
                                                            
                                                            <div class="col-lg-12" style="margin: 0px auto;">
                                                                <div class="user-payment-card fstv-list" style="text-align: center;">
                                                                    <img src="images/others/01.png" alt="img" style="margin-bottom: 1.25vw; border-radius: 70%">
                                                                    <br/>
                                                                    <span style="white-space: nowrap;"> OO축제 </span>
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