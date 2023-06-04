<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.Connection" %>
<%@page import="java.sql.ResultSet" %>
<%@ page import= "java.sql.*" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
</head>

<body>
    <%
      ArrayList<String> xList = new ArrayList<>();
      ArrayList<String> yList = new ArrayList<>();
      ArrayList<String> nameList = new ArrayList<>();
      request.setCharacterEncoding("UTF-8");
      String searchQuery = request.getParameter("keyword");
      

      Connection conn = null;
      PreparedStatement pstmt = null;
      ResultSet rs = null;
      String sql = "SELECT * FROM BusStation WHERE place_name LIKE ?";
  
  Class.forName("com.mysql.jdbc.Driver");
  
  conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/JejuTour?serverTimezone=UTC", "bonggyun", "12341234");
  pstmt = conn.prepareStatement(sql);
  pstmt.setString(1, "%" + searchQuery + "%");
  
  rs = pstmt.executeQuery();
  
  while (rs.next()) {
      String x = rs.getString("x");
      String y = rs.getString("y");
      String name=rs.getString("place_name");
  
      xList.add(x);
      yList.add(y);
      nameList.add(name);
      session.setAttribute("xlo", xList);
  session.setAttribute("ylo", yList);
  session.setAttribute("name", nameList);
  }
  
  
  
  response.sendRedirect("asd.jsp");
 %>
</body>
</html>