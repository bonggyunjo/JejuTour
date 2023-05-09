<%@ page contentType="text/html" pageEncoding="utf-8"  %>
<%@ page import= "java.sql.*" %>
<%
	String id = (String)session.getAttribute("user_id");
	String name = (String)session.getAttribute("user_name");
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="login_welcome.css">
<link rel="stylesheet" href="loginbasic.css">
<meta name="viewport" content="width=device-width", initial-scale="1">
<link href="https://fonts.googleapis.com/css2?family=Coming+Soon&family=Nanum+Gothic+Coding&display=swap" rel="stylesheet" >
<title>Insert title here</title>
</head>

<body link="gray" vlink="gray" alink="gray">
	<header>
        <div class="header-align">
        <div id ="header-top">		
            <span style="float:left;" id="header-login-success-name" > <img src="login-image.png" >&nbsp;&nbsp;<span style="font-weight:bolder; position:relative;
            top:10px; color:lightgray"><%= id%>(<%= name %>님)</span> </span>
      
        <span>
			<a href="http://101.101.218.251:8080/JejuTour/MyPage/loginSuccessMyPage.jsp">
            마이페이지</a>
        </span>	
        <span>
            <a href="http://101.101.218.251:8080/JejuTour/login/logout.jsp">
            | 로그아웃</a>
        </span>
        </div>
        
        <div id="header-mainname">
            <h1><a href="http://101.101.218.251:8080/JejuTour/login/login_welcome.jsp" style="color:#77c466; text-decoration: none;"> 제주어서옵세 </a></h1>
        </div>
        
        </div>
        </header>
        <nav id="menubar">
            <div id="nav-align">
                <ul id="nav-list">
                
                <li> <a href="http://101.101.218.251:8080/JejuTour/Introduce/Introduce.jsp">소개</a></li>
                <li><a href="Iodgment.jsp" >숙박</a></li>
                <li><a href="Transportation.jsp" >이동 수단</a></li>
                <li><a href="Course.jsp" >추천 코스</a></li>
                <li><a href="NoticeBoard.jsp" >게시판</a></li>
            
                </ul>
            </div>
            </nav>
            <main>
            <div id ="main-align">
            <div id="main-picture">
                <img src="main.png">
            </div>
            </div>
            </main>
            <footer>
            <div id = "footer-tel">
                <span>
                    <h4>TEL : 010 - 0000 - 0000 </h4>
                </span>
            </div>
            </footer>
        </body>
        </html>