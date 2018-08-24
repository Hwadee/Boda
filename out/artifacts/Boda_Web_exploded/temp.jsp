<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>登录测试</title>
</head>
<body>
<a href="IntoLogin.do">进入登录页面</a><br>
<a href="IntoOperationLogs.do">查看操作记录</a><br>
<a href="IntoDeptInfo.do">搜索部门信息</a><br>
<a href="IntoLoanInfo.do">搜索贷款信息</a><br>
<a href="WEB-INF/jsp/imageUpload.jsp">图片上传</a><br><br>

<form action="UpdateHeadPortrait.do" enctype="multipart/form-data" method="post">
    <input type="file" accept="image/*" name="image"><br>
    <input type="submit" value="提交">
</form>
</body>
<
<script type="text/javascript">
var msg = "${MSG}";
if (msg !== null && msg !== "") {
alert(msg);
}
</script>
</html>
