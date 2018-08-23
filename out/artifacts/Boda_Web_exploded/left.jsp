<%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 2018/8/16
  Time: 19:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8"%>
<div id="leftSide">
    <div class="logo"><a href="#"><img src="images/logo.png" alt="" /></a></div>

    <div class="sidebarSep mt0"></div>

    <!-- Left navigation -->
    <ul id="menu" class="nav">
        <li class="dash"><a href="index2.jsp" title="" class="active"><span>首页</span></a></li>
        <li class="charts"><a href="#" title="" class="exp"><span>系统设置</span></a>
            <ul class="sub">
                <li><a href="IntoDeptInfo.do">部门管理</a></li>
                <li><a href="人员管理.jsp" title="">人员管理</a></li>
                <li><a href="权限设置.jsp" title="">权限设置</a></li>
                <li class="last"><a href="操作记录查询.jsp" title="">操作记录查询</a></li>
            </ul>
        </li>
        <li class="forms"><a href="#" title="" class="exp"><span>贷前账户管理</span></a>
            <ul class="sub">
                <li><a href="CustomerInfoEntry.do" title="">客户信息录入</a></li>
                <li><a href="客户信息查询.jsp" title="">客户信息查询</a></li>
                <li class="last"><a href="客户贷款审批.jsp" title="">客户贷款审批</a></li>
            </ul>
        </li>
        <li class="ui"><a href="#" title="" class="exp"><span>贷后账户管理</span></a>
            <ul class="sub">
                <li><a href="逾期账户分配条件.jsp" title="">逾期账户分配条件</a></li>
                <li><a href="逾期账户工作.jsp" title="">逾期账户工作</a></li>
                <li class="last"><a href="overTimeMessageTable.do" title="">逾期情况报表</a></li>
            </ul>
        </li>

        <li class="widgets"><a href="#" title="" class="exp"><span>财务管理</span></a>
            <ul class="sub">
                <li><a href="放款名单.jsp" title="">放款名单</a></li>
                <li class="last"><a href="还款名单.jsp" title="">还款名单</a></li>
            </ul>
        </li>
    </ul>
</div>
