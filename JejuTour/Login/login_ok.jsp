<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.Connection" %>
<%@page import="java.sql.ResultSet" %>
<%@ page contentType="text/html" pageEncoding="utf-8"  %>
<%@ page import= "java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
	
	String id=request.getParameter("id");
	String pw=request.getParameter("pw");
	
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	String sql = "select * from membership where id=? and pw=?";
	
	
		
Class.forName("com.mysql.jdbc.Driver");
		
		// conn 생성
		conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/JejuTour?serverTimezone=UTC", "bonggyun", "12341234");
		
		// pstmt 생성
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		pstmt.setString(2, pw);
		
		// sql실행
		rs = pstmt.executeQuery();
		
		if(rs.next()){ // 로그인 성공(인증의 수단 session)
				
			id = rs.getString("id");
			 pw = rs.getString("pw");
			String name = rs.getString("name");
			String age = rs.getString("age");
			String phone1 = rs.getString("phone1");	
			String phone2 = rs.getString("phone2");
			String phone3 = rs.getString("phone3");
            String address = rs.getString("address");
          	 String gender = rs.getString("gender");


			session.setAttribute("user_pw", pw);
			session.setAttribute("user_id", id);
			session.setAttribute("user_name", name);
			session.setAttribute("user_age", age);
session.setAttribute("user_phone1", phone1);
session.setAttribute("user_phone2", phone2);
session.setAttribute("user_phone3", phone3);
session.setAttribute("user_address", address);
session.setAttribute("user_gender", gender);
			
			%>

		<script>
		alert("로그인 성공");
		location.href="../Login/login_welcome.jsp";	
		</script>

		<%
		} else{
			%>
			<script>
			alert("로그인 실패");
			location.href="../Login/login_fail.jsp";	
			</script>
			<%
		}
	
	%>
</body>
</html>