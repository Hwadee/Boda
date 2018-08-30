<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>
<%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 2018/8/17
  Time: 9:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width; initial-scale=1.0; maximum-scale=1.0; user-scalable=0;"/>
    <title>客户信息更新</title>
    <link href="./css/main.css" rel="stylesheet" type="text/css"/>
    <script type="text/javascript" src="./js/table.js"></script>
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
    <script type="text/javascript" src="./js/birthday.js"></script>

    <!-- Shared on MafiaShare.net  --><!-- Shared on MafiaShare.net  -->
</head>
<body>

<!-- Left side content -->
<jsp:include page="left.jsp"></jsp:include>
<!-- Right side -->
<div id="rightSide">
    <jsp:include page="top.jsp"></jsp:include>

    <!-- Title area -->
    <div class="titleArea">
        <div class="wrapper">
            <div class="pageTitle">
                <h5>客户信息</h5><br>
                <h6>客户信息更新</h6>
                <span>管理客户信息</span>
            </div>
            <div class="middleNav">

                <img src="./images/erweicode-2.jpg" alt="官网二维码"/>
                <div class="clear"></div>
            </div>
            <div class="clear"></div>
        </div>
    </div>

    <div class="line"></div>
    <!-- Main 表格 -->
    <div class="wrapper">
        <form action="CusInfo.do" class="searchWidget">
            <input type="text" name="customerName" placeholder="搜索客户信息" id=""/>
            <input type="submit" value=""/>
        </form>
    </div>
    <!--更新客户信息-->
    <div id="updateInfo" class="wrapper">
        <div class="widgets">
            <div class="widget">
                <div class="title">
                    <img src="./images/icons/dark/stats.png" alt="" class="titleIcon">
                    <h6 id="edit">客户信息编辑</h6>
                </div>
                <form action="UpdateCusInfo.do" class="form" method="post" id="validate">
                    <fieldset>
                        <div class="formRow">
                            <label>客户ID<span class="req">*</span> </label>
                            <div class="formRight">
                                <input type="text" id="updateId" name="customerId" value="${infotoupdate.customerId}"
                                       readonly="readonly">
                            </div>
                            <div class="clear"></div>
                        </div>
                        <div class="formRow">
                            <label>客户姓名<span class="req">*</span> </label>
                            <div class="formRight">
                                <input type="text" id="updateName" name="customerName" class="validate[required]"
                                       value="${infotoupdate.customerName}"/>
                            </div>
                            <div class="clear"></div>
                        </div>
                        <div class="formRow">
                            <label>客户性别<span class="req">*</span> </label>
                            <div class="formRight">
                                <input type="text" id="updateSex" name="customerSex" class="validate[required]"
                                       value="${infotoupdate.customerSex}"/>
                            </div>
                            <div class="clear"></div>
                        </div>
                        <div class="formRow">
                            <label>客户身份证<span class="req">*</span> </label>
                            <div class="formRight">
                                <input type="text" id="updateIdentityId" name="customerIdentityId"
                                       class="validate[required,custom[integer]]"
                                       value="${infotoupdate.customerIdentityId}"
                                       onkeyup="showBirth(this,'updateBirthday')"/>
                            </div>
                            <div class="clear"></div>
                        </div>
                        <div class="formRow">
                            <label>客户生日<span class="req">*</span> </label>
                            <div class="formRight">
                                <input type="text" id="updateBirthday" name="customerBirthday" readonly="readonly"
                                       value=
                                       <fmt:formatDate pattern="yyyy-MM-dd" value="${infotoupdate.customerBirthday}"/>
                                />
                            </div>
                            <div class="clear"></div>
                        </div>
                        <div class="formRow">
                            <label>客户邮箱<span class="req">*</span> </label>
                            <div class="formRight">
                                <input type="text" id="updateEmail" name="customerEmail"
                                       class="validate[required,custom[email]]"
                                       value="${infotoupdate.customerEmail}"/>
                            </div>
                            <div class="clear"></div>
                        </div>
                        <div class="formRow">
                            <label>客户电话<span class="req">*</span> </label>
                            <div class="formRight">
                                <input type="text" id="updatePhone" name="customerPhone"
                                       class="validate[required,custom[phone]]"
                                       value="${infotoupdate.customerPhone}"/>
                            </div>
                            <div class="clear"></div>
                        </div>
                        <div class="formRow">
                            <label>客户地址<span class="req">*</span> </label>
                            <div class="formRight">
                                <input type="text" id="updateAddress" name="customerAddress" class="validate[required]"
                                       value="${infotoupdate.customerAddress}"/>
                            </div>
                            <div class="clear"></div>
                        </div>
                        <div class="formRow">
                            <label>信誉度<span class="req">*</span> </label>
                            <div class="formRight">
                                <input type="text" id="updateCredit" name="customerCredit"
                                       class="validate[required,custom[integer]]"
                                       value="${infotoupdate.customerCredit}"/>
                            </div>
                            <div class="clear"></div>
                        </div>


                        <div class="formSubmit">
                            <input type="submit" value="更新" class="greenB"/>
                            <input type="button" value="取消" class="redB" onclick="history.back()"/>
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

<script type="text/javascript">

    $(function () {
        $("#updateBirthday").datepicker({
            //限制日期范围
//            minDate: -20,
            maxDate: 0,

            //月份、年份下拉框
            changeMonth: true,
            changeYear: true,

            //日期格式
            dateFormat: "yy-mm-dd"
        });
    });
</script>

</body>
</html>
