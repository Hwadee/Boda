<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户逾期信息</title>
<style type="text/css">
html, body {
	margin: 0;
	padding: 0;
	border: 0;
	background-color: #333;
}

.userquery {
	width: 100%;
	background-color: #eee;
}

.userqueryresult {
	width: 100%;
	background-color: #eee;
}

#customers {
	font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
	width: 100%;
	border-collapse: collapse;
}

#customers td, #customers th {
	font-size: 16px;
	border: 1px solid #98bf21;
	padding: 3px 7px 2px 7px;
}

#customers th {
	font-size: 20px;
	text-align: centred;
	padding-top: 5px;
	padding-bottom: 4px;
	background-color: #A7C942;
	color: #ffffff;
}

#customers tr.alt td {
	color: #000000;
	background-color: #EAF2D3;
}
</style>
<script type="text/javascript" src="js/jquery.js"></script>
<!-- <script src="http://code.jquery.com/jquery-1.11.3.min.js"></script> -->
</head>
<body>
	<div class="userquery">

		<fieldset>
			<legend>查询条件</legend>
			<form id="form1" action="overTimeAccountWork.do" method="post">
				<input type="hidden" id="currentPage" name="currentPage" value="${page.currentPage}"> 
				<input type="hidden" id="pageSize" name="pageSize" value="${page.pageSize}">
				<input type="hidden" id="allPageNum" name="allPageNum" value="${page.allPageNum}">
				<div>
					贷款id:<input id="accout" name="accout" value="${loan.loanId}" />&nbsp;
					姓名:<input id="username" name="userDetail.name" value="${loan.customerMessage.customerName}" />&nbsp; 
					身份证号:<input id="identifyId" name="userDetail.name" value="${loan.customerMessage.customerIdentifyId}" />&nbsp;
				</div>
				&nbsp;
				<div style="text-align: center;">
					<input type="button" value="查询" onclick="pageTurning(0)">&nbsp;&nbsp; 
					<input type="reset" value="复位">&nbsp;
				</div>
			</form>
		</fieldset>
	</div>
	&nbsp;
	<div class="userqueryresult">
		<fieldset>
			<legend>逾期账户信息</legend>
			<table id="customers">
				<tr>
					<th>贷款id</th>
					<th>姓名</th>
					<th>性别</th>
					<th>出生日期</th>
					<th>电话</th>
					<th>Email</th>
					<th>信用</th>
					<th>贷款金额</th>
					<th>贷款日期</th>
					<th>贷款状态</th>
					<th>开始还款日期</th>
					<th>贷款期限</th>
					<th>分期数</th>
					<th>贷款利率</th>
					<th>还款信息</th>
				</tr>
				<c:forEach items="${page.objList}" var="loan">
					<tr>
						<td>${loan.loanId}</td>
						<td><a href="${pageContext.request.contextPath}/overTimeAccountDistribute.do?customerId=${loan.customerMessage.customerId}">
						${loan.customerMessage.customerName}</a></td>
						<td>${loan.customerMessage.customerSex}</td>
						<td><fmt:formatDate value="${loan.customerMessage.customerBirthday}"
								pattern="yyyy-MM-dd" /></td>
						<td>${loan.customerMessage.customerPhone}</td>
						<td>${loan.customerMessage.customerEmail}</td>
						<td>${loan.customerMessage.customerCredit}</td>
						<td>${loan.loanMoney}</td>
						<td><fmt:formatDate value="${loan.loanDate}"
								pattern="yyyy-MM-dd" /></td>
						<td>${loan.loanState}</td>
						<td><fmt:formatDate value="${loan.returnStartDate}"
								pattern="yyyy-MM-dd" /></td>
						<td>${loan.returnYears}</td>
						<td>${loan.numberOfStages}</td>
						<td>${loan.rateOfInterest}</td>
						<td><a href="${pageContext.request.contextPath}/returnLoanMessage.do?loanId=${loan.loanId}">
						<input type="button" value="还款信息"></a></td>
					</tr>
				</c:forEach>
			</table>
			<div>
				<input type="button" value="首页" onclick="pageTurning(1)">
				<input type="button" value="上一页" onclick="pageTurning(2)">
				<span id="pageInfo">第${page.currentPage}页/共${page.allPageNum}页</span> 
				<input type="button" value="下一页" onclick="pageTurning(3)"> 
				<input type="button" value="末页" onclick="pageTurning(4)">
			</div>
		</fieldset>
	</div>
	<%-- --%>
	<script type="text/javascript">		
		//页面刷新的翻页
		function pageTurning(num) {
			var currentPage = parseInt("${page.currentPage}");
			var allPageNum = parseInt("${page.allPageNum}");
			switch (num) {
			case 0:
				currentPage = 1;
				break;
			case 1:
				if (currentPage == 1)
					return;
				currentPage = 1;
				break;
			case 2:
				if (currentPage == 1)
					return;
				currentPage--;
				break;
			case 3:
				if (currentPage == allPageNum)
					return;
				currentPage++;
				break;
			case 4:
				if (currentPage == allPageNum)
					return;
				currentPage = allPageNum;
				break;
			}
			document.getElementById("currentPage").value = currentPage;
			document.getElementById("form1").submit();
		}	

	</script>
</body>
</html>