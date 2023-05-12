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
    <title>Document</title>
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
            <a href="../Login/logout.jsp"  style="position :relative; left:-3.2%;">
            | 로그아웃</a>
        </span>
        </div>
        
        <div id="header-mainname">
            <h1><a href="../Login/login_welcome.jsp" style="color:#77c466; text-decoration: none;"> 제주어서옵세 </a></h1>
        </div>
        
        </div>
        </header>
        
        <main>
            <div id="main-align">
                <div id="title"> <h1><i>My Page</i></h1> </div>
                <div id="text-first">
            <span><h1>사용자 정보 관리</a></h1></span>
        </div>
            <div id="update-user-information">
            <span><h2><a href="../UpDate/upDate.jsp" style="color:black">회원 정보 수정</a></h2></span>
            </div>
            <div id="delete-user-information">
            <span><h2>회원 탈퇴</h2></span>
            </div>
            <div id="reserve-user">
            <span> <h1>사용자 예약 관리</h1></span>           
            </div>
            <div id="reserve-ok">
            <span> <h2>예약 확인</h2></span>
            </div>
        </div>
        </main>
       
</body>
</html>