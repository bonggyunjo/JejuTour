<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="login_ok.jsp" method="post">
		아이디 : <input type="text" name="id"><br/>
		비밀번호 : <input type="password" name="pw"> <br/>
				<input type="submit" value="로그인"><br/>
	</form>
		<h2> 로그인에 실패 했습니다</h2>
		<h3> 아이디와 비밀번호를 다시 입력하세요</h3>
</body>
</html>