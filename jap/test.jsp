<%@ page contentType="text/html; charset=utf-8" %>
  <%@ page import="java.sql.DriverManager" %>
    <%@ page import="java.sql.Connection" %>
      <%@ page import="java.sql.Statement" %>
        <%@ page import="java.sql.ResultSet" %>
          <%@ page import="java.sql.SQLException" %>
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
                <% Class.forName("com.mysql.cj.jdbc.Driver");
                 Connection conn=null; Statement stmt=null;
                  ResultSet rs=null; 
                  try {
                  String jdbcDriver="jdbc:mysql://localhost:3306/TestDB?serverTimezone=UTC" ;
                  String dbUser="sondb" ;
                  String dbPass="zmfpdyd!3204" ;
                  String query="select * from testTable" ;
                  conn=DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
                  stmt=conn.createStatement();
                  rs=stmt.executeQuery(query);
                  while(rs.next()) { 
                    %>
                  <tr>
                    <td>
                      <%=rs.getString("name") %>
                    </td>
                  </tr>
                  <% } } catch(SQLException ex) {
                     out.println(ex.getMessage());
                      ex.printStackTrace();
                     } finally { 
                    if (rs !=null) 
                    try {
                       rs.close();
                       } catch(SQLException ex) {
                         out.print("fail"); 
                       } if(stmt !=null) try {
                           stmt.close(); 
                        } catch(SQLException ex) {
                         out.print("fail");
                         }
                    if (conn !=null) try { conn.close(); }
                     catch(SQLException ex) {
                       out.print("fail");
                       } 
                      } 
                      %>
              </table>
            </body>

            </html>