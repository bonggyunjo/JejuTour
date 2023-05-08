<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.Connection" %>
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
	
	try{
		
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
			String name = rs.getString("name");
		
			session.setAttribute("user_id", id);
			session.setAttribute("user_name", name);
			
			response.sendRedirect("login_welcome.jsp"); // 페이지이동
			
		} else{ // 로그인 실패
			
			response.sendRedirect("http://101.101.218.251:8080/JejuTour/login/login.jsp");
		
		session.setAttribute("errMsg", "로그인 정보가 올바르지 않습니다");
		}
	} catch(Exception e){
		e.printStackTrace();
		response.sendRedirect("http://101.101.218.251:8080/JejuTour/login/login.jsp"); // 에러가 난 경우도 리다이렉트
	} finally{
		try{
			if(conn != null) conn.close();
			if(pstmt != null) pstmt.close();
			if(rs != null) rs.close();
		} catch(Exception e){
			e.printStackTrace();
		}
	}
	%>
</body>
</html>