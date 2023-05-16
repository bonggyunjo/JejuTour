<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.Connection" %>
<%@page import="java.sql.ResultSet" %>
<%@ page contentType="text/html" pageEncoding="utf-8"  %>
<%@ page import= "java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
	<meta charset="UTF-8">

<title>JDBC Driver input data at membership</title>
</head>
<body>
	<%

	String id =request.getParameter("id");
	String pw =request.getParameter("pw");
	
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	int result=0;
	String sql = "insert into users values(?,?)";
	
	try{
		request.setCharacterEncoding("UTF-8");
	
		Class.forName("com.mysql.jdbc.Driver");
				
		conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/JejuTour?serverTimezone=UTC", "bonggyun", "12341234");
		
		
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		pstmt.setString(2, pw);
	
		// 4. sql
		result = pstmt.executeUpdate();
		
		if(result == 1){ // 
			out.print("성공");
		} 
		else {
			out.print("실패");
		}
		
	} catch(Exception e){
		e.printStackTrace();		
		out.print("실패.");
		
	} finally{
		try{
			if(conn != null) conn.close();
			if(pstmt != null) pstmt.close();
		} catch(Exception e){
			e.printStackTrace();
			out.println("드라이버 연결 실패");
		}
	}
	%>
</body>
</html>