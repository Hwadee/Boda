<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE HTML>
<html>
<head>
    <title>博达小额贷款业务管理系统登录</title>
    <link href="./css/style.css" rel="stylesheet" type="text/css" media="all"/>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <!-- -->
    <script>var __links = document.querySelectorAll('a');

    function __linkClick(e) {
        parent.window.postMessage(this.href, '*');
    };
    for (var i = 0, l = __links.length; i < l; i++) {
        if (__links[i].getAttribute('data-t') === '_blank') {
            __links[i].addEventListener('click', __linkClick, false);
        }
    }</script>
    <script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
    <script>$(document).ready(function (c) {
        $('.alert-close').on('click', function (c) {
            $('.message').fadeOut('slow', function (c) {
                $('.message').remove();
            });
        });
    });
    </script>
</head>
<body>
<!-- contact-form -->
<div class="message warning">
    <div class="inset">
        <div class="login-head">
            <h1>欢迎登录</h1>
            <div class="alert-close"></div>
        </div>
        <form action="UserLogin.do" method="post">
            <li>
                <input type="text" class="text" name="account" value="Username" onfocus="this.value = '';"
                       onblur="if (this.value === '') {this.value = 'Username';}"><a href="#" class=" icon user"></a>
            </li>
            <div class="clear"></div>
            <li>
                <input type="password" value="Password" name="password" onfocus="this.value = '';"
                       onblur="if (this.value === '') {this.value = 'Password';}"> <a href="#" class="icon lock"></a>
            </li>
            <div class="clear"></div>
            <div class="submit">
                <input type="submit" value="登 录">
                <h4><a href="#">忘记密码?</a></h4>
                <div class="clear"></div>
            </div>
        </form>
    </div>
</div>
</div>
<div class="clear"></div>
<!--- footer --->
<script type="text/javascript">
    var msg = "${MSG}";
    if (msg !== null && msg !== "") {
        alert(msg);
    }
</script>
</body>
</html>
