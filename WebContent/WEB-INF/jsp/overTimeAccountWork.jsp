<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>逾期账户工作</title>
<style type="text/css">
html,body {
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

#customersTb {
	font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
	width: 80%;
	border-collapse: collapse;
}

#customersTb td, #customers th {
	font-size: 16px;
	border: 1px solid #98bf21;
	padding: 3px 7px 2px 7px;
}

#customersTb th {
	font-size: 20px;
	text-align: centred;
	padding-top: 5px;
	padding-bottom: 4px;
	background-color: #A7C942;
	color: #ffffff;
}

#customersTb tr.alt td {
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

			<form id="form1" method="post">
				<input type="hidden" id="currentPage" name="currentPage" value="${page.currentPage }">
				<input type="hidden" id="pageSize" name="pageSize" value="${page.pageSize }">
				<input type="hidden" id="allPageNum" name="allPageNum" value="${page.allPageNum }">
			</form>

		</fieldset>
	</div>
	&nbsp;
	<div class="userqueryresult">
		<fieldset>
			<legend>逾期账户信息</legend>
			<table id="customersTb">
				<tr>
					<th width="30px"><input type="checkbox" id="checkReverse" /></th>
					<th>贷款id</th>
					<th>客户姓名</th>
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
						<td align="center"><input type="checkbox" /></td>
						<td>${loan.loanId}</td>
						<td>${loan.customerMessage.customerName}</td>
						<td>${loan.loanMoney}</td>
						<td><fmt:formatDate value="${loan.loanDate}"
								pattern="yyyy-MM-dd" /></td>
						<td>${loan.loanState}</td>
						<td><fmt:formatDate value="${loan.returnStartDate}"
								pattern="yyyy-MM-dd" /></td>
						<td>${loan.returnYears}</td>
						<td>${loan.numberOfStages}</td>
						<td>${loan.rateOfInterest}</td>
						<td><input type="button" value="还款信息")"></td>
					</tr>
				</c:forEach>
				
				
				<c:if test="${page.objList!=null}">
					<tr>
						<td colspan="6" align="center">
							<button onclick="pageTurn_Ajax(1)">首页</button> &nbsp;
							<button onclick="pageTurn_Ajax(2)">上一页</button>&nbsp;
							&nbsp;第${page.currentPage }页&nbsp;/&nbsp;共${page.allPageNum }页&nbsp;
							<button onclick="pageTurn_Ajax(3)">下一页</button>&nbsp;
							<button onclick="pageTurn_Ajax(4)">末页</button>&nbsp;
							
						</td>
					</tr>
				</c:if>
			</table>
		</fieldset>
	</div>
</body>
</html>