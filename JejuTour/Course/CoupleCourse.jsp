<%@ page contentType="text/html" pageEncoding="utf-8"  %>
<%@ page import= "java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
		<%
	String id = (String)session.getAttribute("user_id");
	String name = (String)session.getAttribute("user_name");
%>


<head>
<script>
 function openImageDialog2() {
      var imageWindow = window.open("", "Image Dialog", "width=1000,height=600;,modal=yes");
      imageWindow.document.write("<style>body { margin: 0; overflow: hidden; }</style>");
      imageWindow.document.write("<img src='../Course/IndividualImage/Individual2.png' style='display: block; margin: auto;'>");
    }
     function openImageDialog3() {
      var imageWindow = window.open("", "Image Dialog", "width=900,height=500;,modal=yes");
      imageWindow.document.write("<style>body { margin: 0; overflow: hidden; }</style>");
      imageWindow.document.write("<img src='../Course/IndividualImage/Individual3.png' style='display: block; margin: auto;'>");
    }
     function openImageDialog4() {
      var imageWindow = window.open("", "Image Dialog", "width=1100,height=800;,modal=yes");
      imageWindow.document.write("<style>body { margin: 0; overflow: hidden; }</style>");
      imageWindow.document.write("<img src='../Course/IndividualImage/Individual4.png' style='display: block; margin: auto;'>");
    }
     function openImageDialog5() {
      var imageWindow = window.open("", "Image Dialog", "width=900,height=600;,modal=yes");
      imageWindow.document.write("<style>body { margin: 0; overflow: hidden; }</style>");
      imageWindow.document.write("<img src='../Course/IndividualImage/Individual5.png' style='display: block; margin: auto;'>");
    }
     function openImageDialog6() {
      var imageWindow = window.open("", "Image Dialog", "width=800,height=500;,modal=yes");
      imageWindow.document.write("<style>body { margin: 0; overflow: hidden; }</style>");
      imageWindow.document.write("<img src='../Course/IndividualImage/Individual6.png' style='display: block; margin: auto;'>");
    }function openImageDialog7() {
      var imageWindow = window.open("", "Image Dialog", "width=800,height=500;,modal=yes");
      imageWindow.document.write("<style>body { margin: 0; overflow: hidden; }</style>");
      imageWindow.document.write("<img src='../Course/IndividualImage/Individual7.png' style='display: block; margin: auto;'>");
    }function openImageDialog8() {
      var imageWindow = window.open("", "Image Dialog", "width=900,height=700;,modal=yes");
      imageWindow.document.write("<style>body { margin: 0; overflow: hidden; }</style>");
      imageWindow.document.write("<img src='../Course/IndividualImage/Individual8.png' style='display: block; margin: auto;'>");
    }function openImageDialog9() {
      var imageWindow = window.open("", "Image Dialog", "width=400,height=300;,modal=yes");
      imageWindow.document.write("<style>body { margin: 0; overflow: hidden; }</style>");
      imageWindow.document.write("<img src='../Course/IndividualImage/Individual9.png' style='display: block; margin: auto;'>");
    }function openImageDialog10() {
      var imageWindow = window.open("", "Image Dialog", "width=1000;,height=700;,modal=yes");
      imageWindow.document.write("<style>body { margin: 0; overflow: hidden; }</style>");
      imageWindow.document.write("<img src='../Course/IndividualImage/Individual10.png' style='display: block; margin: auto;'>");
    }function openImageDialog11() {
      var imageWindow = window.open("", "Image Dialog", "width=1000;,height=700;,modal=yes");
      imageWindow.document.write("<style>body { margin: 0; overflow: hidden; }</style>");
      imageWindow.document.write("<img src='../Course/IndividualImage/Individual11.png' style='display: block; margin: auto;'>");
    }function openImageDialog12() {
      var imageWindow = window.open("", "Image Dialog", "width=1000;,height=700;,modal=yes");
      imageWindow.document.write("<style>body { margin: 0; overflow: hidden; }</style>");
      imageWindow.document.write("<img src='../Course/CoupleImage/Couple1.png' style='display: block; margin: auto;'>");
    }function openImageDialog13() {
      var imageWindow = window.open("", "Image Dialog", "width=1000;,height=700;,modal=yes");
      imageWindow.document.write("<style>body { margin: 0; overflow: hidden; }</style>");
      imageWindow.document.write("<img src='../Course/CoupleImage/Couple2.png' style='display: block; margin: auto;'>");
    }function openImageDialog15() {
      var imageWindow = window.open("", "Image Dialog", "width=1000;,height=700;,modal=yes");
      imageWindow.document.write("<style>body { margin: 0; overflow: hidden; }</style>");
      imageWindow.document.write("<img src='../Course/CoupleImage/Couple3.png' style='display: block; margin: auto;'>");
    }function openImageDialog16() {
      var imageWindow = window.open("", "Image Dialog", "width=1000;,height=700;,modal=yes");
      imageWindow.document.write("<style>body { margin: 0; overflow: hidden; }</style>");
      imageWindow.document.write("<img src='../Course/CoupleImage/Couple4.png' style='display: block; margin: auto;'>");
    }function openImageDialog17() {
      var imageWindow = window.open("", "Image Dialog", "width=1000;,height=700;,modal=yes");
      imageWindow.document.write("<style>body { margin: 0; overflow: hidden; }</style>");
      imageWindow.document.write("<img src='../Course/CoupleImage/Couple5.png' style='display: block; margin: auto;'>");
    }function openImageDialog18() {
      var imageWindow = window.open("", "Image Dialog", "width=1000;,height=700;,modal=yes");
      imageWindow.document.write("<style>body { margin: 0; overflow: hidden; }</style>");
      imageWindow.document.write("<img src='../Course/CoupleImage/Couple6.png' style='display: block; margin: auto;'>");
    }function openImageDialog19() {
      var imageWindow = window.open("", "Image Dialog", "width=1000;,height=700;,modal=yes");
      imageWindow.document.write("<style>body { margin: 0; overflow: hidden; }</style>");
      imageWindow.document.write("<img src='../Course/CoupleImage/Couple7.png' style='display: block; margin: auto;'>");
    }function openImageDialog20() {
      var imageWindow = window.open("", "Image Dialog", "width=1000;,height=700;,modal=yes");
      imageWindow.document.write("<style>body { margin: 0; overflow: hidden; }</style>");
      imageWindow.document.write("<img src='../Course/CoupleImage/Couple8.png' style='display: block; margin: auto;'>");
    }function openImageDialog21() {
      var imageWindow = window.open("", "Image Dialog", "width=1000;,height=700;,modal=yes");
      imageWindow.document.write("<style>body { margin: 0; overflow: hidden; }</style>");
      imageWindow.document.write("<img src='../Course/CoupleImage/Couple10.png' style='display: block; margin: auto;'>");
    }function openImageDialog22() {
      var imageWindow = window.open("", "Image Dialog", "width=1000;,height=700;,modal=yes");
      imageWindow.document.write("<style>body { margin: 0; overflow: hidden; }</style>");
      imageWindow.document.write("<img src='../Course/CoupleImage/Couple11.png' style='display: block; margin: auto;'>");
    }function openImageDialog23() {
      var imageWindow = window.open("", "Image Dialog", "width=1000;,height=700;,modal=yes");
      imageWindow.document.write("<style>body { margin: 0; overflow: hidden; }</style>");
      imageWindow.document.write("<img src='../Course/CoupleImage/Couple12.png' style='display: block; margin: auto;'>");
    }function openImageDialog24() {
      var imageWindow = window.open("", "Image Dialog", "width=1000;,height=700;,modal=yes");
      imageWindow.document.write("<style>body { margin: 0; overflow: hidden; }</style>");
      imageWindow.document.write("<img src='../Course/CoupleImage/Couple13.png' style='display: block; margin: auto;'>");
    }
	</script>
	<style>
 body
  {
    background-size:100%;
      background-image: url("../Introduce/image.1111.png");
	  background-repeat : no-repeat;
	
    }
