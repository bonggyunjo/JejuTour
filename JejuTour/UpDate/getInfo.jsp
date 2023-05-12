<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

	<!DOCTYPE html>
	<html lang="en">
	<head>
		<meta charset="UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>Document</title>
	</head>
	<body>
	
	<%
	String id = (String)session.getAttribute("user_id");
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	String sql = "select * from membership where id = ?";
	
	try{
	Class.forName("com.mysql.jdbc.Driver");
	conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/JejuTour?serverTimezone=UTC", "bonggyun", "12341234");
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1,id);
	
	rs=pstmt.executeQuery();
	
	if(rs.next()){
		id = rs.getString("id");
		String name = rs.getString("name");
		String age = rs.getString("age");
		String address = rs.getString("address");
		String phone1 = rs.getString("phone1");
		String phone2 = rs.getString("phone2");
		String phone3 = rs.getString("phone3");
		String gender = rs.getString("gender");
		
		// 포워드로 전달하기 위해
		request.setAttribute("id", id);
		request.setAttribute("name", name);
		request.setAttribute("age",age);
		request.setAttribute("address",address);
		request.setAttribute("phone1", phone1);
		request.setAttribute("phone2", phone2);
		request.setAttribute("phone3", phone3);
		request.setAttribute("gender", gender);
		
		// 포워드 이동
		request.getRequestDispatcher("./upDate.jsp").forward(request, response);					
	}	else { // 세션이 만료 된 경우
	response.sendRedirect("../Login/login.jsp");
	} 
	}catch(Exception e){
	e.printStackTrace();
	response.sendRedirect("../Login/login.jsp");
	
	} finally {
	try{
		if(conn != null) conn.close();
		if(pstmt != null) pstmt.close();
		if(rs != null) rs.close();
	}catch(Exception e) {
		e.printStackTrace();
	}
	}
	
	%>

		
</body>
</html>