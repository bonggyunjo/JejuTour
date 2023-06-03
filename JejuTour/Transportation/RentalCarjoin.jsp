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
		request.setCharacterEncoding("UTF-8");

	String carType =request.getParameter("carType");
	String year =request.getParameter("year");
	String seating =request.getParameter("seating");
	String startday = request.getParameter("startday");
	String time =request.getParameter("time");
	String price =request.getParameter("price");
	
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	int result=0;
	String sql = "insert into rentcar values(?,?,?,?,?,?)";
	
	
		request.setCharacterEncoding("UTF-8");

		Class.forName("com.mysql.jdbc.Driver");

		conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/JejuTour?serverTimezone=UTC", "bonggyun", "12341234");
		
		
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, carType);
		pstmt.setString(2, year);
		pstmt.setString(3, seating);
		pstmt.setString(4,startday);
		pstmt.setString(5, time);
		pstmt.setString(6, price);
	
		// 4. sql
		result = pstmt.executeUpdate();
		
		
		if(result == 1){  
			
	%>
		<script>
		alert("예약이 되었습니다.");
		location.href= "../Login/login_welcome.jsp";
		</script>	
			
		

	<% } else {
		%>		
			response.sendRedirect("../Membership/membership.jsp");

			<script>
		alert("예약에 실패하였습니다.");
		location.href= "../Transportation/RentalCar.jsp";
		</script>	

		<%
		}
	 
	%>

	
</body>
</html>