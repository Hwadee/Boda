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

<form action="UpdateDeptInfo.do" method="post">
    部 门 ID：<input type="text" name="deptId"><br>
    部 门 名 称：<input type="text" name="deptName"><br>
    部门员工数： <input type="text" name="deptEmpNum"><br>
    部门创建日期：<input type="text" name="deptBuildTime"><br>
    <input type="submit" value="更新部门信息">
</form>
<br>

<form action="AddDeptInfo.do" method="post">
    部 门 名 称：<input type="text" name="deptName"><br>
    部门员工数： <input type="text" name="deptEmpNum"><br>
    部门创建日期：<input type="text" name="deptBuildTime"><br>
    <input type="submit" value="新增部门信息">
</form>
<br>

<form action="DelDeptInfo.do" method="post">
    部 门 ID：<input type="text" name="deptId"><br>
    <input type="submit" value="删除部门信息">
</form>
</body>

<script type="text/javascript">
    var msg = "${MSG}";
    if (msg !== null && msg !== "") {
        alert(msg);
    }
</script>
</html>
