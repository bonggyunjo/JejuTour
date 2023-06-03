<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
	<%@ page session="true" %>
		<%
	String id = (String)session.getAttribute("user_id");
	String name = (String)session.getAttribute("user_name");
  
        %>
	<html>

	<head>
	<style>
body {
      background-image: url("../Introduce/image.1111.png");  
	background-repeat:no-repeat;
      background-size:100%;
	  overflow:hidden;
    }
	</style>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta name="viewport" content="width=device-width" , initial-scale="1">
		<link rel="stylesheet" href="css/bootstrap.css">
		<link rel="stylesheet" href="../Main/basic.css">
		<link rel="stylesheet" href="../Main/header.css">
		<link rel="stylesheet" href="../Main/dropdown.css">
		<link rel="stylesheet" href="../Main/mainview.css">
		<link href="https://fonts.googleapis.com/css2?family=Coming+Soon&family=Nanum+Gothic+Coding&display=swap"
			rel="stylesheet">
		<title>제주특별시 여행 안내 가이드</title>
	</head>

	<body link="gray" vlink="gray" alink="gray">
		<header>
	     <div class="header-align">

        <div id ="header-top" style="	position: relative;top: 5px;	width:100%;" >		

            <span style="float:left; position :relative; left:165px;" id="header-login-success-name" > <img src="login-image.png" style="width:40px;
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
            <h1><a href="../Login/login_welcome.jsp" style="color:#77c466; text-decoration: none; "> 제주<span style="color:black;">어서옵세</span>  </a></h1>
        </div>
        
        </div>
		
		<nav id="menubar">
			<ul class="menu">
				<li>
				  <a href="../Introduce/Introduce.jsp">소개</a>
				</li>
				<li>
				  <a href="../Lodgment/Lodgment.jsp">숙박</a>
				</li>
				<li>
				  <a href="#">이동 수단</a>
				  <ul class="submenu2">
					<li><a href="../Transportation/PublicTransport.jsp">대중 교통</a></li>
					<li><a href="../Transportation/RentalCar.jsp">렌트</a></li>
				  </ul>
				</li>
				<li>
				  <a href="#">추천 코스</a>
				  <ul class="submenu3">
					<li><a href="../Course/IndividualCourse.jsp">혼자 왔수</a></li>
					<li><a href="../Course/CoupleCourse.jsp">커플 왔수</a></li>
					<li><a href="../Course/FriendCourse.jsp">친구 왔수</a></li>
					<li><a href="../Course/FamilyCourse.jsp">가족 왔수</a></li>
				  </ul>
				</li>
				<li>
				  <a href="../QandA/QandA.jsp">Q&A</a>
				  
				</li>
			  </ul>
		</nav>
		<main>
			<div class="main-cotainer">
				<div class="main-picture">
					<ul>
						<li><img src="../Main/jejupic1.png" style=" width:50%; height:60%;"></li>
						<li><img src="../Main/jejupic4.png" style=" width:50%; height:60%;"></li>
						<li><img src="../Main/jejupic2.png" style=" width:50%; height:60%;"></li>
						<li><img src="../Main/jejupic3.png" style=" width:50%; height:60%;"></li>						
					</ul>
				</div>
			</div>
		</main>
		<footer>
			<div id="footer-tel">
				<span>
					<h4 style="color:black;">TEL : 010 - 2531 - 5383 </h4>
					<h4 style="color:black;">If you have any suggestions, please call this number</h4>
				</span>
			</div>
		</footer>
	</body>

	</html>