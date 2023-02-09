<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>   
 	
 	<!-- header -->
    <%@ include file='../header.jsp' %>
    <!-- breadcrumb area start -->
    <div class="breadcrumb-area jarallax" style="background-image:url(/images/index/breadcrumb.jpg);">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb-inner">
                        <h1 class="page-title">FAQs</h1>
                        <ul class="page-list">
                            <li><a href="index">Home</a></li>
                            <li>자주 받은 문의</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- breadcrumb area End -->

    <!-- blog area start -->
    <div class="faq-page-area pd-top-110">
        <div class="container">
            <div class="row">
                <div class="col-xl-9 col-lg-8">
                    <div class="row">
                        <div class="col-xl-8">
                            <div class="section-title mb-0">
                                <h2 class="title">자주 받은 문의</h2>
                                <p> 추가로 궁금한 점이 있을 시 우측의 일대일 문의를 이용해 주세요. </p>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-5">
                            <ul class="nav nav-tabs tp-tabs">
                                <li class="nav-item">
                                    <a class="nav-link active" data-toggle="tab" href="#tabs_1">축제 등록은 어떻게 하나요?</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" data-toggle="tab" href="#tabs_2">회원 탈퇴는 어떻게 하나요?</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link"  data-toggle="tab" href="#tabs_3">작성했던 글이 지워졌나요? 찾을수가 없어요. 검색이 되지 않아요.</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link"  data-toggle="tab" href="#tabs_4">원하는 축제를 찾을 수 없어요.</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link"  data-toggle="tab" href="#tabs_5">축제 근처 맛집</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link"  data-toggle="tab" href="#tabs_6">서포터즈는 어떻게 하나요?</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link"  data-toggle="tab" href="#tabs_7">이벤트 참여는 어떻게 하나요?</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link"  data-toggle="tab" href="#tabs_8">축제 지역 날씨는 어떻게 아나요?</a>
                                </li>
                            </ul>
                        </div>
                        <div class="col-md-7">
                            <div class="tab-content faq-tab-content" style="background-image: url(images/others/12.png);">
                                <div class="tab-pane fade show active" id="tabs_1" >
                                   
                                    <div class="faq-details" style="margin-bottom: 2%;">
                                    <h6>01 | 축제 등록은 어떻게 하나요? </h6>
                                    <p>밑에 신청양식 다운로드 버튼을 클릭해 다운받습니다. 서식에 맞춰서 작성하신 다음에 관리자에게 보내시면 됩니다.</p>                                                                            
                                    </div>  
                                
                                    <div class="faq-details" style="margin-bottom: 2%;">
                                        <h6>🤍 | 신청서 양식 다운로드 버튼</h6>
                                        
                                        <!-- 신청서 양식 다운로드 버튼 시작 -->
                                        <a class="btn btn-transparent" href="/images/fstv_form.docx"download style="color: #fff ; display: block; margin-top:10px; ">신청서 다운로드</a>
                                        <!-- 신청서 양식 다운로드 버튼 끝 -->
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="tabs_2">
                                    <div class="faq-details">
                                        <h6>02 | 회원 탈퇴는 어떻게 하나요? </h6>
                                        <p>마이페이지를 클릭하셔서 좌측 상단에 회원탈퇴 버튼을 누르면 탈퇴 처리 됩니다. 탈퇴시 모든 개인 신상정보는 삭제됩니다. 재가입하셔도 복구가 불가능 하오니 신중하게 결정하시길 바랍니다. 단, 회원으로 활동시 작성한 게시물은 삭제가 되지 않으며 삭제를 희망시 본인확인 후 삭제 처리 해 드립니다.</p>                                        
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="tabs_3">
                                    <div class="faq-details">
                                        <h6>03 | 작성했던 글이 지워졌나요? 찾을수가 없어요. 검색이 되지 않아요. </h6>
                                        <p>축제 일기 검색을 통해 본인의 글을 찾을 수 없다면 아래와 같은 경우일 수 있습니다. 첫째. 게시판 용도에 맞지 않아 용도에 맞는 게시판으로 이동 된 경우 둘째. 게시판 규칙에 맞지 않고 용도에 맞는 게시판을 찾지 못해 삭제한경우 - 성인광고, 대출광고 등 본 사이트와 성격이 전혀 맞지 않는 게시물의 경우 삭제 될 수 있습니다.</p>
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="tabs_4">
                                    <div class="faq-details">
                                        <h6>04 | 원하는 축제를 찾을 수 없어요.</h6>
                                        <p>원하는 축제를 찾고 싶은데 검색이 되지 않는 경우 해당 축제가 등록되어 있지 않거나 축제명이 달라진 경우일 수 있습니다. 등록되어 있지 않다면 신고센터로 해당 축제명을 남겨주시거나 feidear@gmail.com으로 메일을 주시면 최대한 빠른 시간안에 축제를 등록하도록 하겠습니다.</p>                                        
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="tabs_5">
                                    <div class="faq-details">
                                        <h6>05 | 축제 근처 맛집</h6>
                                        <p>축제 둘러보기를 클릭합니다. 축제 목록에서 원하는 축제를 클릭합니다. 스크롤을 내리면 지도가 나옵니다. 거기서 맛집 버튼을 클릭하면 축제 근처 맛집이 나옵니다.</p>                                        
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="tabs_6">
                                    <div class="faq-details">
                                        <h6>06 | 서포터즈는 어떻게 하나요?</h6>
                                        <p>이벤트를 클릭해서 서포터즈를 클릭합니다. 스크롤을 내리면 신청서 양식 다운로드 버튼을 통해 다운로드 합니다. 서식에 맞춰서 작성한 후 feidear@gmail.com으로 보내시면 됩니다.</p>                                        
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="tabs_7">
                                    <div class="faq-details">
                                        <h6>07 | 이벤트 참여는 어떻게 하나요?</h6>
                                        <p>이벤트를 클릭해서 제휴이벤트를 클릭합니다. 원하는 이벤트를 찾아서 클릭한 뒤 이벤트 내용에 따라서 참여하면 됩니다.</p>                                        
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="tabs_8">
                                    <div class="faq-details">
                                        <h6>08 | 축제 지역 날씨는 어떻게 아나요?</h6>
                                        <p>스마트페이지를 클릭해서 실시간 날씨를 클릭합니다. 지역을 선택하여 날씨를 확인하면 됩니다.</p>                                        
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