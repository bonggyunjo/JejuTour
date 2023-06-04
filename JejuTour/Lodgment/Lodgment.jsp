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
    
    <main style ="height:1500px;">

    <span><img src="../Lodgment/Lodgment.png" style="width:150px; height:150px; position:relative; bottom:-30px;"></span>

     <form action="../Lodgment/LodmentInsert.jsp">
     
    <div style=" border-top:1px solid; width:80%; height:200px; position:relative; bottom:-20px; margin:auto;">
        <div style="height:200px; ">
        
    <span> <select name="hotel" id="hotel" style="width:12%; height:40px; position:relative; bottom:-40px; left:14%;" required>
		<option value="제주라온호텔앤리조트">제주 라온호텔 앤 리조트</option>
		<option value="코업시티호텔하버뷰">코업시티호텔 하버뷰</option>
		<option value="이스턴호텔제주">이스턴호텔제주</option>
		<option value="롯데시티호텔제주">롯데시티호텔 제주</option>
			<option value="호텔스카브로">호텔스카브로</option>
				<option value="엠스테이호텔제주">엠스테이호텔 제주</option>
	</select>
    </span>

    <span> <select name="date" id="date" style="width:12%; height:40px; position:relative; bottom:-40px; left:17%;" onchange="updatemanOptions()"  required>
		<option value="1박2일">1박 2일</option>
		<option value="2박3일">2박 3일</option>
		<option value="3박4일">3박 4일</option>
	</select>   
    </span>

      <span> 
    <select name="man" id="man" style="width:12%; height:40px; position:relative; bottom:-40px; left:20%;" onchange="updatepriceOptions()" required >

	</select>  
    </span>

  <script>
function updatemanOptions() {
	var date = document.getElementsByName("date")[0].value;
	var manSelect = document.getElementsByName("man")[0];
	manSelect.innerHTML = "";

	if (date === "1박2일") {
		manSelect.innerHTML += "<option>1인</optionㄴ>";
		manSelect.innerHTML += "<option>2인</option>";
		manSelect.innerHTML += "<option>4인 이상</option>";
		manSelect.innerHTML += "<option>6인 이상</option>";
		
	} else if (date === "2박3일") {
		manSelect.innerHTML += "<option>1인</option>";
		manSelect.innerHTML += "<option>2인</option>";
		manSelect.innerHTML += "<option>4인 이상 </option>";
			manSelect.innerHTML += "<option>6인 이상</option>";
		
	} else if (date === "3박4일") {
		manSelect.innerHTML += "<option>1인</option>";
		manSelect.innerHTML += "<option>2인</option>";
		manSelect.innerHTML += "<option>4인 이상</option>";
		
	
	// 연식 변경에 따라 인승 옵션 초기화	
}
}

</script>
   
     <span> 
     <select name="price" id="price" style="width:12%; height:40px; position:relative; bottom:-40px; left:23%;"  required>
	</select>
    </span>

     <span> 
    <input type="submit" value="예약하기"  onclick="check()" style="width:11%; height:42px; position:relative; left:27%; bottom:-40px; font-weight:bolder; ">
    </span>

    <script>
function updatepriceOptions() {
	var date = document.getElementsByName("date")[0].value;
    var man = document.getElementsByName("man")[0].value;
	var priceSelect = document.getElementsByName("price")[0];
	priceSelect.innerHTML = "";

	if (date === "1박2일" && man === "1인") {
		priceSelect.innerHTML += "<option>5만원</option>";
	} 
    else if (date === "1박2일" &&man === "2인") {
		priceSelect.innerHTML += "<option>11만원</option>";
	} 
    else if (date === "1박2일" && man === "4인 이상") {
		priceSelect.innerHTML += "<option>20만원</option>";
	} 
    else if (date === "1박2일" && man === "6인 이상") {
	
			priceSelect.innerHTML += "<option>33만원</option>";	
	}
 else if (date === "2박3일" && man === "1인") {
		priceSelect.innerHTML += "<option>9만원</option>";	
}     else if (date === "2박3일" && man === "2인") {
		priceSelect.innerHTML += "<option>17만원</option>";	
}  else if (date === "2박3일" && man === "4인 이상") {
		priceSelect.innerHTML += "<option>31만원</option>";	
}  else if (date === "2박3일" && man === "6인 이상") {
		priceSelect.innerHTML += "<option>50만원</option>";	
} else if (date === "2박3일" && man === "6인 이상") {
		priceSelect.innerHTML += "<option>50만원</option>";	
} else if (date === "3박4일" && man === "1인") {
		priceSelect.innerHTML += "<option>16만원</option>";	
} else if (date === "3박4일" && man === "2인") {
		priceSelect.innerHTML += "<option>27만원</option>";	
} else if (date === "3박4일" && man === "4인 이상") {
		priceSelect.innerHTML += "<option>39만원</option>";	
}
}
</script>

</div>
 </form>
<div >
<h2>제주 라온호텔 앤 리조트</h2>
      <img src="../Lodgment/laonhotel.png" style="width:190px; height:190px; position:relative; bottom:-30px; left:-41%;">
       <span style="position : relative; bottom:160px; left:19%;">주소: 제주특별자치도 제주시 한림읍 금능남로 127 <br>
                                                                 <span style="position:relative; bottom:-10px;"> 4성급 호텔 <br> <span>
                                                                      <span style="position:relative; bottom:-10px;">   평점 : ★★★★☆  </span> 
      <details style=" position : relative; bottom:-20px;">
    <summary>영업 시간 : 24시간 영업</summary>
    <ul>
        <li>토요일 : 24시간 영업</li>
        <li>일요일 : 24시간 영업</li>
        <li>월요일 : 24시간 영업</li>
        <li>화요일 : 24시간 영업</li>
        <li>수요일 : 24시간 영업</li>
        <li>목요일 : 24시간 영업</li>   
        <li>금요일 : 24시간 영업</li>
    </ul>
    </ul>
