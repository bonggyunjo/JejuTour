<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
try{
Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/TestDB?serverTimezone=UTC", "son", "3204");
out.println("성공");
	}catch (Exception e){
		out.println("실패");
	}
		%>
