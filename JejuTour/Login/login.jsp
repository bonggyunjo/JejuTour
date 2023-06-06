<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

  
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
    <script>
        function check(){
            if(document.getElementById("id").value==""){
                alert("아이디를 입력하세요");
                return;
            }
            if(document.getElementById("pw").value==""){
                alert("비밀번호를 입력하세요");
                return;
            }
         
            frm.submit(); //직접 submit()이라는 메소드를 호출. 액션을 들고 가줌
        }
        </script>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="login.css">
<link rel="stylesheet" href="loginbasic.css">
<meta name="viewport" content="width=device-width", initial-scale="1">
<link href="https://fonts.googleapis.com/css2?family=Coming+Soon&family=Nanum+Gothic+Coding&display=swap" rel="stylesheet" >

<title>로그인</title>
</head>
<body link="gray" vlink="gray" alink="gray">
    <header>
        <div class="header-align">
        <div id ="header-top">		
        <span>
             <a href="../Login/login.jsp"  >
              마이페이지 |
              </a>
            </span>
        <span>
             <a href="../Login/login.jsp"  >
              로그인 |
              </a>
        </span>
        <span>
        <a href="../Membership/membership.jsp" >
            회원가입
            </a>
        </span>	
        </div>
        
        <div id="header-mainname">
            <h1><a href="../Main/main.jsp" style="color:#77c466; text-decoration: none;">  제주<span style="color:black;">어서옵세</span>  </a></h1>
        </div>
        
        </div>
        </header>
    <main>
        <div id="main-align">
        <h1>로그인</h1>
                <img src="../Login/login.png" style="width:90px; height:65px;">
        <div >
	<form action="./login_ok.jsp" method="post" name="frm">
        <div id="id-align">
		아이디 : <input type="text" name="id" id="id" placeholder="Username"  style="  height:35px; width:26%; border: 2px solid lightgray;"><br/>
        </div>
        <div id="pw-align">
		비밀번호 : <input type="password" name="pw" placeholder="Password" id="pw" style=" height:35px; width:26%; border: 2px solid lightgray;"> <br/>
        </div>  
        <div id="button-going">
				<input type="submit" value="로그인" onclick="check()" style="height: 60px; width: 17.5%; float: left; right:-6%; position: relative;
                background-color: lightgray; border-radius: 1em; border-color: black;  border: 2px solid darkgray; font-weight:bolder; ">

                <button style="height : 60px; width: 17.5%; float: left; right:-17%; position: relative;
                background-color: lightgray; border-radius: 1em; border-color: black; border: 2px solid darkgray; font-weight:bolder;">

                    <a href="../Membership/membership.jsp" style="color: black; 
                    text-decoration: none;">회원가입</a></button>
                    
                    
            </div>
            </div>
            <div id="errMsg" style="color:red">  </div>
        </div>
       
        </main>
	</form>
</body>
</html>