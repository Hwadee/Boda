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
    <title>客户信息录入</title>
    <link href="./css/main.css" rel="stylesheet" type="text/css"/>
    <script type="text/javascript" src="./js/jquery.min.js"></script>
    <script type="text/javascript" src="./js/birthday.js"></script>
    <script type="text/javascript" src="./js/place.js"></script>
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

<body onload="showDay()">

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
                <h6>客户信息录入</h6>
                <span>针对贷款用户个人信息录入</span>
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
                    <img src="./images/icons/dark/stats.png" alt class="titleIcon">
                    <h6 id="edit">客户信息</h6>
                </div>
                <form id="validate" class="form" method="post" action autocomplete="off">
                    <fieldset>
                        <div class="formRow">
                            <label>姓名<span class="req">*</span> </label>
                            <div class="formRight">
                                <input type="text"/>
                            </div>
                            <div class="clear"></div>
                        </div>
                        <div class="formRow">
                            <label>性别<span class="req">*</span> </label>
                            <div class="formRight">
                                <input type="radio" name="sex" id="male" data-prompt-position="topRight:102"
                                       style="opacity: 0;"><label for="male">男</label>
                                <input type="radio" name="sex" id="female" data-prompt-position="topRight:102"
                                       style="opacity: 0;"><label for="female">女</label>
                            </div>
                            <div class="clear"></div>
                        </div>
                        <div class="formRow">
                            <label>身份证号<span class="req">*</span> </label>
                            <div class="formRight">
                                <input type="text" id="IDcode" onkeyup="showBirth()"/>
                            </div>
                            <div class="clear"></div>
                        </div>
                        <div class="formRow dnone">
                            <label>生日：</label>
                            <div class="formRight">
                                <span class="oneThree"><input type="text" readonly="true" id="YYYY"></span>
                                <span class="oneThree"><input type="text" readonly="true" id="MM"></span>
                                <span class="oneThree"><input type="text" readonly="true" id="DD"></span>
                            </div>

                            <div class="clear"></div>
                        </div>
                        <div class="formRow">
                            <label>邮箱<span class="req">*</span> </label>
                            <div class="formRight">
                                <input type="text"/>
                            </div>
                            <div class="clear"></div>
                        </div>
                        <div class="formRow">
                            <label>电话<span class="req">*</span> </label>
                            <div class="formRight">
                                <input type="text"/>
                            </div>
                            <div class="clear"></div>
                        </div>
                        <div class="formRow dnone">
                            <label>所在地区：</label>
                            <div class="formRight">
                                <div class="oneTwo"><select
                                        onchange="chinaChange(this,document.getElementById('city'))">
                                    <option value="请选择市区">请选择省份</option>
                                    <option value="北京市">北京市</option>
                                    <option value="天津市">天津市</option>
                                    <option value="上海市">上海市</option>
                                    <option value="重庆市">重庆市</option>
                                    <option value="河北省">河北省</option>
                                    <option value="山西省">山西省</option>
                                    <option value="辽宁省">辽宁省</option>
                                    <option value="吉林省">吉林省</option>
                                    <option value="黑龙江省">黑龙江省</option>
                                    <option value="江苏省">江苏省</option>
                                    <option value="浙江省">浙江省</option>
                                    <option value="安徽省">安徽省</option>
                                    <option value="福建省">福建省</option>
                                    <option value="江西省">江西省</option>
                                    <option value="山东省">山东省</option>
                                    <option value="河南省">河南省</option>
                                    <option value="湖北省">湖北省</option>
                                    <option value="湖南省">湖南省</option>
                                    <option value="广东省">广东省</option>
                                    <option value="海南省">海南省</option>
                                    <option value="四川省">四川省</option>
                                    <option value="贵州省">贵州省</option>
                                    <option value="云南省">云南省</option>
                                    <option value="陕西省">陕西省</option>
                                    <option value="甘肃省">甘肃省</option>
                                    <option value="青海省">青海省</option>
                                    <option value="台湾省">台湾省</option>
                                    <option value="广西壮族自治区">广西壮族自治区</option>
                                    <option value="内蒙古自治区">内蒙古自治区</option>
                                    <option value="西藏自治区">西藏自治区</option>
                                    <option value="宁夏回族自治区">宁夏回族自治区</option>
                                    <option value="新疆维吾尔自治区">新疆维吾尔自治区</option>
                                    <option value="香港特别行政区">香港特别行政区</option>
                                    <option value="澳门特别行政区">澳门特别行政区</option>
                                </select></div>
                                <div class="oneTwo"><select name="city" id="city">
                                    <option value="请选择市区">请选择市区</option>
                                </select>
                                </div>
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