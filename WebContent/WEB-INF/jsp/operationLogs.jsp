<%--
  Created by IntelliJ IDEA.
  User: Wuming
  Date: 2018/8/18
  Time: 9:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>查询操作记录</title>
</head>
<body>
<div>
    ${operationlogs}<br>
</div>

<form action="OperationLogs.do" method="post">
    日 期：<input type="text" name="startDate" placeholder="起始日期">
    <input type="text" name="endDate" placeholder="截止日期"><br>
    员工号：<input type="text" name="empId"><br>
    <input type="submit" value="查询">
</form>
</body>
<script type="text/javascript">
    var msg = "${MSG}";
    if (msg !== null && msg !== "") {
        alert(msg);
    }
</script>
</html>
