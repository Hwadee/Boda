<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>还款信息</title>
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
	margin-left:10%;
	font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
	width: 80%;
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
	<div class="userqueryresult">
		<fieldset>
			<legend>还款信息</legend>
			<table id="customers">
				<tr>
					<th>还款id</th>
					<th>贷款id</th>
					<th>还款金额</th>
					<th>应还金额</th>
					<th>还款日期</th>
					<th>应还日期</th>
					<th>还款期数</th>
					<th>还款状态</th>
					<th>催促还款</th>
				</tr>
				<c:forEach items="${returnLoans}" var="returnLoans">
					<tr>
						<td>${returnLoans.returnId}</td>
						<td>${returnLoans.loanId}</td>
						<td>${returnLoans.returnMoney}</td>
						<td>${returnLoans.shouldReturnMoney}</td>
						<td><fmt:formatDate value="${returnLoans.returnDate}"
								pattern="yyyy-MM-dd" /></td>
						<td><fmt:formatDate value="${returnLoans.shouldReturnDate}"
								pattern="yyyy-MM-dd" /></td>
						<td>${returnLoans.whichStage}</td>
						<td>${returnLoans.returnState}</td>
						<td><a href="${pageContext.request.contextPath}/urgeForReturn.do?returnId=${returnLoans.returnId}&empId=1">
						<input type="button" value="催促还款"></a></td>
					</tr>
				</c:forEach>
			</table>
		</fieldset>
	</div>
</body>
</html>