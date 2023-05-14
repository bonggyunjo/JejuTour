<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
	<html>

	<head>

		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta name="viewport" content="width=device-width" , initial-scale="1">
		<link rel="stylesheet" href="css/bootstrap.css">
		<link rel="stylesheet" href="basic.css">
		<link rel="stylesheet" href="header.css">
		<link rel="stylesheet" href="menubar.css">
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
						<a href="http://101.101.218.251:8080/JejuTour/mypage.jsp">
							마이페이지
						</a>
						<span>
							<span>
								<a href="http://101.101.218.251:8080/JejuTour/login/login.jsp">
									로그인 |
								</a>
								<span>
									<a href="http://101.101.218.251:8080/JejuTour/membership/membership.jsp">
										회원가입
									</a>
								</span>
				</div>
				<div id="header-mainname">
					<h1><a href="http://101.101.218.251:8080/JejuTour/main.jsp" style="color:#77c466;"> 조봉균 반팔티 어디감?</a> </h1>
				</div>

			</div>
		</header>
		<nav id="menubar">
			<ul id="nav-list">
				<ul class="menu">
					<li>
						<a>메뉴</a>
						<ul class="submenu">
							<li><a href="http://101.101.218.251:8080/JejuTour/Introduce/Introduce.jsp">소개 </a></li>
							<li><a href="Iodgment.jsp">숙박</a></li>
							<li><a href="Transportation.jsp">이동수단</a></li>
							<li><a href="Course.jsp">추천 코스</a></li>
							<li><a href="NoticeBoard.jsp">게시판</a></li>
						</ul>
					</li>
				</ul>
			</ul>
		</nav>
		<main>
			<div class="main-cotainer">
				<div class="main-picture">
					<ul>
						<li><img src="jejupic1.png"></li>
						<li><img src="jejupic2.png"></li>
						<li><img src="jejupic3.png"></li>
						<li><img src="main.png"></li>
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