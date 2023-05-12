<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%

	request.setCharacterEncoding("UTF-8");

	String id = (String)request.getAttribute("id");
	String name = (String)request.getAttribute("name");
	String phone1 = (String)request.getAttribute("phone1");
	String phone2 = (String)request.getAttribute("phone2");
	String phone3 = (String)request.getAttribute("phone3");
	String gender = (String)request.getAttribute("gender");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>정보 수정 페이지</h2>
		<form action="update_ok.jsp" method="post">
				아이디:<input type="text" name="id" value="<%=id %>" readonly><br/>
				비밀번호:<input type="password" name="pw"><br/>
		이름:<input type="text" name="name" value="<%=name %>"><br/>
		전화번호:
		<select name="phone1">
			<option <%=phone1.equals("010") ? "selected" : "" %>>010</option>
			<option <%=phone1.equals("02") ? "selected" : "" %>>02</option>
			<option <%=phone1.equals("031") ? "selected" : "" %>>031</option>
			<option <%=phone1.equals("051") ? "selected" : "" %>>051</option>
		</select>
		- <input type="text" name="phone2" size="5" value="<%=phone2 %>">
		- <input type="text" name="phone3" size="5" value="<%=phone3 %>">
		<br/>
		<% if(gender.equals("m")) { %>
			<input type="radio" name="gender" value="m" checked>남자
			<input type="radio" name="gender" value="f">여자
		<% } else { %>
			<input type="radio" name="gender" value="m">남자
			<input type="radio" name="gender" value="f" checked>여자
		<% } %>
			<input type="submit" value="수정">
			</form>
			<hr/>
</body>
</html>