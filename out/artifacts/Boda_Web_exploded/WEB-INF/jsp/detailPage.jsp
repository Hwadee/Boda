<%--
  Created by IntelliJ IDEA.
  User: Wuming
  Date: 2018/8/15
  Time: 16:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户详情</title>
</head>
<body>
用户${MSG}详细信息：
<br>
<div>
    ${detailInfo}
</div>
<br>
<form action="UpdateUserInfo.do" method="post">
    姓名：<input type="text" name="name"><br>
    电话：<input type="text" name="phone"><br>
    <input type="submit" value="修改个人资料">
</form>
</body>
</html>
