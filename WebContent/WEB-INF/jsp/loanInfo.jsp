<%--
  Created by IntelliJ IDEA.
  User: Wuming
  Date: 2018/8/19
  Time: 14:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>贷款信息</title>
</head>
<body>
<div>
    ${loaninfo}<br>
</div>

<form action="LoanInfo.do" method="post">
    搜索贷款信息：<br>
    id： <input type="text" name="id"><br>
    姓名： <input type="text" name="name"><br>
    借款日期：<input type="text" name="loanMinDate" placeholder="最早">
    <input type="text" name="loanMaxDate" placeholder="最晚"><br>
    还款日期：<input type="text" name="returnMinDate" placeholder="最早">
    <input type="text" name="returnMaxDate" placeholder="最晚"><br>
    金额： <input type="text" name="minAmount" placeholder="最少">
    <input type="text" name="maxAmount" placeholder="最多"><br>
    <input type="submit" value="搜索">
</form>

</body>

<script type="text/javascript">
    var msg = "${MSG}";
    if (msg !== null && msg !== "") {
        alert(msg);
    }
</script>
</html>
