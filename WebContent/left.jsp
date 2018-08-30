<%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 2018/8/16
  Time: 19:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<div id="leftSide">
    <div class="logo"><a href="#"><img src="images/logo.png" alt=""/></a></div>

    <div class="sidebarSep mt0"></div>

    <!-- Left navigation -->
    <ul id="menu" class="nav">
        <li class="dash"><a href="index2.jsp" title="" class="active"><span>首页</span></a></li>
        <li class="charts"><a href="#" title="" class="exp"><span>系统设置</span></a>
            <ul class="sub">
                <li><a href="IntoDeptInfo.do">部门管理</a></li>
                <li><a href="IntoEmpInfo.do" title="">人员管理</a></li>
                <li><a href="IntoPowerSetting.do" title="">权限设置</a></li>
                <li class="last"><a href="OperationLogs.do" title="">操作记录查询</a></li>
            </ul>
        </li>
        <li class="forms"><a href="#" title="" class="exp"><span>贷前账户管理</span></a>
            <ul class="sub">
                <li><a href="IntoAddLoan.do" title="">贷款信息录入</a></li>
                <li><a href="IntoCusInfo.do" title="">客户信息查询</a></li>
                <li class="last"><a href="QueryLoanInfo.do" title="">客户贷款审批</a></li>
            </ul>
        </li>
        <li class="ui"><a href="#" title="" class="exp"><span>贷后账户管理</span></a>
            <ul class="sub">
                <li><a href="IntoOverTimeWork.do" title="">逾期账户工作</a></li>
                <li class="last"><a href="overTimeMessageTable.do" title="">逾期情况报表</a></li>
            </ul>
        </li>

        <li class="widgets"><a href="#" title="" class="exp"><span>财务管理</span></a>
            <ul class="sub">
                <li><a href="IntoLoanInfo.do" title="">放款名单</a></li>
                <li><a href="returnAccountWork.do" title="">还款功能</a></li>
                <li class="last"><a href="returnOfToday.do" title="">还款名单</a></li>
            </ul>
        </li>
    </ul>
</div>
