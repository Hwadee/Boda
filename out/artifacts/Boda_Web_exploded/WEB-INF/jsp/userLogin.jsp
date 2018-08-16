<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户登录</title>
</head>
<body>
	
	<form action="UserLogin.do" method="post">
		账号：<input type="text" name="account"><br>
		密码：<input type="text" name="password"><br>
		<input type="submit" value="登录">
	</form>
</body>
<script type="text/javascript">
	var msg = "${MSG}";
	if(msg!=null&&msg!=""){
		alert(msg);
	}
	
</script>
</html>