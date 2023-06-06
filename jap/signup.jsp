<%@ page contentType="text/html" pageEncoding="utf-8" %>
    <%@ page import="java.sql.*" %>

        <% try{ request.setCharacterEncoding("UTF-8");
         Class.forName("com.mysql.jdbc.Driver");
          Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/testdb","sonson","zmfpdyd!3204");
          out.print("성공");
         }catch(SQLException ex){

          out.print("실패asdasd");
         } 
         %>

 