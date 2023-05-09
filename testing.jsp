<%@ page contentType ="text/html; charset=utf-8" %>
<%@ page import ="java.sql.DriverManager" %>
<%@ page import ="java.sql.Connection" %>
<%@ page import ="java.sql.Statement" %>
<%@ page import ="java.sql.ResultSet" %>
<%@ page import ="java.sql.SQLException" %>
<html>
<head>
 <title>Tomcat, Mysql 연동 테스트</title>
</head>
<body>
 테이블 내용
 <table width="100%" border="1">
 <tr>
 <td>TAbleName</td>
 </tr>
 <% // MySQL JDBC Driver Loading
 Class.forName("com.mysql.cj.jdbc.Driver");
 Connection conn =null;
 Statement stmt =null;
 ResultSet rs =null;
 try {
 String jdbcDriver
 ="jdbc:mysql://localhost:3306/TestDB?serverTimezone=UTC";
 String dbUser ="tester"; //mysql id
 String dbPass ="1234"; //mysql password
 String query ="select * from testTable;"; //query
 // Create DB Connection
 conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
 // Create Statement
 stmt = conn.createStatement();

 // Run Qeury
 rs = stmt.executeQuery(query);
 // Print Result (Run by Query)
 while(rs.next()) {
 %>
 <tr> <td><%= rs.getString("name") %></td> </tr>
 <%
 }
 } catch(SQLException ex) {
 out.println(ex.getMessage());
 ex.printStackTrace();
 } finally {
 // Close Statement if (rs !=null) try { rs.close(); } catch(SQLException ex) {}
 if (stmt !=null) try { stmt.close(); } catch(SQLException ex) {}
 // Close Connection
 if (conn !=null) try { conn.close(); } catch(SQLException ex) {}
 }
 %>
 </table>
 </body>
</html>

