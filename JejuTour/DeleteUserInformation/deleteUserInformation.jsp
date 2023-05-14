<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
	String id = (String)session.getAttribute("user_id");
	String name = (String)session.getAttribute("user_name");
%>

<html>
<head>

    <title>탈퇴 화면</title>
    
    <style type="text/css">
        table{
            margin-left:auto; 
            margin-right:auto;
            border:3px solid skyblue;
        }
        
        td{
            border:1px solid skyblue
        }
        
        #title{
            background-color:skyblue
        }
    </style>
    
    <script >
        // 비밀번호 미입력시 경고창
        function checkValue(){
            if(!document.deleteform.password.value){
                alert("비밀번호를 입력하지 않았습니다.");
                return false;
            }
        }
    </script>
     <link rel="stylesheet" href="delete.css">
       <link rel="stylesheet" href="../Main/basic.css">
</head>
<body link="gray" vlink="gray" alink="gray">
 <header>
        <div class="header-align">
        <div id ="header-top" >		
            <span style="float:left; position :relative; top:0px; " id="header-login-success-name" > <img src="../Login/login-image.png" style="width:40px;
                height:40px; float:left; "> &nbsp;&nbsp;<span style="font-weight:bolder; position:relative;
            top:10px; color:lightgray"><%= id%> (<%= name %>님) </span> </span>
      
       
        <span>
            <a href="../Logout/logout.jsp"  style="position :relative; left:-3.2%; top:6px;">
             로그아웃</a>
        </span>
        </div>
        
        <div id="header-mainname">
            <h1><a href="../Login/login_welcome.jsp" style="color:#77c466; text-decoration: none;"> 제주어서옵세 </a></h1>
        </div>
        
        </div>
        </header>
        <main>
        <div style="width:80%; height:500px; margin: auto;"> 
    <div style="text-align:center; position:relative; top : 32px; width:100%; border-bottom : 1px solid lightgray"> 
    <h1 style="font-size:35px;">회원 탈퇴</h1> </div> 
   
    <div style="margin : auto; width:100%; padding:150px;">

    <form name="deleteform" method="post" action="../DeleteUserInformation/delete_ok.jsp"
        onsubmit="return checkValue()">
        

             <div style="text-align:center;">  <span style="font-size:18px; font-weight:bold;">비밀번호 : </span>
             <input type="password" name="password" maxlength="50" style="height:35px; width:20%;"> </div>
       
        
        <div style="padding : 50px; text-align:center;">
        <input type="button" value="취소" style="height:40px; width:14%; font-weight:bold; font-size:15px; border-radius: 1em;  
        background-color: lightgray; border: 2px solid darkgray;
        position:relative; left:-3%;" onclick="javascript:window.location='../MyPage/loginSuccessMyPage.jsp'">

        <input type="submit"  value="탈퇴" style="height:40px; width:14%; font-weight:bold; font-size:15px;  border-radius: 1em;  
        background-color: lightgray; border: 2px solid darkgray;
        position:relative; right:-3%; " /> 
        </div>
    </form>
    </div>
    <main>
</body>
</html>
