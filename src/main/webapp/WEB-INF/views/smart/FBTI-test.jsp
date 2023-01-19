<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

   <!-- header.jsp -->
<%@ include file='../header.jsp' %>
   <!-- header.jsp 끝 -->
   
   <!-- custom CSS -->
   <link rel="stylesheet" href="/css/smart-page.css">
   <style type="text/css">
        .fstv-grid{
         display : grid;
          margin-bottom: 5px;   
          grid-template-columns: repeat(3, 1fr);
            gap: 28px;
         @media screen and (max-width: 718px) {
             gap: 3px;   
         }
      }
        a {
        text-decoration: none;
        color: darkslateblue;
        display: flex;
        align-items: center;
        }

        .tile {
        text-align: center;
        padding: 40px;
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
        border-radius: 8px;
        opacity: 0.8;
        }

        label {
        cursor: pointer;
        }

        input {
        position: absolute;
        top: 8px;
        left: 8px;
        cursor: pointer;
        }

   
        .tile img {
            position: absolute;
            top: 0;
            left: 0;
            transform: translate(50, 50);
            width: 100%;
            height: 100%;
            object-fit: cover;
            margin: auto;
            opacity: 50%;
        }
        .tile #short {
            width:300px;
            overflow:hidden;
            text-overflow:ellipsis;
            white-space:nowrap;
            display:inline-block;
        }

        .tile span {
            position : relative;
            color : rgb(29, 29, 29);
            z-index: 2;
        }

        div.sl { visibility: hidden; }
        div.sl.show {visibility: visible;}
   </style>
   
   <!-- custom CSS 끝 -->
   
    <!-- breadcrumb area start -->
    <div class="breadcrumb-area jarallax" style="background-image:url(/images/bg/1.png);">
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
                <div class="col-xl-12 col-lg-12">
                    <div class="row">
                        <div class="col-xl-12 col-lg-12">
                            <div class="tab-content user-tab-content">
                                <!-- 여행 성향 검사-->
                                <div class="tab-pane fade show active" id="tabs_3">
                                    <div class="user-details">
                                        <h3 class="user-details-title" style="color : #6BABF0">축제 선택</h3>
                                        
                                        <div class="row">
                                           <div class="col-lg-12 bg-gray" style="padding: 3vw;">
                                              
                                              <!-- 여행 성향 분석 결과 -->
                                                
                                               <!-- 여행 성향 기반 추천 -->
                                               <h3 style="text-align: center; margin-bottom: 70px;">내가 가봤던 축제를 평가해주세요!</h3>
                                                  <div>

                                                      <form action="insertTest" method="post">
                                                            <input type="hidden" id="${sessionScope.u_id}" name="u_id" value="${sessionScope.u_id}"/>
                                                            <section id="effects_wrapper" class="fstv-grid"  style="overflow:auto;">
                                                            <c:forEach var="vo" items="${fList}" varStatus="status">
                                                                <div class="col-lg-12 tile" style="margin: 0px auto;">
                                                                    <div class="user-payment-card fstv-list" style="text-align: center;">
                                                                        <!-- <input type="hidden" name="fetv_no" id="${vo.fetv_no}" value="${vo.fetv_no}"/> -->
                                                                        <input type="checkbox" id="${vo.fetv_no}" class="checkbox" name="fetv_no" value="${vo.fetv_no}"/>
                                                                        <label for="${vo.fetv_no}">
                                                                            <img class="fetv_img" src="/festival_imgs/${vo.fetv_image}" alt="${vo.fetv_name}" style="margin-bottom: 1.25vw;">
                                                                            <br/>
                                                                            <div>
                                                                                <span style="font-size: 1.8rem; font-weight: bold;">${vo.fetv_name}</span> <br/>
                                                                                <span id ="short" style="white-space: nowrap; font-size: 1rem;">${vo.fetv_short}</span>
                                                                            </div>
                                                                        </label>
                                                                    </div>
                                                                    <div class="user-payment-card fstv-list sl" style="text-align: center;">
                                                                    </div>
                                                                </div>
                                                            </c:forEach>
                                                                    
                                                    </section>
                                                    <div class="col-12" style="text-align: center;">
                                                        <input type="submit" class="btn btn-yellow mt-3 text-center" value="변경사항 저장">
                                                    </div>
                                                    </form>

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

     <!-- footer.jsp -->
     <jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>