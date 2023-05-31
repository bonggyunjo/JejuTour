<%@ page contentType="text/html" pageEncoding="utf-8"  %>
<%@ page import= "java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
		<%
	String id = (String)session.getAttribute("user_id");
	String name = (String)session.getAttribute("user_name");
%>
<html>
<head>
<style>
  body {
    background-size:100%;
      background-image: url("../Introduce/image.1111.png");
   
    }
    </style>
     <script>
    function openImageDialog() {
      var imageWindow = window.open("", "Image Dialog", "width=1000;,height=800;,modal=yes");
      imageWindow.document.write("<style>body { margin: 0; overflow: hidden; }</style>");
      imageWindow.document.write("<img src='../Course/IndividualImage/Individaul.png' style='display: block; margin: auto;'>");
    }
  </script>
     <script>
    function openImageDialog1() {
      var imageWindow = window.open("", "Image Dialog", "width=1000;,height=800;,modal=yes");
      imageWindow.document.write("<style>body { margin: 0; overflow: hidden; }</style>");
      imageWindow.document.write("<img src='../Course/IndividualImage/Individual1.png' style='display: block; margin: auto;'>");
    }
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
      imageWindow.document.write("<img src='../Course/IndividualImage/Individual12.png' style='display: block; margin: auto;'>");
    }function openImageDialog13() {
      var imageWindow = window.open("", "Image Dialog", "width=1000;,height=700;,modal=yes");
      imageWindow.document.write("<style>body { margin: 0; overflow: hidden; }</style>");
      imageWindow.document.write("<img src='../Course/IndividualImage/Individual13.png' style='display: block; margin: auto;'>");
    }function openImageDialog14() {
      var imageWindow = window.open("", "Image Dialog", "width=1000;,height=700;,modal=yes");
      imageWindow.document.write("<style>body { margin: 0; overflow: hidden; }</style>");
      imageWindow.document.write("<img src='../Course/IndividualImage/Individual14.png' style='display: block; margin: auto;'>");
    }function openImageDialog15() {
      var imageWindow = window.open("", "Image Dialog", "width=1000;,height=700;,modal=yes");
      imageWindow.document.write("<style>body { margin: 0; overflow: hidden; }</style>");
      imageWindow.document.write("<img src='../Course/IndividualImage/Individual15.png' style='display: block; margin: auto;'>");
    }function openImageDialog16() {
      var imageWindow = window.open("", "Image Dialog", "width=1000;,height=700;,modal=yes");
      imageWindow.document.write("<style>body { margin: 0; overflow: hidden; }</style>");
      imageWindow.document.write("<img src='../Course/IndividualImage/Individual16.png' style='display: block; margin: auto;'>");
    }function openImageDialog17() {
      var imageWindow = window.open("", "Image Dialog", "width=1000;,height=700;,modal=yes");
      imageWindow.document.write("<style>body { margin: 0; overflow: hidden; }</style>");
      imageWindow.document.write("<img src='../Course/IndividualImage/Individual17.png' style='display: block; margin: auto;'>");
    }function openImageDialog18() {
      var imageWindow = window.open("", "Image Dialog", "width=1000;,height=700;,modal=yes");
      imageWindow.document.write("<style>body { margin: 0; overflow: hidden; }</style>");
      imageWindow.document.write("<img src='../Course/IndividualImage/Individual18.png' style='display: block; margin: auto;'>");
    }function openImageDialog19() {
      var imageWindow = window.open("", "Image Dialog", "width=1000;,height=700;,modal=yes");
      imageWindow.document.write("<style>body { margin: 0; overflow: hidden; }</style>");
      imageWindow.document.write("<img src='../Course/IndividualImage/Individual19.png' style='display: block; margin: auto;'>");
    }function openImageDialog20() {
      var imageWindow = window.open("", "Image Dialog", "width=1000;,height=700;,modal=yes");
      imageWindow.document.write("<style>body { margin: 0; overflow: hidden; }</style>");
      imageWindow.document.write("<img src='../Course/IndividualImage/Individual20.png' style='display: block; margin: auto;'>");
    }function openImageDialog21() {
      var imageWindow = window.open("", "Image Dialog", "width=1000;,height=700;,modal=yes");
      imageWindow.document.write("<style>body { margin: 0; overflow: hidden; }</style>");
      imageWindow.document.write("<img src='../Course/IndividualImage/Individual21.png' style='display: block; margin: auto;'>");
    }function openImageDialog22() {
      var imageWindow = window.open("", "Image Dialog", "width=1000;,height=700;,modal=yes");
      imageWindow.document.write("<style>body { margin: 0; overflow: hidden; }</style>");
      imageWindow.document.write("<img src='../Course/IndividualImage/Individual22.png' style='display: block; margin: auto;'>");
    }function openImageDialog23() {
      var imageWindow = window.open("", "Image Dialog", "width=1000;,height=700;,modal=yes");
      imageWindow.document.write("<style>body { margin: 0; overflow: hidden; }</style>");
      imageWindow.document.write("<img src='../Course/IndividualImage/Individual23.png' style='display: block; margin: auto;'>");
    }function openImageDialog24() {
      var imageWindow = window.open("", "Image Dialog", "width=1000;,height=700;,modal=yes");
      imageWindow.document.write("<style>body { margin: 0; overflow: hidden; }</style>");
      imageWindow.document.write("<img src='../Course/IndividualImage/Individual24.png' style='display: block; margin: auto;'>");
    }function openImageDialog25() {
      var imageWindow = window.open("", "Image Dialog", "width=1000;,height=700;,modal=yes");
      imageWindow.document.write("<style>body { margin: 0; overflow: hidden; }</style>");
      imageWindow.document.write("<img src='../Course/IndividualImage/Individual25.png' style='display: block; margin: auto;'>");
    }function openImageDialog26() {
      var imageWindow = window.open("", "Image Dialog", "width=1000;,height=1000;,modal=yes");
      imageWindow.document.write("<style>body { margin: 0; overflow: hidden; }</style>");
      imageWindow.document.write("<img src='../Course/IndividualImage/Individual26.png' style='display: block; margin: auto;'>");
    }
  </script>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta name="viewport" content="width=device-width" , initial-scale="1">
		<link rel="stylesheet" href="../Main/basic.css">
		<link rel="stylesheet" href="../Main/header.css">
		<link href="https://fonts.googleapis.com/css2?family=Coming+Soon&family=Nanum+Gothic+Coding&display=swap"
			rel="stylesheet">
		<title>개인 여행 추천 코스</title>
