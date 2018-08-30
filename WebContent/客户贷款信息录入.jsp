<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 2018/8/11
  Time: 9:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width; initial-scale=1.0; maximum-scale=1.0; user-scalable=0;"/>
    <title>客户贷款申请</title>
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

<script type="text/javascript">
    var msg = "${MSG}";
    if (msg !== null && msg !== "") {
        alert(msg);
    }
</script>

<!-- Left side content -->
<jsp:include page="left.jsp"></jsp:include>
<!-- Right side -->
<div id="rightSide">
    <jsp:include page="top.jsp"></jsp:include>

    <!-- Title area -->
    <div class="titleArea">
        <div class="wrapper">
            <div class="pageTitle">
                <h5>贷前账户管理</h5><br>
                <h6>客户贷款申请</h6>
                <span>针对贷款用户个人贷款信息录入</span>
            </div>
            <div class="middleNav">

                <img src="./images/erweicode-2.jpg" alt="官网二维码"/>
                <div class="clear"></div>
            </div>
            <div class="clear"></div>
        </div>
    </div>
    <div class="line"></div>
    <!-- Main content wrapper -->
    <div class="wrapper">
        <div class="widgets">
            <div class="widget">
                <div class="title">
                    <img src="./images/icons/dark/stats.png" alt="" class="titleIcon">
                    <h6 id="edit">客户贷款申请信息</h6>
                </div>
                <form id="validate" method="post" class="form" action="AddLoanInfo.do">
                    <fieldset>
                        <div class="formRow">
                            <label>客户Id<span class="req">*</span> </label>
                            <div class="formRight">
                                <input type="text" id="addId" name="customerId"
                                       class="validate[required,custom[integer]]"/>
                            </div>
                            <div class="clear"></div>
                        </div>
                        <div class="formRow">
                            <label>员工Id<span class="req">*</span> </label>
                            <div class="formRight">
                                <input type="text" id="addEmpId" name="empId"
                                       class="validate[required,custom[integer]]"/>
                            </div>
                            <div class="clear"></div>
                        </div>
                        <div class="formRow">
                            <label>贷款<span class="req">*</span> </label>
                            <div class="formRight">
                                <input type="text" id="addLoanMoney" name="loanMoney"
                                       class="validate[required,custom[integer]]"/>
                            </div>
                            <div class="clear"></div>
                        </div>
                        <div class="formRow">
                            <label>贷款日期<span class="req">*</span> </label>
                            <div class="formRight">
                                <c:set var="now" value="<%=new java.util.Date()%>"/>
                                <input type="text" id="addLoanDate" name="loanDate"
                                       class="datepicker validate[required,custom[date]] "/>
                            </div>
                            <div class="clear"></div>
                        </div>
                        <%--<div class="formRow">--%>
                        <%--<label>贷款状态<span class="req">*</span> </label>--%>
                        <%--<div class="formRight">--%>
                        <%--<input type="text" id="addLoanState" name="loanState" class="validate[required]"/>--%>
                        <%--</div>--%>
                        <%--<div class="clear"></div>--%>
                        <%--</div>--%>
                        <div class="formRow">
                            <label>开始还款日期<span class="req">*</span> </label>
                            <div class="formRight">
                                <c:set var="now" value="<%=new java.util.Date()%>"/>
                                <input type="text" id="addReturnStartDate" name="returnStartDate"
                                       class="datepicker validate[required,custom[date]] "/>
                            </div>
                            <div class="clear"></div>
                        </div>
                        <div class="formRow">
                            <label>归还年数<span class="req">*</span> </label>
                            <div class="formRight">
                                <input type="text" id="addReturnYears" name="returnYears"
                                       class="validate[required,custom[integer]] "/>
                            </div>
                            <div class="clear"></div>
                        </div>
                        <div class="formRow">
                            <label>期数<span class="req">*</span> </label>
                            <div class="formRight">
                                <input type="text" id="NumberOfStages" name="numberOfStages"
                                       class="validate[required,custom[integer]] "/>
                            </div>
                            <div class="clear"></div>
                        </div>
                        <div class="formRow">
                            <label>利率<span class="req">*</span> </label>
                            <div class="formRight">
                                <input type="text" id="addRateOfInterest" name="rateOfInterest"
                                       class="validate[required,custom[number]] "/>
                            </div>
                            <div class="clear"></div>
                        </div>
                        <div class="formSubmit">
                            <input type="submit" value="提交" class="greenB"/>
                        </div>
                    </fieldset>
                </form>
            </div>
        </div>
    </div>

    <!-- Footer line -->
    <jsp:include page="foot.jsp"></jsp:include>

</div>

<div class="clear"></div>


</body>
</html>