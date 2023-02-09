<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
  <script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.2.js" charset="utf-8"></script>
  <script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.min.js"></script>

    <style type="text/css">
    html, div, body, h3 {
    margin: 0;
    padding: 0;
    }

    h3 {
    display: inline-block;
    padding: 0.6em;
    }
    </style>
   
      <div style="background-color: #15a181; width: 100%; height: 50px; text-align: center; color: white;">
            <h3>Naver_Login Success</h3>
      </div>    
  <br>
  <h2 style="text-align: center" id="name">안녕하세요</h2>
  <h4 style="text-align: center" id="email"></h4>

  <script>
    $(function () {
      $("body").hide();
      $("body").fadeIn(1000);  // 1초 뒤에 사라 지자 
     
      setTimeout(function(){$("body").fadeOut(1000);},1000);
      //alert(${pageContext.request.contextPath});
      //setTimeout(function(){location.href= "${pageContext.request.contextPath}/"},2000);
    
      // 2초 뒤에 메인 화면 으로 가자  
    
    })

  </script>

<!--   <script type="text/javascript">
    $(document).ready(function() {
        var name = ${result}.response.name;
        var email = ${result}.response.email;
        $("#name").html("환영합니다. "+name+"님");
        $("#email").html(email);
        });
    //location.href = "${pageContext.request.contextPath}/";
    </script>-->

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
    <script src="../js/signup.js"></script>

    <!-- main js -->
    <script src="../js/main.js"></script>
	
</body>
</html>