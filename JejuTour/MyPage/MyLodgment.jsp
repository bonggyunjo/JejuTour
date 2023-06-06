<%@ page contentType="text/html" pageEncoding="utf-8"  %>
<%@ page import= "java.sql.*" %>
<%@ page import="javax.servlet.http.HttpSession" %>

     <%
    String id = (String) session.getAttribute("user_id");
    String name = (String) session.getAttribute("user_name");
    String hotel  = (String) session.getAttribute("hotel");
    String date = (String) session.getAttribute("date");
    String man = (String) session.getAttribute("man");
    String price = (String) session.getAttribute("price");
   
%>
<!DOCTYPE html>
<html lang="en">
    
<head>
<style>
    body {
      background-image: url("../Introduce/image.1111.png");
	background-repeat:no-repeat;
      background-size:100%;
	  overflow:hidden;
    }
  </style>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="stylesheet" href="basic.css">  
    <link rel="stylesheet" href="SuccessMypage.css">  
   
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
   
    <title>숙박 예약 확인</title>
</head>
<body link="gray" vlink="gray" alink="gray">

    <header>
        <div class="header-align">
        <div id ="header-top" >		
            <span style="float:left; position :relative; top:0px; " id="header-login-success-name" > <img src="login-image.png" style="width:40px;
                height:40px; float:left; "> &nbsp;&nbsp;<span style="font-weight:bolder; position:relative;
            top:10px; color:lightgray"><%= id%>(<%= name %>님)</span> </span>
      
        <span>
			<a href="../MyPage/loginSuccessMyPage.jsp"  style="position :relative; left:-3.2%;">
            마이페이지</a>
        </span>       	
        <span>
            <a href="../Logout/logout.jsp"  style="position :relative; left:-3.2%;">
            | 로그아웃</a>
        </span>
        </div>
        
        <div id="header-mainname">
            <h1><a href="../Login/login_welcome.jsp" style="color:#77c466; text-decoration: none;"> 제주<span style="color:black;">어서옵세</span>  </a></h1>
        </div>
        
        </div>
        </header>
        <main>
        <div>
        <h1 style="text-align:center; margin:auto; width:100%; position:relative; bottom:-40px;">예약 확인</h1>
        <span style="position:relative; left:55%; bottom:30px;"><img src="../MyPage/MyInformation.png" style="width:100px; height:65px;"></span>
        </div>
        <div style="width:30%; height:400px; border:2px solid black; border-radius:1em; margin:auto; padding:20px;">

           <div style="width:100%: margin:auto; padding:13px; " ><h2 >아이디 : <%= id %></h2> </div>
       <div style=" width:100%: margin:auto; padding:13px; "><h2 >이름 : <%= name %></h2> </div>
        <div style=" width:100%: margin:auto; padding:13px;"><h2 >모델 : <%= hotel %> </h2> </div>
        <div style=" width:100%: margin:auto;  padding:13px;"> <h2 >차종 : <%= date %> </h2>  </div>  
            <div style=" width:100%: margin:auto; padding:13px;"><h2 >모델 : <%= man %> </h2> </div>
     <div style=" width:100%: margin:auto;  padding:13px;"> <h2 >차종 : <%= price %> </h2>  </div>
   
        </div>
                <div style="text-align:center; margin:auto; padding:20px;">
  
         <button style="background-color:white; height:45px; width:8%; position:relative;"> <a href="LodgmentDelete.jsp"><span style="font-weight:bolder; color:black;">취소하기</span></a></button>
         
         </div>
        </main>
</body>
</html>