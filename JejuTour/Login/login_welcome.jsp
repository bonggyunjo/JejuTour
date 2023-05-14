<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
	<%
	String id = (String)session.getAttribute("user_id");
	String name = (String)session.getAttribute("user_name");
%>
	<html>

	<head>

		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta name="viewport" content="width=device-width" , initial-scale="1">
		<link rel="stylesheet" href="loginbasic.css">
		<link rel="stylesheet" href="login_welcome.css">
		<link rel="stylesheet" href="menubar.css">
		<link rel="stylesheet" href="mainview.css">
		<link href="https://fonts.googleapis.com/css2?family=Coming+Soon&family=Nanum+Gothic+Coding&display=swap"
			rel="stylesheet">
		<title>제주특별시 여행 안내 가이드</title>
	</head>

	<body link="gray" vlink="gray" alink="gray">
		<header>
	     <div class="header-align">

        <div id ="header-top" >		

            <span style="float:left; position :relative; left:128px;" id="header-login-success-name" > <img src="login-image.png" style="width:40px;
                height:40px; float:left; "> &nbsp;&nbsp;<span style="font-weight:bolder; position:relative;
            top:10px; color:lightgray"><%= id%>(<%= name %>님) <span style="font-size:15px;">안녕하세요!</span></span> </span>
      
	   <span>
            <a href="../Logout/logout.jsp" style="float:right; position :relative; left:-6.5%;">
            | 로그아웃 </a>
        </span>

        <span>
			<a href="../MyPage/loginSuccessMyPage.jsp" style="float:right; position :relative; left:-6.5%;">
           마이페이지&nbsp </a>
        </span>	
       
        </div>
        
        <div id="header-mainname">
            <h1><a href="../Login/login_welcome.jsp" style="color:#77c466; text-decoration: none; "> 제주어서옵세 </a></h1>
        </div>
        
        </div>
		
		</header>
		<nav id="menubar">
			<ul id="nav-list">
				<ul class="menu">
					<li>
						<a>메뉴</a>
						<ul class="submenu">
							<li><a href="../Introduce/Introduce.jsp">소개 </a></li>
							<li><a href="Iodgment.jsp">숙박</a></li>
							<li><a href="Transportation.jsp">이동수단</a></li>
							<li><a href="Course.jsp">추천 코스</a></li>
							<li><a href="NoticeBoard.jsp">게시판</a></li>
						</ul>
					</li>
				</ul>
			</ul>
		</nav>
		<main>
			<div class="main-cotainer">
				<div class="main-picture">
					<ul>
						<li><img src="../Main/jejupic1.png" style=" width:50%; height:60%;"></li>
						<li><img src="../Main/jejupic2.png" style=" width:50%; height:60%;"></li>
						<li><img src="../Main/jejupic3.png" style=" width:50%; height:60%;"></li>
					</ul>
				</div>
			</div>
		</main>
		<footer>
			<div id="footer-tel">
				<span>
					<h4>TEL : 010 - 0000 - 0000 </h4>
				</span>
			</div>
		</footer>
	</body>

	</html>