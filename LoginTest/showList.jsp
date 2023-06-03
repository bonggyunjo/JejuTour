<%@ page contentType="text/html" pageEncoding="utf-8"%>
<%@ page import ="java.sql.*" %>
<html>
<body>
<%
    //String sql = "SELECT * FROM userList";

    Class.forName("com.mysql.jdbc.Driver"); 
    
    String jdbcDriver ="jdbc:mysql://localhost:3306/TestDB?serverTimezone=UTC"; 
    String dbUser ="bonggyun"; //mysql id
    String dbPass ="12341234"; //mysql password
    Connection conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);

    //Statement stmt = conn.createStatement();
    String sql = "SELECT * FROM users";
    PreparedStatement stmt = conn.prepareStatement(sql);
    ResultSet rs = stmt.executeQuery();
    while(rs.next()){
        String str = "id : " + rs.getString("id") + "\npw : " + rs.getString("pw") + "\nname : " + rs.getString("name");
        out.println(str);
    }
    out.flush();
%>
</body>
</html>