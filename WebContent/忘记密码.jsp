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

    <script type="text/javascript">

        function sendValidationEmail() {
            const account = $("#empAccount").val();

//            alert(account);
            location.href = "SendValidationEmail.do?empAccount=" + account;
        }

        var smsg = "${successMSG}";
        if (smsg !== null && smsg !== "") {
            $("#sendCodebtn").val("已发送");
            $("#sendCodebtn").attr('disabled', true);
            $("#empAccount").val(${account});
        }

        var msg = "${MSG}";
        if (msg !== null && msg !== "") {
            alert(msg);
        }
    </script>
</head>
<body>
<!-- contact-form -->
<div class="message warning">
    <div class="inset">
        <div class="login-head">
            <h1>重置密码</h1>
            <div class="alert-close"></div>
        </div>
        <form action="ForgetPasswd.do" method="post">
            <li>
                <input id="empAccount" type="text" class="text" name="empAccount" value="账号" onfocus="this.value = '';"
                       onblur="if (this.value === '') {this.value = '账号';}"><a href="#" class=" icon user"></a>
                <input id="sendCodebtn" type="button" value="发送验证码" onclick="sendValidationEmail()">
            </li>
            <div class="clear"></div>
            <li>
                <input id="code" type="text" value="验证码" name="code" onfocus="this.value = '';"
                       onblur="if (this.value === '') {this.value = '验证码';}"> <a href="#" class="icon lock"></a>
            </li>
            <div class="clear"></div>
            <div class="submit">
                <input type="submit" value="重置密码">
                <div class="clear"></div>
            </div>
        </form>

    </div>
</div>
</div>
<div class="clear"></div>
<!--- footer --->
</body>
</html>
