<%@ page contentType ="text/html; charset=utf-8" %>
<%@ page import ="java.sql.DriverManager" %>
<%@ page import ="java.sql.Connection" %>
<%@ page import ="java.sql.Statement" %>
<%@ page import ="java.sql.ResultSet" %>
<%@ page import ="java.sql.SQLException" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>  
     테이블 내용
     <table width="100%" border="1">
     <tr>
     <td>TAbleName</td>
     </tr>
     <% 
     Class.forName("com.mysql.cj.jdbc.Driver");
     Connection conn =null;
     Statement stmt =null;
     ResultSet rs =null;
     try {
     String jdbcDriver
     ="jdbc:mysql://49.50.162.144:3306/TestDB?serverTimezone=UTC";
     String dbUser ="root"; 
     String dbPass ="zmfpdyd!3204"; 
     String query ="select * from testTable"; 
     
     conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
    
     rs = stmt.executeQuery(query);
     
     while(rs.next()) {
     %>
     <tr> <td><%= rs.getString("name") %></td> </tr>
     <%
     }
     } catch(SQLException ex) {
     out.println(ex.getMessage());
     ex.printStackTrace();
    } finally {
        
        if (rs !=null) try { rs.close(); } catch(SQLException ex) {}
        if (stmt !=null) try { stmt.close(); } catch(SQLException ex) {}
     
        if (conn !=null) try { conn.close(); } catch(SQLException ex) {}
        }
        %>
        </table>
       
</body>
</html>