</head>
<body link="gray" vlink="gray" alink="gray">
		<header>
	     <div class="header-align">

        <div id ="header-top" style="	position: relative;top: 5px;	width:100%;" >		

            <span style="float:left; position :relative; left:165px;" id="header-login-success-name" > <img src="../Login/login-image.png" style="width:40px;
                height:40px; float:left; "> &nbsp;&nbsp;<span style="font-weight:bolder; position:relative;
            top:10px; color:lightgray"><%= id%>(<%= name %>님) <span style="font-size:15px;">안녕하세요!</span></span> </span>
      
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
    <div style="height:1200px; width:88%; margin:auto;">

    <h1 style="text-align:center;"> 개인 여행 </h1>
    <span><img src="../Course/IndividualImage/IndividualLogo.png" style="width:100px; height:100px;"></span>
  
    <div style=" width:90%;margin:auto; position:relative; bottom:-60px; border-bottom:1px solid gray; padding:10px;">
    <h2>1박 2일  &nbsp&nbsp<span style="color:gray; font-size:12px;"> <span style="color:black;">*</span>버튼 클릭시 이미지를 확인할 수 가능합니다. </span> </h2>
    </div>
    <div style="position:relative; width:5%; bottom:-70px; left:5%; border-radius:1em; border:2px solid black; text-align:center; font-weight:bolder; font-size:20px; padding:1.5px; ">
        1일차 
        </div>
        <button onclick="openImageDialog()" style="position:relative; left:11.5%; bottom:-34px; height:35px; color:black; font-weight:700;">이미지로 상세보기</button>         
         <div style="position:relative;  bottom:-30px; left:5%; font-weight:bolder; font-size:17px;">
          <pre>공항 도착 → 평대 성게국수 → 성산항 → 우도 → 성산일출봉 → 가마솥 뼈다귀 해장국(식당) → 함덕해수욕장 → 카페 델문도 → 한라수목원</pre>
         </div>
    
     <div style="position:relative; width:5%; bottom:-35px; left:5%; border-radius:1em; border:2px solid black; text-align:center; font-weight:bolder; font-size:20px; padding:1.5px; ">
        2일차 
        </div>
         <button onclick="openImageDialog1()" style="position:relative; left:11.5%;  height:35px; color:black; font-weight:700;">이미지로 상세보기</button>  
         <div style="position:relative;  bottom:5px; left:5%; font-weight:bolder; font-size:17px;">
          <pre>숙소 → 보롬 왓 → 사려니숲길 → 각지불(식당) → 허니문하우스(카페) → 천지역폭포 → 외돌개 → 중문해수욕장 → 돈사돈 </pre>
         </div>
         

         <div style=" width:90%;margin:auto; position:relative; bottom:-60px; border-bottom:1px solid gray; padding:10px;">
    <h2>2박 3일 &nbsp&nbsp <span style="color:gray; font-size:12px;"> <span style="color:black;">*</span>텍스트 클릭시 이미지를 확인할 수 있습니다 </span></h2>
    </div>
    <div style="position:relative; width:5%; bottom:-70px; left:5%; border-radius:1em; border:2px solid black; text-align:center; font-weight:bolder; font-size:20px; padding:1.5px; ">
        1일차 
        </div>
              
         <div style="position:relative;  bottom:-55px; left:5%; font-weight:bolder; font-size:17px;">
          <pre>제주공항 도착→ 렌터카 사무소 → <a href="#" onclick="openImageDialog2()" style="color:black;">안돌오름</a> → <a href="#" onclick="openImageDialog3()" style="color:black;">함덕 해수욕장</a></pre>
         </div>
    
     <div style="position:relative; width:5%; bottom:-40px; left:5%; border-radius:1em; border:2px solid black; text-align:center; font-weight:bolder; font-size:20px; padding:1.5px; ">
        2일차 
        </div>
       
         <div style="position:relative;  bottom:-25px; left:5%; font-weight:bolder; font-size:17px;">
          <pre><a href="#" onclick="openImageDialog4()" style="color:black;">제주 봄 스테이</a> →<a href="#" onclick="openImageDialog5()" style="color:black;">서귀다원</a>→ <a href="#" onclick="openImageDialog6()" style="color:black;">쇠소깍</a> → <a href="#" onclick="openImageDialog7()" style="color:black;">매일 올레시장</a> </pre>
         </div>

         <div style="position:relative; width:5%; left:5%; bottom:-15px; border-radius:1em; border:2px solid black; text-align:center; font-weight:bolder; font-size:20px; padding:1.5px; ">
        3일차 
        </div>
       
         <div style="position:relative;  left:5%; font-weight:bolder; font-size:17px;">
          <pre><a href="#" onclick="openImageDialog4()" style="color:black;">제주 봄 스테이</a> → <a href="#" onclick="openImageDialog8()" style="color:black;">더 클리프</a> → <a href="#" onclick="openImageDialog9()" style="color:black;">오설록 티라운지</a> → <a href="#" onclick="openImageDialog10()" style="color:black;">981 파크 프로 아레나</a> → <a href="#" onclick="openImageDialog11()" style="color:black;">노티드 도넛</a> → 제주 공항 </pre>
         </div>
        

        
                 <div style=" width:90%;margin:auto; position:relative; bottom:-60px; border-bottom:1px solid gray; padding:10px;">
    <h2>3박 4일 &nbsp&nbsp <span style="color:gray; font-size:12px;"> <span style="color:black;">*</span>텍스트 클릭시 이미지를 확인할 수 있습니다 </span></h2>
    </div>
    <div style="position:relative; width:5%; bottom:-70px; left:5%; border-radius:1em; border:2px solid black; text-align:center; font-weight:bolder; font-size:20px; padding:1.5px; ">
        1일차 
        </div>
              
         <div style="position:relative;  bottom:-55px; left:5%; font-weight:bolder; font-size:17px;">
          <pre>제주공항 도착→ <a href="#" onclick="openImageDialog12()" style="color:black;">한담해안산책도로</a> → <a href="#" onclick="openImageDialog13()" style="color:black;">협재/금능 해수욕장</a> → <a href="#" onclick="openImageDialog14()" style="color:black;">한림공원</a>→ <a href="#" onclick="openImageDialog15()" style="color:black;">수월봉</a> → 숙박 : 서부</pre>
         </div>
    
     <div style="position:relative; width:5%; bottom:-40px; left:5%; border-radius:1em; border:2px solid black; text-align:center; font-weight:bolder; font-size:20px; padding:1.5px; ">
        2일차 
        </div>
       
         <div style="position:relative;  bottom:-25px; left:5%; font-weight:bolder; font-size:17px;">
          <pre><a href="#" onclick="openImageDialog16()" style="color:black;">오설록</a> →<a href="#" onclick="openImageDialog17()" style="color:black;">산방산</a>→ <a href="#" onclick="openImageDialog18()" style="color:black;">천제연 폭포</a> → <a href="#" onclick="openImageDialog20()" style="color:black;">약천사</a>  → 대포주상 → 숙박: 중문</pre>
         </div>

         <div style="position:relative; width:5%; left:5%; bottom:-15px; border-radius:1em; border:2px solid black; text-align:center; font-weight:bolder; font-size:20px; padding:1.5px; ">
        3일차 
        </div>
       
         <div style="position:relative;  ; left:5%; font-weight:bolder; font-size:17px;">
          <pre>외돌개 → 이중섭거리 → <a href="#" onclick="openImageDialog21()" style="color:black;">천지연폭포</a> → 숙박 : 서귀포 시내
         </div>
           <div style="position:relative; width:5%; left:5%; bottom:30px; border-radius:1em; border:2px solid black; text-align:center; font-weight:bolder; font-size:20px; padding:1.5px; ">
        4일차 
        </div> 
         <div style="position:relative;  left:5%; bottom:40px;font-weight:bolder; font-size:17px;">
          <pre><a href="#" onclick="openImageDialog22()" style="color:black;">성산일출봉</a> → <a href="#" onclick="openImageDialog23()" style="color:black;">시려니숲길</a> → <a href="#" onclick="openImageDialog24()" style="color:black;">절물자연 휴양림</a> → <a href="#" onclick="openImageDialog25()" style="color:black;">제주 돌문화 공원</a> → <a href="#" onclick="openImageDialog26()" style="color:black;">무지개 해안도로</a> → 제주 공항 </pre>
         </div>


         </div>
    </main>
</body>
</html>