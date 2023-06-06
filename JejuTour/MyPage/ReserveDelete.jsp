<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<%
    String carType = (String) session.getAttribute("car");
     String year = (String) session.getAttribute("year");
      String seating = (String) session.getAttribute("seating");
       String startday = (String) session.getAttribute("startday");
        String time = (String) session.getAttribute("time");
          String price = (String) session.getAttribute("price");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%

	String url = "jdbc:mysql://localhost:3306/JejuTour";
	String uid ="bonggyun";
	String upw ="12341234";
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	String sql = "delete from rentcar where carType=? AND year=? AND seating=? AND startday=? AND time=? AND price=?";
	

		Class.forName("com.mysql.jdbc.Driver");
		// conn 생성
		conn = DriverManager.getConnection(url, uid, upw);
		// pstmt 생성
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, carType);
		pstmt.setString(2, year);
        pstmt.setString(3, seating);
		pstmt.setString(4, startday);
        pstmt.setString(5, time);
		pstmt.setString(6, price);

		
		int result = pstmt.executeUpdate();
		
		if(result == 1){		
			session.invalidate(); //세션 정보 삭제
			
			%>
		<br><br>
        <div style="text-align:center; position:relative; bottom:-300px;"><b><font size="4" style="font-size:36px;">예약이 취소 되었습니다.</font></b></div>
        <br><br><br>
    
       <div style="text-align:center; position:relative; bottom:-300px;"> <input type="button" value="확인" style="height:45px; width:12%; border-radius: 1em;  
        background-color: lightgray; border: 2px solid darkgray;" onclick="javascript:window.location='../MyPage/loginSuccessMyPage.jsp'"> </div>

	<%
		} else {
	%>	
		<script>
		alert("취소 실패");
		history.go(-1);
		</script>
		<%
		} 
	%>
</body>
</html>