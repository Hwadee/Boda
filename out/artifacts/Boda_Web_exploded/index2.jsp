<%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 2018/8/16
  Time: 19:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width; initial-scale=1.0; maximum-scale=1.0; user-scalable=0;"/>
    <title>首页</title>
    <link href="./css/main.css" rel="stylesheet" type="text/css"/>

    <script type="text/javascript" src="./js/jquery.min.js"></script>

    <script type="text/javascript" src="./js/plugins/spinner/ui.spinner.js"></script>
    <script type="text/javascript" src="./js/plugins/spinner/jquery.mousewheel.js"></script>

    <script type="text/javascript" src="./js/jquery-ui.min.js"></script>

    <script type="text/javascript" src="./js/plugins/charts/excanvas.min.js"></script>
    <script type="text/javascript" src="./js/plugins/charts/jquery.flot.js"></script>
    <script type="text/javascript" src="./js/plugins/charts/jquery.flot.orderBars.js"></script>
    <script type="text/javascript" src="./js/plugins/charts/jquery.flot.pie.js"></script>
    <script type="text/javascript" src="./js/plugins/charts/jquery.flot.resize.js"></script>
    <script type="text/javascript" src="./js/plugins/charts/jquery.sparkline.min.js"></script>

    <script type="text/javascript" src="./js/plugins/forms/uniform.js"></script>
    <script type="text/javascript" src="./js/plugins/forms/jquery.cleditor.js"></script>
    <script type="text/javascript" src="./js/plugins/forms/jquery.validationEngine-en.js"></script>
    <script type="text/javascript" src="./js/plugins/forms/jquery.validationEngine.js"></script>
    <script type="text/javascript" src="./js/plugins/forms/jquery.tagsinput.min.js"></script>
    <script type="text/javascript" src="./js/plugins/forms/autogrowtextarea.js"></script>
    <script type="text/javascript" src="./js/plugins/forms/jquery.maskedinput.min.js"></script>
    <script type="text/javascript" src="./js/plugins/forms/jquery.dualListBox.js"></script>
    <script type="text/javascript" src="./js/plugins/forms/jquery.inputlimiter.min.js"></script>
    <script type="text/javascript" src="./js/plugins/forms/chosen.jquery.min.js"></script>

    <script type="text/javascript" src="./js/plugins/wizard/jquery.form.js"></script>
    <script type="text/javascript" src="./js/plugins/wizard/jquery.validate.min.js"></script>
    <script type="text/javascript" src="./js/plugins/wizard/jquery.form.wizard.js"></script>

    <script type="text/javascript" src="./js/plugins/uploader/plupload.js"></script>
    <script type="text/javascript" src="./js/plugins/uploader/plupload.html5.js"></script>
    <script type="text/javascript" src="./js/plugins/uploader/plupload.html4.js"></script>
    <script type="text/javascript" src="./js/plugins/uploader/jquery.plupload.queue.js"></script>

    <script type="text/javascript" src="./js/plugins/tables/datatable.js"></script>
    <script type="text/javascript" src="./js/plugins/tables/tablesort.min.js"></script>
    <script type="text/javascript" src="./js/plugins/tables/resizable.min.js"></script>

    <script type="text/javascript" src="./js/plugins/ui/jquery.tipsy.js"></script>
    <script type="text/javascript" src="./js/plugins/ui/jquery.collapsible.min.js"></script>
    <script type="text/javascript" src="./js/plugins/ui/jquery.prettyPhoto.js"></script>
    <script type="text/javascript" src="./js/plugins/ui/jquery.progress.js"></script>
    <script type="text/javascript" src="./js/plugins/ui/jquery.timeentry.min.js"></script>
    <script type="text/javascript" src="./js/plugins/ui/jquery.colorpicker.js"></script>
    <script type="text/javascript" src="./js/plugins/ui/jquery.jgrowl.js"></script>
    <script type="text/javascript" src="./js/plugins/ui/jquery.breadcrumbs.js"></script>
    <script type="text/javascript" src="./js/plugins/ui/jquery.sourcerer.js"></script>

    <script type="text/javascript" src="./js/plugins/calendar.min.js"></script>
    <script type="text/javascript" src="./js/plugins/elfinder.min.js"></script>

    <script type="text/javascript" src="./js/custom.js"></script>

    <script type="text/javascript" src="./js/charts/chart.js"></script>

    <!-- Shared on MafiaShare.net  --><!-- Shared on MafiaShare.net  --></head>
