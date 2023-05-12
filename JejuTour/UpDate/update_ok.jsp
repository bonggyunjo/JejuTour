<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.Connection"%>
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
request.setCharacterEncoding("UTF-8");

	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String name = request.getParameter("name");
	String age = request.getParameter("age");
	String address = request.getParameter("address");
	String phone1 = request.getParameter("phone1");
	String phone2 = request.getParameter("phone2");
	String phone3 = request.getParameter("phone3");
	String gender = request.getParameter("gender");
    //DB연결에 필요한 변수 선언	
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	
	String sql = "update membership set pw = ?, name = ?, age = ?, address = ?, phone1 = ?, phone2 = ?, phone3 = ?, gender = ?"
			   + "where id = ?";
	
	try{
		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/JejuTour?serverTimezone=UTC", "bonggyun", "12341234");
		
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, pw);
		pstmt.setString(2, name);
		pstmt.setString(3, age);
		pstmt.setString(4, address);
		pstmt.setString(5, phone1);
		pstmt.setString(6, phone2);
		pstmt.setString(7, phone3);
		pstmt.setString(8,gender);
		pstmt.setString(9,id);
		
		int result = pstmt.executeUpdate();
		if(result == 1){
			session.setAttribute("user_name", name);
			session.setAttribute("user_id", id);
			response.sendRedirect("./update_success.jsp");
		} else{
			response.sendRedirect("./update_fail.jsp");
		}
	} catch(Exception e){
		e.printStackTrace();
		response.sendRedirect("./update_fail.jsp");
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