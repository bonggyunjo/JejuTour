<%@ page contentType="text/html" pageEncoding="utf-8"  %>
<%@ page import= "java.sql.*" %>
<%@ page import="javax.servlet.http.HttpSession" %>

     <%

    	String id = (String) session.getAttribute("user_id");
    String name = (String) session.getAttribute("user_name");
    String carType = (String) session.getAttribute("car");
     String year = (String) session.getAttribute("year");
      String seating = (String) session.getAttribute("seating");
       String startday = (String) session.getAttribute("startday");
        String time = (String) session.getAttribute("time");
          String price = (String) session.getAttribute("price");
%>
<!DOCTYPE html>
<html lang="en">
    
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="stylesheet" href="basic.css">  
    <link rel="stylesheet" href="SuccessMypage.css">  
   
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
   
    <title>차량 예약 확인</title>
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
        <div style="width:30%; height:500px; border:2px solid black; border-radius:1em; margin:auto; padding:20px;">

           <div style="width:100%: margin:auto; padding:13px; " ><h2 >아이디 : <%= id %></h2> </div>
       <div style=" width:100%: margin:auto; padding:13px; "><h2 >이름 : <%= name %></h2> </div>
       <div style=" width:100%: margin:auto; padding:13px;"><h2 >모델 : <%= carType %> </h2> </div>
     <div style=" width:100%: margin:auto;  padding:13px;"> <h2 >차종 : <%= year %> </h2>  </div>
     <div style=" width:100%: margin:auto;  padding:13px;"> <h2 >인승 :   <%= seating %> </h2>  </div>
      <div style=" width:100%: margin:auto;  padding:13px;"> <h2 >날짜 : <%= startday %> </h2>  </div>
     <div style=" width:100%: margin:auto;  padding:13px;"> <h2 >대여 시간 : <%= time %> </h2> </div>
     <div style=" width:100%: margin:auto;  padding:13px; "><h2 >금액 : <%= price %> </h2>  </div>
          
        </div>
        
        </main>
</body>
</html>