<%@ page contentType="text/html" pageEncoding="utf-8"  %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SignIn</title>
</head>
<body>
    <form>
        아이디<input type="text" name="id" placeholder="Email address" required><br>
        패스워드<input type="password" name="ps" required><br>
        이름<input type="text" name="name" required><br>
        <button type="submit" formaction="../LoginTest/login.jsp">로그인</button>
        <button type="submit" formaction="../LoginTest/signUp.jsp">회원가입</button>
        <button type="submit" formaction="../LoginTest/showList.jsp">리스트</button>
        <button type="submit" formaction="../LoginTest/update.jsp">수정</button>
        <button type="submit" formaction="../LoginTest/delete.jsp">삭제</button>
    </form>
</body>
</html>
