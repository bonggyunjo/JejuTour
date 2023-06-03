<%@ page contentType="text/html" pageEncoding="utf-8"  %>
<%@ page import= "java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

		<%
	String id = (String)session.getAttribute("user_id");
	String name = (String)session.getAttribute("user_name");
  
%>

<html>

<head>
 
<style>
    body {
      background-image: url("../Introduce/image.1111.png");
	background-repeat:no-repeat;
      background-size:100%;
    }
  </style>

		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta name="viewport" content="width=device-width" , initial-scale="1">
		<link rel="stylesheet" href="css/bootstrap.css">
		<link rel="stylesheet" href="../Main/basic.css">
		<link rel="stylesheet" href="../Main/header.css">
		<link rel="stylesheet" href="../Main/dropdown.css">
		<link rel="stylesheet" href="../Main/mainview.css">
		<link href="https://fonts.googleapis.com/css2?family=Coming+Soon&family=Nanum+Gothic+Coding&display=swap"
			rel="stylesheet">
		<title>렌트 시스템</title>
</head>
<body link="gray" vlink="gray" alink="gray">
	<header>
	     <div class="header-align">

        <div id ="header-top" style="position: relative;top: 5px;	width:100%;" >		

            <span style="float:left; position :relative; left:165px;" id="header-login-success-name" > <img src="../Login/login-image.png" style="width:40px;
                height:40px; float:left; "> &nbsp;&nbsp;<span style="font-weight:bolder; position:relative;
            top:10px; color:lightgray"><%= id%>(<%= name %>님) <span style="font-size:15px;">반갑수다</span></span> </span>
      
	   <span>
            <a href="../Logout/logout.jsp" style="float:right; position :relative; left:-2.65%;">
            | 로그아웃 </a>
        </span>

        <span>
			<a href="../MyPage/loginSuccessMyPage.jsp" style="float:right; position :relative; left:-2.65%;">
           마이페이지&nbsp </a>
        </span>	
        </div>
        
        <div id="header-mainname">
            <h1><a href="../Login/login_welcome.jsp" style="color:#77c466; text-decoration: none; ">제주<span style="color:black;">어서옵세</span></a></h1>
        </div>       
        </div>
	</header>
    
    <main>
    <img src="../Transportation/car.png" style="width:120px; height:75px; position:relative; left:8%; bottom:-70px;">
    <img src="../Transportation/car1.png" style="width:120px; height:75px; position:relative; left:-8%;">


        <form action="../Transportation/RentalCarjoin.jsp">
     
    <div style="  width:80%; height:200px; position:relative; bottom:-20px; margin:auto;">
       
        <div style="text-align:center; margin:auto; width:100%; padding:15px;">
    <span> <select name="carType"  style="width:14%; height:40px; position:relative; bottom:-40px; " onchange="updatecarTypeOptions()">
		<option value="SUV">SUV</option>
		<option value="세단">세단</option>
		<option value="쿠페">쿠페</option>
		<option value="왜건">왜건</option>
			<option value="해치백">해치백</option>
				<option value="버스">버스</option>
	</select>
    </span>
</div>

<div style="text-align:center; margin:auto; width:100%; padding : 15px; ">
    <span> <select name="year"  style="width:14%; height:40px; position:relative; bottom:-40px; l" onchange="updateyearOptions()" >
	</select>   
    </span>
</div>

<script>
function updatecarTypeOptions() {
	var carType = document.getElementsByName("carType")[0].value;
	var yearSelect = document.getElementsByName("year")[0];
	yearSelect.innerHTML = "";

	if (carType === "세단") {
		yearSelect.innerHTML += "<option>소나타</option>";
		yearSelect.innerHTML += "<option>K3</option>";
		yearSelect.innerHTML += "<option>SM3</option>";
		yearSelect.innerHTML += "<option>제네시스</option>";
		
	} else if (carType === "SUV") {
		yearSelect.innerHTML += "<option>투싼</option>";
		yearSelect.innerHTML += "<option>싼타페</option>";
		yearSelect.innerHTML += "<option>코란도 </option>";
			yearSelect.innerHTML += "<option>카니발</option>";
		
	} else if (carType === "왜건") {
		yearSelect.innerHTML += "<option>벤츠</option>";
		yearSelect.innerHTML += "<option>페라리</option>";
		yearSelect.innerHTML += "<option>i40</option>";
}else if (carType === "해치백") {
		yearSelect.innerHTML += "<option>i30</option>";
		yearSelect.innerHTML += "<option>클리오</option>";
		yearSelect.innerHTML += "<option>아베오</option>";
}else if (carType === "버스") {
		yearSelect.innerHTML += "<option>County</option>";
		yearSelect.innerHTML += "<option>KAWBUS</option>";
		yearSelect.innerHTML += "<option>대형 버스</option>";
}else if (carType === "쿠페") {
		yearSelect.innerHTML += "<option>벨로스터</option>";
		yearSelect.innerHTML += "<option>아우디R8</option>";
		yearSelect.innerHTML += "<option>포르쉐</option>";
}
}
</script>

<div style="text-align:center; margin:auto; width:100%; padding:15px; ">
      <span> 
    <select name="seating"  style="width:14%; height:40px; position:relative; bottom:-40px; " onchange="updatetimeOptions()" >

	</select>  
    </span>
