<%@ page contentType="text/html" pageEncoding="utf-8"  %>
<%@ page import= "java.sql.*" %>
<%
	String id = (String)session.getAttribute("user_id");
	String name = (String)session.getAttribute("user_name");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%=id %>(<%=name %>)님 안녕하세요.
	
	<a href="logout.jsp">로그아웃</a><br/>
	<a href="getInfo.jsp">정보수정</a><br/>
	<a href="delete_ok.jsp">회원탈퇴</a><br/>
</body>
</html>