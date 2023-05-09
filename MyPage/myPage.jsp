<%@ page contentType="text/html" pageEncoding="utf-8"  %>
    <%
	String id = (String)session.getAttribute("user_id");
	String name = (String)session.getAttribute("user_name");
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <span style="float:left;" id="header-login-success-name" > <img src="login-image.png" >&nbsp;&nbsp;<span style="font-weight:bolder; position:relative;
        top:10px; color:lightgray"><%= id%>(<%= name %>님)</span> </span>
</body>
</html>