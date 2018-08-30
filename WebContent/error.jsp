<%--
  Created by IntelliJ IDEA.
  User: Wuming
  Date: 2018/8/30
  Time: 9:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>遇到了一个错误</title>
</head>
<body>

<span id="tt" style="color:red; font-size:18">3</span> 秒后自动跳转到首页。如未跳转请 <a href="http://www.hrcb8.com">点击返回</a>。
<HR>
<script language="javascript" type="text/javascript">
    var sec = document.getElementById('tt').textContent;
    setInterval("redirect()", 1000);

    function redirect() {
        if (sec > 0) document.getElementById('tt').textContent = --sec;
        if (sec <= 0) location.href = 'index2.jsp';
    }
</script>
</body>
</html>
