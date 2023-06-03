<%@ page contentType="text/html" pageEncoding="utf-8" %>
<%@ page import ="java.sql.*" %>
<html>
<body>
<%
    request.setCharacterEncoding("utf-8");
    String uid = request.getParameter("id");
    String upass = request.getParameter("pw");
    String uname = request.getParameter("name");

    /*String sql = "INSERT INTO userList VALUES";
    sql += "('" + uid + "', '" + upass + "', '" + uname + "')";*/

    Class.forName("com.mysql.jdbc.Driver"); 
    
    String jdbcDriver ="jdbc:mysql://localhost:3306/TestDB?serverTimezone=UTC"; 
    String dbUser ="bonggyun"; //mysql id
    String dbPass ="12341234"; //mysql password
    Connection conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);

    //Statement stmt = conn.createStatement();
    String sql = "INSERT INTO users VALUES(?, ?, ?)";
    PreparedStatement stmt = conn.prepareStatement(sql);
    stmt.setString(1, uid);
    stmt.setString(2, upass);
    stmt.setString(3, uname);

    int count = stmt.executeUpdate();
    if(count == 1){
        out.print("가입 완료");
    }
    else{
        out.print("가입 실패");
    }
    stmt.close(); conn.close();
%>
</body>
</html>