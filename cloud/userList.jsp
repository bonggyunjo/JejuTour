<%@ page contentType="text/html" pageEncoding="utf-8"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <%
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn=DriverManager.getConnection("jdbc:mysql://61.97.190.11:8080","root","");
    Statment stmt=conn.createStatement();
    ResultSet rs=stmt.executeQuery("SELECT idDb, passDb from testTable");
    String str="<table align=center>";
        str+="<tr><th colspan=3>가입자 리스트</th></tr>";
    while(rs.next()){
        str+="<tr><td colspan=3><hr></td></tr>";
        str+="<tr>";
            str+="<td>"+rs.getString("idDb")+"</td>";
            str+="<td>"+rs.getString("passDb")+"</td>";
            
    }
    out.print(str);
    rs.close();
    stmt.close();
    conn.close();
    %>
    
</body>
</html>