<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
	String id = (String)session.getAttribute("user_id");
	String name = (String)session.getAttribute("user_name");
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>정보 수정 성공</h2>
<span style="float:left; position :relative; top:0px; " id="header-login-success-name" > <img src="login-image.png" style="width:40px;
    height:40px; float:left; "> &nbsp;&nbsp;<span style="font-weight:bolder; position:relative;
top:10px; color:lightgray"><%= id%>(<%= name %>님)</span> </span>
</body>
</html>