</style>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta name="viewport" content="width=device-width" , initial-scale="1">
		
		<link rel="stylesheet" href="../Main/basic.css">
		<link rel="stylesheet" href="../Main/header.css">
		<link rel="stylesheet" href="../Main/dropdown.css">
		<link rel="stylesheet" href="../Main/mainview.css">
		<link href="https://fonts.googleapis.com/css2?family=Coming+Soon&family=Nanum+Gothic+Coding&display=swap"
			rel="stylesheet">
		<title>1인 여행 추천 코스</title>
</head>
<body link="gray" vlink="gray" alink="gray">

		<header>
	     <div class="header-align">

        <div id ="header-top" style="	position: relative;top: 5px;	width:100%;" >		

            <span style="float:left; position :relative; left:165px;" id="header-login-success-name" > <img src="../Login/login-image.png" style="width:40px;
                height:40px; float:left; "> &nbsp;&nbsp;<span style="font-weight:bolder; position:relative;
            top:10px; color:lightgray"><%= id%>(<%= name %>님) <span style="font-size:15px;">반갑수다</span></span> </span>
      
	   <span>
            <a href="../Logout/logout.jsp" style="float:right; position :relative; left:-2.65%;">
            | 로그아웃 </a>
        </span>

        <span>
			<a href="../MyPage/loginSuccessMyPage.jsp" style="float:right; position :relative; left:-2.65%;">
           마이페이지&nbsp </a>
        </span>	
       
        </div>
        
        <div id="header-mainname">
            <h1><a href="../Login/login_welcome.jsp" style="color:#77c466; text-decoration: none; ">제주<span style="color:black;">어서옵세</span>  </a></h1>
        </div>
        
        </div>
	</header>
	<main>
	<h1 style="text-align:center;">커플 여행</h1>

	<span><img src="../Course/CoupleImage/couple.png" style="width:100px; height:100px;"></span>
	<div style=" border-radius:1em; border-top:2px solid; height:800px; width:80%; margin:auto; ">	

	    <div style=" width:100%;margin:auto; position:relative; bottom:-60px; border-bottom:1px solid gray; padding:10px;">

    <h2 style="position:relative; ">2박 3일 &nbsp&nbsp <span style="color:gray; font-size:12px;"> <span style="color:black;">*</span>텍스트 클릭시 이미지를 확인할 수 있습니다 </span></h2>
    <span style="font-size:13px; color:gray; position:relative; bottom:50px;">(비용 약 55만원)</span>
	</div>
    <div style="position:relative; width:5%; bottom:-70px;  border-radius:1em; border:2px solid black; text-align:center; font-weight:bolder; font-size:20px; padding:1.5px; ">
        1일차 
        </div>
              
         <div style="position:relative;  bottom:-75px; font-weight:bolder; font-size:17px;">
          <pre>제주공항 도착→ 렌터카 사무소 → <a href="#" onclick="openImageDialog2()" style="color:black;">안돌오름</a> → <a href="#" onclick="openImageDialog3()" style="color:black;">함덕 해수욕장</a></pre>
         </div>
    
     <div style="position:relative; width:5%; bottom:-90px;  border-radius:1em; border:2px solid black; text-align:center; font-weight:bolder; font-size:20px; padding:1.5px; ">
        2일차 
        </div>
       
         <div style="position:relative;  bottom:-95px; font-weight:bolder; font-size:17px;">
          <pre><a href="#" onclick="openImageDialog4()" style="color:black;">제주 봄 스테이</a> →<a href="#" onclick="openImageDialog5()" style="color:black;">서귀다원</a>→ <a href="#" onclick="openImageDialog6()" style="color:black;">쇠소깍</a> → <a href="#" onclick="openImageDialog7()" style="color:black;">매일 올레시장</a> </pre>
         </div>

         <div style="position:relative; width:5%;  bottom:-115px; border-radius:1em; border:2px solid black; text-align:center; font-weight:bolder; font-size:20px; padding:1.5px; ">
        3일차 
        </div>
       
         <div style="position:relative; bottom:-120px;  font-weight:bolder; font-size:17px;">
          <pre><a href="#" onclick="openImageDialog4()" style="color:black;">제주 봄 스테이</a> → <a href="#" onclick="openImageDialog8()" style="color:black;">더 클리프</a> → <a href="#" onclick="openImageDialog9()" style="color:black;">오설록 티라운지</a> → <a href="#" onclick="openImageDialog10()" style="color:black;">981 파크 프로 아레나</a> → <a href="#" onclick="openImageDialog11()" style="color:black;">노티드 도넛</a> → 제주 공항 </pre>
         </div>
        
		                 <div style=" width:90%;margin:auto; position:relative; left:-5%;bottom:-160px; border-bottom:1px solid gray; padding:10px;">
    <h2>3박 4일 &nbsp&nbsp <span style="color:gray; font-size:12px;"> <span style="color:black;">*</span>텍스트 클릭시 이미지를 확인할 수 있습니다 </span></h2>
    </div>
	<span style="font-size:13px; color:gray; position:relative; bottom:-100px;">(비용 약 100만원)</span>
    <div style="position:relative; width:5%; bottom:-155px;  border-radius:1em; border:2px solid black; text-align:center; font-weight:bolder; font-size:20px; padding:1.5px; ">
        1일차 
        </div>
              
         <div style="position:relative;  bottom:-160px;  font-weight:bolder; font-size:17px;">
          <pre>제주공항 도착→ <a href="#" onclick="openImageDialog12()" style="color:black;">동문시장(저녁)</a> → <a href="#" onclick="openImageDialog13()" style="color:black;">월정리해변</a> 
         </div>
    
     <div style="position:relative; width:5%; bottom:-150px;  border-radius:1em; border:2px solid black; text-align:center; font-weight:bolder; font-size:20px; padding:1.5px; ">
        2일차 
        </div>
       
         <div style="position:relative;  bottom:-158px;  font-weight:bolder; font-size:17px;">
          <pre>고기국수 → <a href="#" onclick="openImageDialog15()" style="color:black;">우도</a> →<a href="#" onclick="openImageDialog16()" style="color:black;">광치기해변</a>→ <a href="#" onclick="openImageDialog17()" style="color:black;">유채꽃밭</a> → <a href="#" onclick="openImageDialog18()" style="color:black;">약천사</a>  → <a href="#" onclick="openImageDialog19()" style="color:black;">해물범벅</a></pre>
         </div>

         <div style="position:relative; width:5%; bottom:-170px; border-radius:1em; border:2px solid black; text-align:center; font-weight:bolder; font-size:20px; padding:1.5px; ">
        3일차 
        </div>
       
         <div style="position:relative;  bottom:-177px; font-weight:bolder; font-size:17px;">
          <pre><a href="#" onclick="openImageDialog15()" style="color:black;">바다의 집</a> → <a href="#" onclick="openImageDialog15()" style="color:black;">용눈이오름</a> → <a href="#" onclick="openImageDialog21()" style="color:black;">사려니숲길</a> → 시내(저녁) → <a href="#" onclick="openImageDialog22()" style="color:black;">레슬리 호텔</a>
         </div>
           <div style="position:relative; width:5%; bottom:-165px; border-radius:1em; border:2px solid black; text-align:center; font-weight:bolder; font-size:20px; padding:1.5px; ">
        4일차 
        </div> 
         <div style="position:relative;   bottom:-175px;font-weight:bolder; font-size:17px;">
          <pre><a href="#" onclick="openImageDialog23()" style="color:black;">성산일출봉</a> → <a href="#" onclick="openImageDialog24()" style="color:black;">절물자연 휴양림</a> → 제주 공항 </pre>
         </div>
	</div>
	</main>
</body>
</html>