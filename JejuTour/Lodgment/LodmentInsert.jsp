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

	String hotel =request.getParameter("hotel");
	String date =request.getParameter("date");
	String man =request.getParameter("man");
	String price = request.getParameter("price");
	
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	int result=0;
	String sql = "insert into Lodgment values(?,?,?,?)";
	
	
		request.setCharacterEncoding("UTF-8");

		Class.forName("com.mysql.jdbc.Driver");

		conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/JejuTour?serverTimezone=UTC", "bonggyun", "12341234");
		
		
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, hotel);
		pstmt.setString(2, date);
		pstmt.setString(3, man);
		pstmt.setString(4, price);
	
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
				<script>
		alert("예약 실패");
		location.href= "../Lodgment/Lodgment.jsp";
		</script>	
		<%
		}
	 
	%>

	
</body>
</html>