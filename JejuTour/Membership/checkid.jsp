<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.Connection" %>
<%@page import="java.sql.ResultSet" %>
<%@ page contentType="text/html" pageEncoding="utf-8"  %>
<%@ page import= "java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
</head>
<body>

    <%
        String id = request.getParameter("id");

        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        boolean isDuplicate = false;

        try {
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/JejuTour", "bonggyun", "12341234");
            pstmt = conn.prepareStatement("SELECT COUNT(*) FROM membership WHERE id = ?");
            pstmt.setString(1, id);
            rs = pstmt.executeQuery();

            if (rs.next()) {
                id = rs.getString("id");
                session.setAttribute("id",id);
               
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            // 리소스 해제
            if (rs != null) {
                try {
                    rs.close();
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
            if (pstmt != null) {
                try {
                    pstmt.close();
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
            if (conn != null) {
                try {
                    conn.close();
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }

        if (isDuplicate) {
            out.println("duplicate");
        } else {
            out.println("available");
        }
    %>

</body>
</html>