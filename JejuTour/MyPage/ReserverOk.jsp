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

	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	String sql = "select * from rentcar";
	
	
		
Class.forName("com.mysql.jdbc.Driver");
		
		// conn 생성
		conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/JejuTour?serverTimezone=UTC", "bonggyun", "12341234");
		
		// pstmt 생성

		pstmt = conn.prepareStatement(sql);
		
		// sql실행
		rs = pstmt.executeQuery();
		
		if(rs.next()){
	   %>
	   	<script>
		location.href="../MyPage/MyReserveOk.jsp";	
		</script>
				<%
			String carType = rs.getString("carType");
			String year = rs.getString("year");
			String seating = rs.getString("seating");
			String startday = rs.getString("startday");	
			String time = rs.getString("time");
			String price = rs.getString("price");

			
			session.setAttribute("car",carType);
			session.setAttribute("year",year);
			session.setAttribute("seating",seating);
			session.setAttribute("startday",startday);
			session.setAttribute("time",time);
			session.setAttribute("price",price);

			
   %>
		<%
		} else{
			%>
			<script>
			alert("예약된 정보가 없습니다");
			location.href="../MyPage/loginSuccessMyPage.jsp";	
			</script>
			<%
		}
	
	%>
	
</body>
</html>