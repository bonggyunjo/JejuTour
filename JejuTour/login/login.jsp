<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    String errMsg = (String)session.getAttribute("errMsg");
    if(errMsg==null) errMsg="";
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="login.css">
<link rel="stylesheet" href="loginbasic.css">
<meta name="viewport" content="width=device-width", initial-scale="1">
<link rel="stylesheet" href="css/bootstrap.css">
<link href="https://fonts.googleapis.com/css2?family=Coming+Soon&family=Nanum+Gothic+Coding&display=swap" rel="stylesheet" >
<title>로그인</title>
</head>
<body link="gray" vlink="gray" alink="gray">
    <header>
        <div class="header-align">
        <div id ="header-top">		
        <span>
             <a href="mypage.jsp"  >
              마이페이지 |
              </a>
        <span>
        <span>
             <a href="http://101.101.218.251:8080/JejuTour/login/login.jsp"  >
              로그인 |
              </a>
        <span>
        <a href="membership.jsp" >
            회원가입
            </a>
        </span>	
        </div>
        
        <div id="header-mainname">
            <h1> 제주어서옵세   </h1>
        </div>
        
        </div>
        </header>
    <main>
        <div id="header-align">
        <h1>로그인</h1>
        <div >
	<form action="login_ok.jsp" method="post">
        <div id="id-align">
		아이디 : <input type="text" name="id"><br/>
        </div>
        <div id="pw-align">
		비밀번호 : <input type="password" name="pw"> <br/>
        </div>  
        <div  >
				<input type="submit" value="로그인" style="height: 45px; width: 135px; float: left; right:-105px; position: relative;">
                <button style="height : 45px; width: 135px; float: left; right:-170px; position: relative;">
                    <a href="http://101.101.218.251:8080/JejuTour/JejuTour/login/membership/membership.jsp">회원가입</a></button>
				<div id="errMsg" style="color:red"> <%= errMsg %> </div>
            </div>
            </div>
        </div>
        </main>
	</form>
</body>
</html>