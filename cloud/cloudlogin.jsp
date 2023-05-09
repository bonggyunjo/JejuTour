<%@ page  contentType="text/html" pageEncoding="utf-8"%>
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
String uid=request.getParameter("id");
if(uid==null){
    out.print("로그인 정보가 없습니다.");
}
else{
    session.setAttribute("id",uid);
    response.sendRedirect("main.jsp");
}
%>
</body>
</html>