<body>
<jsp:include page="left.jsp"></jsp:include>
<!-- Right side -->
<div id="rightSide">
    <jsp:include page="top.jsp"></jsp:include>
    <!-- Title area -->
    <div class="titleArea">
        <div class="wrapper">
            <div class="pageTitle">
                <h5>欢迎使用博达易贷业务管理系统</h5><br>
                <!--<h6>分享财富（T-4）</h6>-->
                <span>博达易贷业务管理系统用于博达公司内部的小额贷款业务的管理，主要用途有客户资料的录入、申请审核、<br>贷款流程的监管、业务数据分析、风险管理、贷后管理以及公司的行政办公、日常事务管理等功能。</span>
            </div>
            <div class="middleNav">
                <img src="images/erweicode-2.jpg" alt="官网二维码"/>
                <div class="clear"></div>
            </div>
            <div class="clear"></div>
        </div>
    </div>

    <div class="line" style="display:none;"></div>

    <!-- Page statistics and control buttons area -->
    <div class="statsRow" style="display:none;">
        <div class="wrapper">
            <div class="controlB">
                <ul>
                    <li><a href="#" title=""><img src="images/icons/control/32/plus.png"
                                                  alt=""/><span>Add new session</span></a></li>
                    <li><a href="#" title=""><img src="images/icons/control/32/database.png"
                                                  alt=""/><span>New DB entry</span></a></li>
                    <li><a href="#" title=""><img src="images/icons/control/32/hire-me.png"
                                                  alt=""/><span>Add new user</span></a></li>
                    <li><a href="#" title=""><img src="images/icons/control/32/statistics.png" alt=""/><span>Check statistics</span></a>
                    </li>
                    <li><a href="#" title=""><img src="images/icons/control/32/comment.png" alt=""/><span>Review comments</span></a>
                    </li>
                    <li><a href="#" title=""><img src="images/icons/control/32/order-149.png"
                                                  alt=""/><span>Check orders</span></a></li>
                </ul>
                <div class="clear"></div>
            </div>
        </div>
    </div>

    <div class="line"></div>

    <!-- Main content wrapper -->
    <div class="wrapper">
        <!-- Widgets -->
        <div class="widgets">
            <!-- 左边2个竖着的 -->
            <div class="oneTwo">
                <!-- 第一块：贷款前 -->
                <div class="widget">
                    <div class="title">
                        <img src="images/icons/dark/money.png" alt="" class="titleIcon"/>
                        <h6>贷前账户管理</h6>
                    </div>
                    <div class="updates">
                        <div class="newUpdate">
                            <div class="uDone">
                                <a href="IntoAddLoan.do" title>
                                    <strong>贷款信息录入</strong>
                                </a>
                                <span>针对贷款用户个人信息录入</span>
                            </div>
                        </div>
                        <div class="clear"></div>
                        <div class="newUpdate">
                            <div class="uDone">
                                <a href="IntoCusInfo.do" title>
                                    <strong>客户信息查询</strong>
                                </a>
                                <span>查询各贷款账户状态、查询数量、查询客户信息、模糊查询等</span>
                            </div>
                        </div>
                        <div class="clear"></div>
                        <div class="newUpdate">
                            <div class="uDone">
                                <a href="QueryLoanInfo.do" title>
                                    <strong>客户贷款审批</strong>
                                </a>
                                <span>针对贷款账户资料进行审批流程</span>
                            </div>
                        </div>
                        <div class="clear"></div>


                    </div>
                </div>
                <!-- 第二块：贷款后 -->
                <div class="widget">
                    <div class="title">
                        <img src="images/icons/dark/money.png" alt="" class="titleIcon"/>
                        <h6>贷后账户管理</h6>
                    </div>
                    <div class="updates">
                        <%--<div class="newUpdate">--%>
                            <%--<div class="uDone">--%>
                                <%--<a href="逾期账户分配条件.jsp" title>--%>
                                    <%--<strong>逾期账户分配条件</strong>--%>
                                <%--</a>--%>
                                <%--<span>根据账户情况设置分配条件</span>--%>
                            <%--</div>--%>
                        <%--</div>--%>
                        <%--<div class="clear"></div>--%>
                        <div class="newUpdate">
                            <div class="uDone">
                                <a href="IntoOverTimeWork.do" title>
                                    <strong>逾期账户工作</strong>
                                </a>
                                <span>针对逾期账户进行催收工作，主要页面能显示客户基本信息、还款情况、逾期天数等</span>
                            </div>
                        </div>
                        <div class="clear"></div>
                        <div class="newUpdate">
                            <div class="uDone">
                                <a href="overTimeMessageTable.do" title>
                                    <strong>逾期情况报表</strong>
                                </a>
                                <span>表现各组织催收情况、逾期还款情况</span>
                            </div>
                        </div>
                        <div class="clear"></div>

                    </div>
                </div>
            </div>
            <!--右边两个竖着的-->
            <div class="oneTwo">
                <!-- 第三块：财务管理 -->
                <div class="widget">
                    <div class="title"><img src="images/icons/dark/add.png" alt="" class="titleIcon"/><h6>财务管理</h6>
                    </div>
                    <div class="wUserInfo">
                        <a href="#" title="" class="wUserPic"><img src="images/user.png" alt=""/></a>
                        <ul class="leftList">
                            <li><a href="IntoLoanInfo.do" title=""><strong>放款名单</strong></a></li>
                            <li><a href="IntoLoanInfo.do" title="">表现当天已签署合同名单、及历史记录</a></li>
                        </ul>
                        <div class="clear"></div>
                    </div>

                    <div class="cLine"></div>

                    <div class="wUserInfo">
                        <a href="#" title="" class="wUserPic"><img src="images/user.png" alt=""/></a>
                        <ul class="leftList">
                            <li><a href="returnOfToday.do" title=""><strong>还款名单</strong></a></li>
                            <li><a href="returnOfToday.do" title="">今日还款名单</a></li>
                        </ul>
                        <div class="clear"></div>
                    </div>

                    <div class="cLine"></div>

                </div>

                <!-- 第四块：系统设置 -->
                <div class="widget">
                    <div class="title"><img src="images/icons/dark/refresh4.png" alt="" class="titleIcon"/><h6>系统设置</h6>
                    </div>

                    <div class="updates">
                        <div class="newUpdate">
                            <span class="uNotice">
                                <a href="IntoDeptInfo.do" title=""><strong>部门管理</strong></a>
                                <span>建立各个部门的基本资料</span>
                            </span>
                            <div class="clear"></div>
                        </div>

                        <div class="newUpdate">
                            <span class="uNotice">
                                <a href="IntoEmpInfo.do" title=""><strong>人员管理</strong></a>
                                <span>建立人员的基本资料</span>
                            </span>
                            <div class="clear"></div>
                        </div>

                        <div class="newUpdate">
                            <span class="uNotice">
                                <a href="IntoPowerSetting.do" title=""><strong>权限设置</strong></a>
                                <span>根据职位位分配不同的系统操作权限</span>
                            </span>
                            <div class="clear"></div>
                        </div>

                        <div class="newUpdate">
                            <span class="uNotice">
                                <a href="OperationLogs.do" title=""><strong>操作系统查询</strong></a>
                                <span>查询系统使用操作记录</span>
                            </span>
                            <div class="clear"></div>
                        </div>

                    </div>
                </div>
            </div>

            <div class="clear"></div>
        </div>
    </div>

    <!-- Footer line -->
    <jsp:include page="foot.jsp"></jsp:include>

</div>

<div class="clear"></div>
<script type="text/javascript">
    const msg = "${MSG}";
    if (msg !== null && msg !== "") {
        alert(msg);
    }
</script>
</body>
</html>
