<%@ page contentType="text/html" pageEncoding="utf-8"  %>
<%@ page import= "java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<head>
<script>
  
 function openImageDialog() {
      var imageWindow = window.open("", "Image Dialog", "width=1200,height=1000;,modal=yes");
      imageWindow.document.write("<style>body { margin: 0; overflow: hidden; }</style>");
      imageWindow.document.write("<img src='../Course/FamilyImage/2.3Image.png' style='display: block; margin: auto;'>");
    } function openImageDialog1() {
      var imageWindow = window.open("", "Image Dialog", "width=1200,height=1000;,modal=yes");
      imageWindow.document.write("<style>body { margin: 0; overflow: hidden; }</style>");
      imageWindow.document.write("<img src='../Course/FamilyImage/FamilyCourse1.png' style='display: block; margin: auto;'>");
    }  function openImageDialog2() {
      var imageWindow = window.open("", "Image Dialog", "width=1200,height=1000;,modal=yes");
      imageWindow.document.write("<style>body { margin: 0; overflow: hidden; }</style>");
      imageWindow.document.write("<img src='../Course/FamilyImage/FamilyCourse2.png' style='display: block; margin: auto;'>");
    }  function openImageDialog3() {
      var imageWindow = window.open("", "Image Dialog", "width=1200,height=1000;,modal=yes");
      imageWindow.document.write("<style>body { margin: 0; overflow: hidden; }</style>");
      imageWindow.document.write("<img src='../Course/FamilyImage/FamilyCourse3.png' style='display: block; margin: auto;'>");
    }  function openImageDialog4() {
      var imageWindow = window.open("", "Image Dialog", "width=1200,height=1000;,modal=yes");
      imageWindow.document.write("<style>body { margin: 0; overflow: hidden; }</style>");
      imageWindow.document.write("<img src='../Course/FamilyImage/FamilyCourse4.png' style='display: block; margin: auto;'>");
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
	<h1 style="text-align:center;">가족 여행</h1>

	<span><img src="../Course/FamilyImage/Family.png" style="width:225px; height:125px;"></span>
	<div style=" border-radius:1em; border-top:2px solid; height:900px; width:80%; margin:auto; bottom:2px; position:relative; ">	

	    <div style=" width:100%;margin:auto; position:relative; bottom:-60px; border-bottom:1px solid gray; padding:10px;">

    <h2 style="position:relative; ">2박 3일 &nbsp&nbsp <span style="color:gray; font-size:12px;"> <span style="color:black;">*</span>버튼 클릭시 이미지를 확인할 수 있습니다 </span></h2>
    <span style="font-size:13px; color:gray; position:relative; bottom:50px;">(비용 약 105만원)</span>
	</div>
    <div style="position:relative; width:5%; bottom:-70px;  border-radius:1em; border:2px solid black; text-align:center; font-weight:bolder; font-size:20px; padding:1.5px; ">
        1일차 
        </div>
                <button onclick="openImageDialog()" style="position:relative; left:6%; bottom:-34px; height:35px; color:black; font-weight:700;">이미지로 상세보기</button>         
         <div style="position:relative;  bottom:-45px; font-weight:bolder; font-size:17px;">
          <pre> 제주 도착 → 애월한담해변 → 새별오름 → 왕따나무 → 이시돌 목장 → 제주 위 호텔  </pre>
         </div>
    
     <div style="position:relative; width:5%; bottom:-60px;  border-radius:1em; border:2px solid black; text-align:center; font-weight:bolder; font-size:20px; padding:1.5px; ">
        2일차 
        </div>
       
         <div style="position:relative;  bottom:-65px; font-weight:bolder; font-size:17px;">
       <pre> 해안도로 드라이브 → 우도 여행 → 설지코치 → 제주민속촌 → 휴애리 → 서귀포 자연휴양림 → 호텔
         </div>

         <div style="position:relative; width:5%;  bottom:-65px; border-radius:1em; border:2px solid black; text-align:center; font-weight:bolder; font-size:20px; padding:1.5px; ">
        3일차 
        </div>
       
         <div style="position:relative; bottom:-70px;  font-weight:bolder; font-size:17px;">
          <pre> 제주 유탑유블레스 호텔 → 안돌오름 비밀의 숲 → 산굼부리 → 사려니 숲길 → 애포랜드 → 제주돌문화공원 → 제주 국제공항
         </div>
        
		                 <div style=" width:90%;margin:auto; position:relative; left:-5%;bottom:-160px; border-bottom:1px solid gray; padding:10px;">
    <h2>3박 4일 &nbsp&nbsp <span style="color:gray; font-size:12px;"> <span style="color:black;">*</span>텍스트 클릭시 이미지를 확인할 수 있습니다 </span></h2>
    </div>
	<span style="font-size:13px; color:gray; position:relative; bottom:-100px;">(비용 약 137만원)</span>
    <div style="position:relative; width:5%; bottom:-155px;  border-radius:1em; border:2px solid black; text-align:center; font-weight:bolder; font-size:20px; padding:1.5px; ">
        1일차 
        </div>
              
         <div style="position:relative;  bottom:-160px;  font-weight:bolder; font-size:17px;">
          <pre> 제주 국제공항 → 어승생악 → 애월카페거리 → 한담해안 산책로 → 협재숙소 → 금오름
         </div>
     <button onclick="openImageDialog1()" style="position:relative; left:6%; bottom:-77px; height:35px; color:black; font-weight:700;">이미지로 상세보기</button>   
     <div style="position:relative; width:5%; bottom:-120px;  border-radius:1em; border:2px solid black; text-align:center; font-weight:bolder; font-size:20px; padding:1.5px; ">
        2일차 
        </div>
       
         <div style="position:relative;  bottom:-128px;  font-weight:bolder; font-size:17px;">
          <pre> 호텔샌드 → 금능해수욕장 → 생이기정 → 용머리해안 → 카멜리아힐 → 군산오름 → 천지연폭포 → 새연교 → 숙소
         </div>
	 <button onclick="openImageDialog2()" style="position:relative; left:6%; bottom:-47px; height:35px; color:black; font-weight:700;">이미지로 상세보기</button>   
         <div style="position:relative; width:5%; bottom:-90px; border-radius:1em; border:2px solid black; text-align:center; font-weight:bolder; font-size:20px; padding:1.5px; ">
        3일차
        </div>
       
         <div style="position:relative;  bottom:-107px; font-weight:bolder; font-size:17px;">
          <pre> 중문해변 더클리프(카페) → 테디베어뮤지엄 → 칠십리시공원 → 보롬왓 → 섭지코지
         </div>
		  <button onclick="openImageDialog3()" style="position:relative; left:6%; bottom:-17px; height:35px; color:black; font-weight:700;">이미지로 상세보기</button>   
           <div style="position:relative; width:5%; bottom:-65px; border-radius:1em; border:2px solid black; text-align:center; font-weight:bolder; font-size:20px; padding:1.5px; ">
        4일차 
        </div> 
         <div style="position:relative;   bottom:-75px;font-weight:bolder; font-size:17px;">
          <pre> 혼인지 → 맛나식당 → 광치기해변 → 제주레알바이크 →비자림 → 함덕해수욕장 → 제주 국제공항
		  </pre>
         </div>
		  <button onclick="openImageDialog4()" style="position:relative; left:6%; bottom:7px; height:35px; color:black; font-weight:700;">이미지로 상세보기</button>   
	</div>
	</main>
</body>
</html>