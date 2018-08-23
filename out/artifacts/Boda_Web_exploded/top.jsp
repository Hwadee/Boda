<%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 2018/8/16
  Time: 19:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!-- Top fixed navigation -->
<div class="topNav">
    <div class="wrapper">
        <div class="welcome"><a href="#" title=""><img src="images/userPic.png" alt="" /></a><span>你好。主人${MSG}</span></div>
        <div class="userNav">
            <ul>
                <li><a href="UserDetail.do"><img src="images/icons/topnav/profile.png" alt="" /><span>个人中心</span></a></li>
                <li><a href="#" title=""><img src="images/icons/topnav/tasks.png" alt="" /><span>任务</span></a></li>
                <li class="dd"><a title=""><img src="images/icons/topnav/messages.png" alt="" /><span>消息</span><span class="numberTop">8</span></a>
                    <ul class="userDropdown">
                        <li><a href="#" title="" class="sAdd">new message</a></li>
                        <li><a href="#" title="" class="sInbox">inbox</a></li>
                        <li><a href="#" title="" class="sOutbox">outbox</a></li>
                        <li><a href="#" title="" class="sTrash">trash</a></li>
                    </ul>
                </li>
                <li><a href="#" title=""><img src="images/icons/topnav/settings.png" alt="" /><span>设置</span></a></li>
                <li><a href="javascript:window.close()"  title=""><img src="images/icons/topnav/logout.png" alt="" /><span>退出</span></a></li>
            </ul>
        </div>
        <div class="clear"></div>
    </div>
</div>

<!-- Responsive header -->
<div class="resp">
    <div class="respHead">
        <a href="#" title=""><img src="images/loginLogo.png" alt="" /></a>
    </div>

    <div class="cLine"></div>
    <div class="smalldd">
        <span class="goTo"><img src="images/icons/light/home.png" alt="" />导航</span>
        <ul class="smallDropdown">
            <li><a href="#" title=""><img src="images/icons/light/home.png" alt="" />首页</a></li>
            <li><a href="#" title="" class="exp"><img src="images/icons/light/stats.png" alt="" />系统设置<strong>4</strong></a>
                <ul>
                    <li><a href="#" title="">部门设置</a></li>
                    <li><a href="#" title="">人员管理</a></li>
                    <li><a href="#" title="">权限设置</a></li>
                    <li class="last"><a href="#" title="">操作记录查询</a></li>
                </ul>
            </li>
            <li><a href="#" title="" class="exp"><img src="images/icons/light/pencil.png" alt="" />贷前账户管理<strong>3</strong></a>
                <ul>
                    <li><a href="#" title="">客户信息录入</a></li>
                    <li><a href="#" title="">客户信息查询</a></li>
                    <li class="last"><a href="#" title="">客户贷款审批</a></li>
                </ul>
            </li>
            <li><a href="#" title="" class="exp"><img src="images/icons/light/users.png" alt="" />贷后账户管理<strong>3</strong></a>
                <ul>
                    <li><a href="#" title="">逾期账户分配条件</a></li>
                    <li><a href="#" title="">逾期账户工作</a></li>
                    <li class="last"><a href="#" title="">逾期情况报表</a></li>
                </ul>
            </li>
            <li><a href="#" title="" class="exp"><img src="images/icons/light/frames.png" alt="" />财务管理<strong>2</strong></a>
                <ul>
                    <li><a href="#" title="">放款名单</a></li>
                    <li class="last"><a href="#" title="">还款名单</a></li>
                </ul>
            </li>
        </ul>
    </div>
    <div class="cLine"></div>
</div>