</details>
</div>

<div>
<h2 style="position:relative; left:1%;">코업시티 호텔 하버뷰</h2>
      <img src="../Lodgment/hotelharborview.png" style="width:190px; height:190px; position:relative; bottom:-30px; left:-41%;">
       <span style="position : relative; bottom:160px; left:19%;"> 제주특별자치도 서귀포시 특별자치도, 남원읍 위미리 2895 KR <br>
                                                           <span style="position:relative; bottom:-10px;"> 4성급 호텔 <br> <span>
                                                                      <span style="position:relative; bottom:-10px;">   평점 : ★★★★★  </span> 
      <details style=" position : relative; bottom:-20px;">
    <summary>영업 시간 : 24시간 영업</summary>
    <ul>
        <li>토요일 : 24시간 영업</li>
        <li>일요일 : 24시간 영업</li>
        <li>월요일 : 24시간 영업</li>
        <li>화요일 : 24시간 영업</li>
        <li>수요일 : 24시간 영업</li>
        <li>목요일 : 24시간 영업</li>
        <li>금요일 : 24시간 영업</li>
    </ul>
    </ul>
</details>
</div>

<div>
<h2 style="position:relative; left:1%;">이스턴호텔제주</h2>
      <img src="../Lodgment/hotelharborview.png" style="width:190px; height:190px; position:relative; bottom:-30px; left:-41%;">
       <span style="position : relative; bottom:160px; left:19%;"> 제주특별자치도 서귀포시 특별자치도, 남원읍 위미리 2895 KR <br>
                                                        <span style="position:relative; bottom:-10px;"> 4성급 호텔 <br> <span>
                                                                      <span style="position:relative; bottom:-10px;">   평점 : ★★★★☆ </span> 
      <details style=" position : relative; bottom:-20px;">
    <summary>영업 시간 : 24시간 영업</summary>
    <ul>
        <li>토요일 : 24시간 영업</li>
        <li>일요일 : 24시간 영업</li>
        <li>월요일 : 24시간 영업</li>
        <li>화요일 : 24시간 영업</li>
        <li>수요일 : 24시간 영업</li>
        <li>목요일 : 24시간 영업</li>
        <li>금요일 : 24시간 영업</li>
    </ul>
    </ul>
</details>
</div>
<div>
<h2 style="position:relative; left:1%;">호텔스카브로</h2>
      <img src="../Lodgment/hotelscabro.png" style="width:190px; height:190px; position:relative; bottom:-30px; left:-41%;">
       <span style="position : relative; bottom:160px; left:19%;"> 제주특별자치도 서귀포시 특별자치도, 서호중로 65 KR <br>
                                                          <span style="position:relative; bottom:-10px;"> 4성급 호텔 <br> <span>
                                                                      <span style="position:relative; bottom:-10px;">   평점 : ★★★★★ </span> 
      <details style=" position : relative; bottom:-20px;">
    <summary>영업 시간 : 24시간 영업</summary>
    <ul>
        <li>토요일 : 24시간 영업</li>
        <li>일요일 : 24시간 영업</li>
        <li>월요일 : 24시간 영업</li>
        <li>화요일 : 24시간 영업</li>
        <li>수요일 : 24시간 영업</li>
        <li>목요일 : 24시간 영업</li>
        <li>금요일 : 24시간 영업</li>
    </ul>
    </ul>
</details>
</div>

<div>
<h2 style="position:relative; left:1%;">엠스테이호텔제주</h2>
      <img src="../Lodgment/lottecityhotel.png" style="width:190px; height:190px; position:relative; bottom:-30px; left:-41%;">
       <span style="position : relative; bottom:160px; left:19%;"> 제주특별자치도 서귀포시 특별자치도, 태평로353번길 14 <br>
                                                           <span style="position:relative; bottom:-10px;"> 4성급 호텔 <br> <span>
                                                                      <span style="position:relative; bottom:-10px;">   평점 : ★★★★☆ </span> 
      <details style=" position : relative; bottom:-20px;">
    <summary>영업 시간 : 24시간 영업</summary>
    <ul>
        <li>토요일 : 24시간 영업</li>
        <li>일요일 : 24시간 영업</li>
        <li>월요일 : 24시간 영업</li>
        <li>화요일 : 24시간 영업</li>
        <li>수요일 : 24시간 영업</li>
        <li>목요일 : 24시간 영업</li>
        <li>금요일 : 24시간 영업</li>
    </ul>
    </ul>
</details>
</div>
<div>
<h2 style="position:relative; left:1%;">롯데시티호 텔제주</h2>
      <img src="../Lodgment/lottecityhotel.png" style="width:190px; height:190px; position:relative; bottom:-30px; left:-41%;">
       <span style="position : relative; bottom:160px; left:19%;"> 제주특별자치도 제주시 도령로 83 <br>
                                                          <span style="position:relative; bottom:-10px;"> 4성급 호텔 <br> <span>
                                                                      <span style="position:relative; bottom:-10px;">   평점 : ★★★★☆ </span> 
      <details style=" position : relative; bottom:-20px;">
    <summary>영업 시간 : 24시간 영업</summary>
    <ul>
        <li>토요일 : 24시간 영업</li>
        <li>일요일 : 24시간 영업</li>
        <li>월요일 : 24시간 영업</li>
        <li>화요일 : 24시간 영업</li>
        <li>수요일 : 24시간 영업</li>
        <li>목요일 : 24시간 영업</li>
        <li>금요일 : 24시간 영업</li>
    </ul>
    </ul>
</details>
</div>
    </main>
</body>
</html>