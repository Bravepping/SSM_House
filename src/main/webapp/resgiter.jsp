<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: MrJping_CaoJianPing
  QQ:1131302745
  Date: 2021-07-07
  Time: 12:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注册</title>
</head>
<body>
<div align="center">
    <form action="<c:url value="/resgiter.action"/>" method="post">
        用户名<input type="text" name="username"><br>
        密码<input type="password" name="password"><br>
        <input type="submit" value="注册"><br>
    </form>
</div>
</body>
</html>
