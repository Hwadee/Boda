<%--
  Created by IntelliJ IDEA.
  User: Wuming
  Date: 2018/8/18
  Time: 16:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>部门信息</title>
</head>
<body>
<div>
    ${deptinfo}<br>
</div>

<form action="DeptInfo.do" method="post">
    搜索部门信息：<input type="text" name="deptSearchToken"><br>
    <input type="submit" value="搜索">
</form>
</body>

<script type="text/javascript">
    var msg = "${MSG}";
    if (msg != null && msg != "") {
        alert(msg);
    }
</script>
</html>
