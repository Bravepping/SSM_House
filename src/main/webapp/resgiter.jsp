<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: MrJping
  Date: 2021-07-07
  Time: 12:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>
<div align="center">
    <form action="<c:url value="/resgiter.action"/>" method="post">
        用户名<input type="text" name="username">
        密码<input type="password" name="password">
        <input type="submit" value="注册">
    </form>
</div>
</body>
</html>
