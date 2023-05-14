<%@ page  contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page contentType="text/html" pageEncoding="utf-8" %>
<%@ page import="java.sql.* %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 


<% 
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn=DriverMannager.getConnection("jdbc:mysql://49.50.162.144:3306", "root", "");
    Statement stmt=conn.createStatement();
    ResultSet rs=stmt.executeQuery("SELECT idDb, passDb FROM testTable");
    String str="";
    out.print("88888");
    while(rs.next()){
        str+=rs.getString("idDb")+ ","+rs.getString("passDb")+"<br>";
    }
    out.print(str);
    rs.close();
    stmt.close();
    conn.close();
%>
    
</body>
</html>

