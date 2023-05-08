<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
 <link rel = "stylesheet" href="membershipbasic.css">
 <link rel = "stylesheet" href="membership.css">
 <meta name="viewport" content="width=device-width", initial-scale="1">
<title>Insert title here</title>
</head>

<body link="gray" vlink="gray" alink="gray">
    <header>
        <div class="header-align">
        <div id ="header-top">		
        <span>
             <a href="http://101.101.218.251:8080/JejuTour/mypage.jsp"  >
              마이페이지 |
              </a>
        <span>
        <span>
             <a href="http://101.101.218.251:8080/JejuTour/login/login.jsp"  >
              로그인 |
              </a>
        <span>
        <a href="http://101.101.218.251:8080/JejuTour/membership/membership.jsp" >
            회원가입
            </a>
        </span>	
        </div>
        
        <div id="header-mainname">
            <h1><a href="http://101.101.218.251:8080/JejuTour/main.jsp" style="color:#77c466; text-decoration: none;"> 제주어서옵세 </a>  </h1>
        </div>
        
        </div>
        </header>

    <main>
        <div id="main-align">

	<h2>회원가입</h2>
	<form action="http://101.101.218.251:8080/JejuTour/membership/join_ok.jsp" method="post" onsubmit="return joinCheck(this)">

        
	<div class="input-id">
        
		아아디: <input type="text" name="id" onkeydown="inputIdChk()" style=" height:25px; width:25%; left:1.8%; position: relative; border: 1px solid darkgray;" />
		<input type="button" onclick="openIdChk()" value="중복확인" style="left:4%; position: relative;
        background-color: lightgray; border-radius: 1em; border-color: black; height: 35px; width:10%; color:black; margin: auto;
        border: 2px solid darkgray; font-weight: bolder; ">
		 	<input type="hidden" name="idDplication" value="idUncheck  ">
		 	</div>
		 	
        <div class="input-pw">
		비밀번호:  <input type="password" name="pw" style=" height:25px; width:25%; left:2.1%; position: relative; border: 1px solid darkgray; ">
        </div>

        <div class="input-name">
		이름:  <input type="text" name="name" style=" height:25px; width:25%; left:1.9%;position: relative; border: 1px solid darkgray;">
        </div>
        <div class="input-age">
        나이:  <input type="text" name="age" style=" height:25px; width:6%; left:1.8%;position: relative; border: 1px solid darkgray; ">
        </div>
        <div class="input-address">
        주소:  <input type="text" name="address" style=" height:25px; width:25%; left:2%;position: relative; border: 1px solid darkgray;">
        </div>

        <div class="input-phone">
        		전화번호:
                <span style="left:2.2%;position: relative; ">
		<select name="phone1" style="width:8%; height:25px;" >
			<option>010</option>
			<option>02</option>
			<option>031</option>
			<option>051</option>		
		</select>
		- <input type="text" name="phone2" size="5"style="width:10%; height:25px; border: 1px solid darkgray;" >
		- <input type="text" name="phone3" size="5"style="width:10%; height:25px; border: 1px solid darkgray;" >
    </span>
</div>
        <div class="input-gender">
		<input type="radio" name="gender" value="m" checked>  남자
		<input type="radio" name="gender" value="f">  여자
        </div>

        <div class="button-submit">
		<input type="submit" value="가입" style="width:16%; height:55px; background-color: lightgray; border-radius: 1em; border-color: black; color:black;
        border: 2px solid darkgray; font-weight: bolder;">
        </div>		
		</form>
		
</div>
</main>
	
</body>
</html>	