<%--
  Created by IntelliJ IDEA.
  User: Wuming
  Date: 2018/8/16
  Time: 16:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改个人资料</title>
</head>
<body>
<form action="UpdateUserInfo.do" method="post">
    姓名：<input type="text" name="name"><br>
    电话：<input type="text" name="phone"><br>
    <input type="submit" value="更新">
</form>
</body>
</html>
