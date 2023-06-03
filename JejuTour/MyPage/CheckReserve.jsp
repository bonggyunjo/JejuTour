<%@ page contentType="text/html" pageEncoding="utf-8"  %>
<%
	String id = (String)session.getAttribute("user_id");
	String name = (String)session.getAttribute("user_name");
%>
<!DOCTYPE html>
<html lang="en">
    
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="stylesheet" href="basic.css">  
    <link rel="stylesheet" href="SuccessMypage.css">  
   
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>체크</title>
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
        <form action="../MyPage/ReserverOk.jsp">
        <div style="text-align:center; position:relative; bottom: -250px; font-weight:bolder; font-size:20px; ">
        모델명 :  <input type="text" name="carType" style="height:37px; width:13%; border:2px solid;">
            <input type="submit" value="확인하기" style="width:5%; height:40px; font-weight:bolder;">
        </div>
        </form>
        </main>
       
</body>
</html>