</div>
<script>
function updateyearOptions() {
	var carType = document.getElementsByName("carType")[0].value;
	var seatingSelect = document.getElementsByName("seating")[0];
	seatingSelect.innerHTML = "";

	if (carType === "버스") {
		seatingSelect.innerHTML += "<option>15인승</option>";
		seatingSelect.innerHTML += "<option>15인승 이상</option>";		
	} else if (carType === "SUV") {
		seatingSelect.innerHTML += "<option>4인승</option>";
		seatingSelect.innerHTML += "<option>6인승</option>";		
	} else if (carType === "왜건") {
		seatingSelect.innerHTML += "<option>2인승</option>";
		seatingSelect.innerHTML += "<option>4인승</option>";
}else if (carType === "해치백") {
		seatingSelect.innerHTML += "<option>2인승</option>";
		seatingSelect.innerHTML += "<option>4인승</option>";
}else if (carType === "세단") {
		seatingSelect.innerHTML += "<option>4인승</option>";
}else if (carType === "쿠페") {
		seatingSelect.innerHTML += "<option>2인승</option>";
		seatingSelect.innerHTML += "<option>4인승</option>";
}
}
</script>



<div style="text-align:center; margin:auto; width:100%; position:relative; bottom:-40px; padding:15px;">
    <span> <input type="date" name="startday" style="width:14%; height:40px;" > </span>
</div>


<div style="text-align:center; margin:auto; width:100%; padding:15px;">
     <select name="time"  style="width:14%; height:40px; position:relative; bottom:-40px;" onchange="updatepriceOptions()"  >
	</select>  
    </span>
</div>
<script>
function updatetimeOptions() {
	var seating = document.getElementsByName("seating")[0].value;
	var timeSelect = document.getElementsByName("time")[0];
	timeSelect.innerHTML = "";

	if (seating === "2인승") {
		timeSelect.innerHTML += "<option>3시간</option>";
    timeSelect.innerHTML += "<option>6시간</option>";
    timeSelect.innerHTML += "<option>9시간</option>";
    timeSelect.innerHTML += "<option>12시간</option>";
    timeSelect.innerHTML += "<option>24시간</option>";
    timeSelect.innerHTML += "<option>48시간</option>";
	} else if (seating === "4인승") {
				timeSelect.innerHTML += "<option>3시간</option>";
    timeSelect.innerHTML += "<option>6시간</option>";
    timeSelect.innerHTML += "<option>9시간</option>";
    timeSelect.innerHTML += "<option>12시간</option>";
    timeSelect.innerHTML += "<option>24시간</option>";
    timeSelect.innerHTML += "<option>48시간</option>";
	
	} else if (seating === "6인승") {
				timeSelect.innerHTML += "<option>3시간</option>";
    timeSelect.innerHTML += "<option>6시간</option>";
    timeSelect.innerHTML += "<option>9시간</option>";
    timeSelect.innerHTML += "<option>12시간</option>";
    timeSelect.innerHTML += "<option>24시간</option>";
    timeSelect.innerHTML += "<option>48시간</option>";
		
}else if (seating === "15인승") {
			timeSelect.innerHTML += "<option>3시간</option>";
    timeSelect.innerHTML += "<option>6시간</option>";
    timeSelect.innerHTML += "<option>9시간</option>";
    timeSelect.innerHTML += "<option>12시간</option>";
    timeSelect.innerHTML += "<option>24시간</option>";
    timeSelect.innerHTML += "<option>48시간</option>";
		
}else if (seating === "15인승 이상") {
				timeSelect.innerHTML += "<option>3시간</option>";
    timeSelect.innerHTML += "<option>6시간</option>";
    timeSelect.innerHTML += "<option>9시간</option>";
    timeSelect.innerHTML += "<option>12시간</option>";
    timeSelect.innerHTML += "<option>24시간</option>";
    timeSelect.innerHTML += "<option>48시간</option>";
}
}
</script>
    <div style="text-align:center; margin:auto; width:100%; padding:15px;">
      <span> 
    <select name="price"  style="width:14%; height:40px; position:relative; bottom:-40px; "  >
	</select>  
    </span>
</div>

<script>
function updatepriceOptions() {
	var time = document.getElementsByName("time")[0].value;
	var priceSelect = document.getElementsByName("price")[0];
	priceSelect.innerHTML = "";

	if (time === "3시간") {
		priceSelect.innerHTML += "<option>41000원</option>";
			
	} else if (time === "6시간") {
		priceSelect.innerHTML += "<option>65000원</option>";
	
	} else if (time === "9시간") {
		priceSelect.innerHTML += "<option>80000원</option>";
		
}else if (time === "12시간") {
		priceSelect.innerHTML += "<option>90000원</option>";
		
}else if (time === "24시간") {
		priceSelect.innerHTML += "<option>120000원</option>";
}else if (time === "48시간") {
		priceSelect.innerHTML += "<option>140000원</option>";
		
}
}
</script>
<div style="width:100%; margin:auto;  text-align:center;">
        <span> 
    <input type="submit" value="예약하기"   style="width:11%; height:42px; position:relative; bottom:-50px; font-weight:bolder; ">
   </span>
    </div>
    </form>

    </main>
</body>
</html>