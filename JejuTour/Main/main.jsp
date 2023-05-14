<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
	<html>

	<head>

		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta name="viewport" content="width=device-width" , initial-scale="1">
		<link rel="stylesheet" href="css/bootstrap.css">
		<link rel="stylesheet" href="basic.css">
		<link rel="stylesheet" href="header.css">
		<link rel="stylesheet" href="dropdown.css">
		<link rel="stylesheet" href="mainview.css">
		<link href="https://fonts.googleapis.com/css2?family=Coming+Soon&family=Nanum+Gothic+Coding&display=swap"
			rel="stylesheet">
		<title>제주특별시 여행 안내 가이드</title>
	</head>

	<body link="gray" vlink="gray" alink="gray">
		<header>
			<div class="header-align">
				<div id="header-top">
					<span>
						<a href="../Login/login.jsp">
							마이페이지 |
						</a>
						<span>
							<span>
								<a href="../Login/login.jsp">
									로그인 |
								</a>
								<span>
									<a href="../Membership/membership.jsp">
										회원가입
									</a>
								</span>
				</div>
				<div id="header-mainname">
					<h1><a href="../Main/main.jsp" style="color:#77c466;"> 제주어서옵세</a> </h1>
				</div>

			</div>
		</header>
		<nav id="menubar">
			<ul class="menu">
				<li>
				  <a href="../Introduce/Introduce.jsp">소개</a>
				</li>
				<li>
				  <a href="#">숙박</a>
				</li>
				<li>
				  <a href="#">이동 수단</a>
				  <ul class="submenu2">
					<li><a href="#">대중 교통</a></li>
					<li><a href="#">렌트</a></li>
				  </ul>
				</li>
				<li>
				  <a href="#">추천 코스</a>
				  <ul class="submenu3">
					<li><a href="#">1인 여행</a></li>
					<li><a href="#">커플 여행</a></li>
					<li><a href="#">친구 여행</a></li>
					<li><a href="#">가족 여행</a></li>
				  </ul>
				</li>
				<li>
				  <a href="#">게시판</a>
				  
				</li>
			  </ul>
		</nav>
		<main>
			<div class="main-cotainer">
				<div class="main-picture">
					<ul>
						<li><img src="jejupic1.png" style=" width:50%; height:60%;"></li>
						<li><img src="jejupic2.png" style=" width:50%; height:60%;"></li>
						<li><img src="jejupic3.png" style=" width:50%; height:60%;"></li>
						<li><img src="jejupic4.png" style=" width:50%; height:60%;"></li>
					</ul>
				</div>
			</div>
		</main>
		<footer>
			<div id="footer-tel">
				<span>
					<h4>TEL : 010 - 0000 - 0000 </h4>
				</span>
			</div>
		</footer>
	</body>

	</html>