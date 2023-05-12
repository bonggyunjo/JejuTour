<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	String id = (String)session.getAttribute("user_id"); 
	String url = "jdbc:mariadb://localhost:3306/test";
	String uid ="root";
	String upw ="12341234";
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	String sql = "delete from members where id=?";
	
	try{
		Class.forName("org.mariadb.jdbc.Driver");
		// conn 생성
		conn = DriverManager.getConnection(url, uid, upw);
		// pstmt 생성
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		
		int result = pstmt.executeUpdate();
		
		if(result == 1){		
			session.invalidate(); //세션 정보 삭제
			response.sendRedirect("login.jsp");
		} else {
			response.sendRedirect("login.jsp");
		}
	} catch(Exception e){
		e.printStackTrace();
		response.sendRedirect("login.jsp");
	} finally{
		try{
			if(conn != null) conn.close();
			if(pstmt != null) pstmt.close();
		} catch(Exception e){
			e.printStackTrace();
		}
	}
	%>
</body>
</html>