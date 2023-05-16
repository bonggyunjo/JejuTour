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

	
	Connection conn = null;
	PreparedStatement pstmt = null;
	int result=0;
	String sql = "select * from users";
	
	
		request.setCharacterEncoding("UTF-8");
	
		Class.forName("com.mysql.jdbc.Driver");
				
		conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/JejuTour?serverTimezone=UTC", "bonggyun", "12341234");
		
		
		pstmt = conn.prepareStatement(sql);
		
    ResultSet rs = pstmt.executeQuery(sql);

		// 4. sql
	
		%>
    <table border="1">
        <tr>
        <th>아이디 </th>
        <th> 비밀번호 </th>
        </tr>
        <%
		while(rs.next()){
            %>

            <tr>
            <td><%=rs.getString("id")%></td>
            <td><%=rs.getString("pw")%></td>
        </tr>

    <%
        }
	%>
    </table>
</body>
</html>