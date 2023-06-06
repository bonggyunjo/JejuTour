<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.Connection"%>
<%@ page import= "java.sql.*" %>
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
String carType =request.getParameter("carType");
	String year =request.getParameter("year");
	String seating =request.getParameter("seating");
	String startday = request.getParameter("startday");
	String time =request.getParameter("time");
	String price =request.getParameter("price");
	
    //DB연결에 필요한 변수 선언	
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	
		String sql = "update rentcar set carType = ?, year = ?, seating = ?, startday = ?, time = ?"
			   + "where price = ?";
	
	
		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/JejuTour?serverTimezone=UTC", "bonggyun", "12341234");
		
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, carType);
		pstmt.setString(2, year);
		pstmt.setString(3, seating);
		pstmt.setString(4, startday);
		pstmt.setString(5, time);
		pstmt.setString(6, price);
		
		
		int result = pstmt.executeUpdate();
		if(result == 1){

   session.setAttribute("carType",carType);
     session.setAttribute("year",year);
    session.setAttribute("seating",seating);
      session.setAttribute("startday",startday);
        session.setAttribute("time",time);
          session.setAttribute("price",price);
			%>

			<script>
			alert("예약이 변경 되었습니다.");
			location.href="../MyPage/MyReserveOk.jsp";
				response.sendRedirect("../MyPage/MyRserveOk.jsp");
			</script>

		<%
		} else{
			%>
			<script>
		alert("예약 변경 실패");
		history.go(-1);
			</script>
			<%
		}
	%>
</body>
</html>