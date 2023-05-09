<%@ page contentType="text/html" pageEncoding="utf-8"  %>
<%@ page import= "java.sql.* " %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>회원 정보 리스트</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>

<body>
    <%
      
      Class.forName("com.mysql.jdbc.Driver");
      Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/TestDB?serverTimezone=UTC", "bonggyun", "12341234");
      Statement stmt = conn.createStatement();
      ResultSet rs = stmt.executeQuery("select idDB,passDB from testTable");
      String str="";
      while(rs.next()){
         str+= rs.getString("idDB")+", " + rs.getString("passDB")+ "<br>";
      }
      out.print(str);
          rs.close();
          stmt.close();
          conn.close();
%>
</body>
</html>
