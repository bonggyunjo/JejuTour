<<<<<<< HEAD
<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.Connection" %>
<%@page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>JDBC Driver input data at membership</title>
</head>
<body>
	<%	
	String id =request.getParameter("id");
	String pw =request.getParameter("pw");
	String name =request.getParameter("name");
	int age = request.getParameter("age");
=======
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
	String name =request.getParameter("name");
	String age = request.getParameter("age");
>>>>>>> 98c10ff789b1d597eee879da73ee2b0a7cc502ea
	String address =request.getParameter("address");
	String phone1 =request.getParameter("phone1");
	String phone2 =request.getParameter("phone2");
	String phone3 =request.getParameter("phone3");
	String gender =request.getParameter("gender");
	
<<<<<<< HEAD
	String url = "oracle.jdbc.driver.OracleDriver";
	String uid ="root";
	String upw =" ";
=======
>>>>>>> 98c10ff789b1d597eee879da73ee2b0a7cc502ea
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	int result=0;
	String sql = "insert into membership values(?,?,?,?,?,?,?,?,?)";
	
	try{
		request.setCharacterEncoding("UTF-8");
		// 1. 드라이버 검색
<<<<<<< HEAD
		Class.forName("oracle.jdbc.driver.OracleDriver");
				// 2. conn 
		conn = DriverManager.getConnection(url, uid, upw);
=======
		Class.forName("com.mysql.jdbc.Driver");
				// 2. conn 
		conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/JejuTour?serverTimezone=UTC", "bonggyun", "12341234");
>>>>>>> 98c10ff789b1d597eee879da73ee2b0a7cc502ea
		
		// 3. pstmt 
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		pstmt.setString(2, pw);
		pstmt.setString(3, name);
<<<<<<< HEAD
		pstmt.setInt(4,age );
=======
		pstmt.setString(4,age);
>>>>>>> 98c10ff789b1d597eee879da73ee2b0a7cc502ea
		pstmt.setString(5, address);
		pstmt.setString(6, phone1);
		pstmt.setString(7, phone2);
		pstmt.setString(8, phone3);
		pstmt.setString(9, gender);
<<<<<<< HEAD
		
=======
	
>>>>>>> 98c10ff789b1d597eee879da73ee2b0a7cc502ea
		// 4. sql
		result = pstmt.executeUpdate();
		
		if(result == 1){ // 
<<<<<<< HEAD
			response.sendRedirect("http://101.101.218.251:8080/JejuTour/membership/join_succes.jsp");
		} else{ // 
			response.sendRedirect("http://101.101.218.251:8080/JejuTour/membership/join_fail.jsp");
		}
		out.println("성공");
		
	} catch(Exception e){
		e.printStackTrace();
		out.println("실패");
=======
			response.sendRedirect("http://101.101.218.251:8080/JejuTour/login/login.jsp");
		} 
		else {
			response.sendRedirect("http://101.101.218.251:8080/JejuTour/membership/membership.jsp");
		}
		
	} catch(Exception e){
		e.printStackTrace();		
		out.println("실패");
		response.sendRedirect("http://101.101.218.251:8080/JejuTour/membership/membership.jsp");
		
		
>>>>>>> 98c10ff789b1d597eee879da73ee2b0a7cc502ea
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