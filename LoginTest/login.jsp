<%@ page contentType="text/html" pageEncoding="utf-8"%>
<%@ page import ="java.sql.*" %>
<html>
<body>
<%
    String uid = request.getParameter("id");
    String upw = request.getParameter("pw");

    //String sql = "SELECT pw FROM userList WHERE id = '";
    //sql += uid + "'";

    Class.forName("com.mysql.jdbc.Driver"); 
    
    String jdbcDriver ="jdbc:mysql://localhost:3306/TestDB?serverTimezone=UTC"; 
    String dbUser ="bonggyun"; //mysql id
    String dbPass ="12341234"; //mysql password
    Connection conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
    String sql = "SELECT pw FROM users WHERE id = ?";

    PreparedStatement stmt = conn.prepareStatement(sql);
    stmt.setString(1, uid);
    ResultSet rs = stmt.executeQuery();
    String pw = "";
    while(rs.next()){
        pw = rs.getString("pw");
    }
    if(pw.equals(upw)){
        session.setAttribute("id", uid);
    }
//<jsp:forward page="main.jsp"/>
response.sendRedirect("main.jsp");
%>
</body>
</html>
