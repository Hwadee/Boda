<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE HTML>
<html>
<head>
    <title>博达小额贷款业务管理系统登录</title>
    <link href="./css/style.css" rel="stylesheet" type="text/css" media="all"/>
    <style type="text/css">
        .sendCode a {
            float: right;
            color: #999;
            margin-bottom: 10px;
            font-family: 'Droid Sans', sans-serif;
        }

        .sendCode a:hover {
            color: #323B43;
        }
    </style>
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
            document.getElementById("sendCode").innerHTML = "已发送";
            document.getElementById("sendCode").onclick = function () {
                return false;
            };
//            alert(account);
            location.href = "SendValidationEmail.do?empAccount=" + account;
        }

        var msg = "${MSG}";
        if (msg !== null && msg !== "") {
            alert(msg);
        }

        <%--const smsg = "${successMSG}";--%>
        <%--if (smsg !== null && smsg !== "") {--%>
        <%--alert(smsg);--%>
        //        }

        <%--const empAccount = "${account}";--%>
        <%--if (empAccount === null || empAccount === "") {--%>
        <%--$("#empAccount").val("账号");--%>
        <%--} else {--%>
        <%--$("#empAccount").val(empAccount);--%>
        <%--}--%>
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
            <li style="margin-bottom: 0px;">
                <input id="empAccount" type="text" class="text" name="empAccount" value="${account}"
                       onfocus="this.value = '';"
                       onblur="if (this.value === '') {this.value = '账号';}"><a href="#" class=" icon user"></a>
            </li>
            <div class="sendCode"><a href="#" id="sendCode" onclick="sendValidationEmail()">发送验证码</a></div>
            <div class="clear"></div>
            <li>
                <input id="code" type="text" value="验证码" name="code" onfocus="this.value = '';"
                       onblur="if (this.value === '') {this.value = '验证码';}"> <a href="#" class="icon lock"></a>
            </li>
            <div class="clear"></div>
            <div class="submit">
                <input type="submit" value="重置密码">
                <!--<input id="sendCodebtn" type="button" value="发送验证码" onclick="sendValidationEmail()">-->
                <h4><a href="#" onclick="location.href = 'IntoLogin.do'">返回登录</a></h4>
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
