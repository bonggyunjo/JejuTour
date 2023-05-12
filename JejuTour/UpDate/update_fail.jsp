<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	String id = (String)session.getAttribute("user_id");
	String name = (String)session.getAttribute("user_name");
%>
<%
    String id =(String)session.getAttribute("id",id);
%>
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
            if(document.getElementById("name").value==""){
               alert("이름을 입력하세요");
               return;
            }
            if(document.getElementById("age").value==""){
               alert("나이를 입력하세요");
               return;
            }
            if(document.getElementById("address").value==""){
               alert("주소를 입력하세요");
               return;
            }
            if(document.getElementById("phone2").value==""){
               alert("휴대폰번호를 입력하세요");
               return;
            }
            if(document.getElementById("phone3").value==""){
               alert("휴대폰번호를 입력하세요");
               return;
            }
        
            frm.submit(); //직접 submit()이라는 메소드를 호출. 액션을 들고 가줌
        }
        </script>



<!DOCTYPE html>
<html lang="en">
<head>
    
    <link rel="stylesheet" href="basic.css">  
    <link rel="stylesheet" href="upDate.css">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
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
            <a href="../login/logout.jsp"  style="position :relative; left:-3.3%;">
             로그아웃</a>
        </span>
        </div>
        
        <div id="header-mainname">
            <h1><a href="../login/login_welcome.jsp" style="color:#77c466; text-decoration: none;"> 제주어서옵세 </a></h1>
        </div>
        
        </div>
        </header>
        <main>
            <div id="main-align">
            <div id="title">
               <span><h1> 회원 정보 수정 </h1></span>
            </div>

            <div id="update-information-textfield" style="font-weight: bolder;">

                <form action="../UpDate/update_ok.jsp" method="post" name="frm" onsubmit="return joinCheck(this)"  >
                       
	        <div class="input-id">
              아이디 확인 : <input type="text" name="id" id="id"  value="<%= id%>" style=" height:33px; width:22%;"><br/>
            </div>
        <div class="input-pw">
           새로운 비밀번호 : <input type="password" name="pw" id="pw" style="height:33px; width:22%;" >
        </div>

        <div class="input-name">
		이름 :  <input type="text" name="name" id="name" style="height:33px; width:22%;" >
        </div>
        <div class="input-age">
        나이 :  <input type="text" name="age" id="age"  style="height:33px; width:22%;" >
        </div>
        <div class="input-address">
        주소 :  <input type="text" name="address" id="address"  style="height:33px; width:22%;" >
        </div>

        <div class="input-phone">
        		전화번호 :
                <span >
		<select name="phone1" style="height:33px; width:5%;" >
            <option > 010</option>
			<option> 02</option>
			<option > 031</option>
			<option > 051</option>		
		</select>
		- <input type="text" name="phone2" id="phone2"   size="5"style="height:33px; width:7%;" >
		- <input type="text" name="phone3" id="phone3"   size="5"style="height:33px; width:7%;" >
    </span>
</div>
        <div class="input-gender">
         
                <input type="radio" name="gender" value="m" checked>남자
                <input type="radio" name="gender" value="f">여자
          
        </div>

        <div class="button-submit">
		<input type="submit" value="수정하기" onclick="check()" style="width:13%; height:50px;  border-radius: 1em;  background-color: lightgray; border: 2px solid darkgray; " >
        </div>		
                </form>

            </div>
            <div style="color:red; text-align:center;"> 아이디가 일치하지 않습니다. 다시 확인해주세요. <div>
        </div>
            
        </main>
</body>
</html>