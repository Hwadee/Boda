<%@ page import="java.util.Date" %><%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 2018/8/11
  Time: 9:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>个人中心</title>
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
    <script type="text/javascript" src="./js/personalCenter.js"></script>
    <!-- Shared on MafiaShare.net  --><!-- Shared on MafiaShare.net  --></head>
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
                <h5>个人中心</h5><br>
                <h6>个人信息</h6>
                <span>可以在此页面查看个人信息，或对个人信息进行修改。</span>
            </div>
            <div class="middleNav">

                <img src="images/erweicode-2.jpg" alt="官网二维码"/>
                <div class="clear"></div>
            </div>
            <div class="clear"></div>
        </div>
    </div>
    <div class="line"></div>
    <!-- Main content wrapper -->
    <div class="wrapper">
        <div class="widget rightTabs">
            <div class="title"><img src="images/icons/dark/stats.png" alt="" class="titleIcon"><h6>我的资料</h6></div>
            <ul class="tabs">
                <li><a href="#tab1">基本信息</a></li>
                <li><a href="#tab2">账户密码</a></li>
                <li><a href="#tab3">上传头像</a></li>
            </ul>
            <div class="tab_container">
                <div id="tab1" class="tab_content np" style="display: block;">
                    <form class="form" method="post" action="UpdateUserInfo.do">
                        <fieldset>
                            <div>
                                <nobr>
                                    <div style="width: 80%;">
                                        <div class="formRow">
                                            <div class="oneThree"><label>姓名</label>
                                                <div class="formRight"><input type="text" value="${detailInfo.empName}"
                                                                              class="validate[required]"
                                                                              readonly="readonly"
                                                                              name="name" id="name"/></div>
                                            </div>
                                            <div class="oneThree"><label>性别</label>
                                                <div class="formRight"><input type="text" value="${detailInfo.empSex}"
                                                                              readonly="readonly" name="sex" id="sex"/>
                                                </div>
                                            </div>
                                            <div class="oneThree"><label>生日</label>
                                                <div class="formRight"><input type="text"
                                                                              value="${detailInfo.printEmpBirthday()}"
                                                                              readonly="readonly" name="birthday"
                                                                              id="birthday"/></div>
                                            </div>
                                            <div class="clear"></div>
                                        </div>

                                        <div class="formRow">
                                            <div class="oneThree"><label>体重</label>
                                                <div class="formRight"><input type="text"
                                                                              value="${detailInfo.empWeight}"
                                                                              readonly="readonly" name="weight"
                                                                              id="weight"/></div>
                                            </div>
                                            <div class="oneThree"><label>身高</label>
                                                <div class="formRight"><input type="text"
                                                                              value="${detailInfo.empHeight}"
                                                                              readonly="readonly" name="height"
                                                                              id="height"/></div>
                                            </div>
                                            <div class="oneThree"><label>教育度</label>
                                                <div class="formRight"><input type="text"
                                                                              value="${detailInfo.empEducation}"
                                                                              readonly="readonly" name="education"
                                                                              id="education"/></div>
                                            </div>
                                            <div class="clear"></div>
                                        </div>

                                        <div class="formRow">
                                        <span class="oneThree"><label>员工ID</label><div class="formRight"> <input
                                                type="text" value="${detailInfo.empDetailId}" readonly="readonly"></div></span>
                                            <span class="oneThree"><label>部门</label><div class="formRight"> <input
                                                    type="text" value="人事部门" readonly="readonly"></div></span>
                                            <span class="oneThree"><label>职位</label><div class="formRight"> <input
                                                    type="text" value="普通员工" readonly="readonly"></div></span>
                                            <div class="clear"></div>
                                        </div>
                                    </div>
                                </nobr>

                                <div style="width: 10%;">
                                    <img src="images/images.jpg" alt=""/>
                                    <%--<p>TEST</p>--%>
                                </div>

                            </div>
                        </fieldset>
                        <fieldset>
                            <div class="formRow">
                                <div class="oneTwo"><label>籍贯</label>
                                    <div class="formRight">
                                        <div class="oneTwo">
                                            <select name="sel" disabled="disabled"
                                                    onchange="chinaChange(this,document.getElementById('city1'))"
                                                    style="opacity: 0;">
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
                                            </select>
                                        </div>
                                        <div class="oneTwo">
                                            <select name="city" id="city1" disabled="disabled" style="opacity: 0;">
                                                <option value="请选择市区">请选择市区</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>

                                <div class="oneTwo"><label>国籍</label>
                                    <div class="formRight"><input type="text" value="${detailInfo.empNation}"
                                                                  readonly="readonly" name="change"></div>
                                </div>
                                <div class="clear"></div>
                            </div>

                            <div class="formRow">
                                <div class="oneTwo"><label>现居住地</label>
                                    <div class="formRight">
                                        <div class="oneTwo"><select name="sel"
                                                                    onchange="chinaChange(this,document.getElementById('city2'))"
                                                                    disabled="disabled" style="opacity: 0;">
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
                                        <div class="oneTwo">
                                            <select name="city" id="city2" disabled="disabled" style="opacity: 0;">
                                                <option value="请选择市区">请选择市区</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                <div class="oneTwo" style="display: flex; margin-right: 2px;"><input type="text"
                                                                                                     value="详细地址"
                                                                                                     style="width: 100%;"
                                                                                                     readonly="readonly"
                                                                                                     name="change"/>
                                </div>
                                <div class="clear"></div>
                            </div>

                            <div class="formRow">
                                <label>手机号码：</label>
                                <div class="formRight"><input type="text" value="${detailInfo.empPhone}" name="phone"
                                                              id="phone" readonly="readonly"></div>
                                <div class="clear"></div>
                            </div>

                            <div class="formSubmit"><input id="b1" type="button" value="修改" class="greenB"
                                                           onclick="edit()"><input id="b2" type="submit" value="完成"
                                                                                   class="redB" disabled="disabled">
                            </div>
                            <div class="clear"></div>
                        </fieldset>
                    </form>
                </div>
                <div id="tab2" class="tab_content np" style="display: none;">
                    <form id="validate" class="form" method="post" action="UpdatePassword.do">
                        <fieldset>
                            <div class="formRow">
                                <label>原密码：<span class="req">*</span></label>
                                <div class="formRight"><input type="password" class="validate[required]" name="req"
                                                              id="req"></div>
                                <div class="clear"></div>
                            </div>
                            <div class="formRow">
                                <label>新密码：<span class="req">*</span></label>
                                <div class="formRight"><input type="password" class="validate[required,minSize[6]]"
                                                              name="password1" id="password1"></div>
                                <div class="clear"></div>
                            </div>
                            <div class="formRow">
                                <label>确认密码：<span class="req">*</span></label>
                                <div class="formRight"><input type="password"
                                                              class="validate[required,equals[password1]]"
                                                              name="minValid" id="minValid"></div>
                                <div class="clear"></div>
                            </div>
                            <div class="formSubmit"><input type="submit" value="修改" class="redB"></div>
                            <div class="clear"></div>
                        </fieldset>
                    </form>
                </div>
                <div id="tab3" class="tab_content np" style="display: none;">
                    <form id="validateP" class="form" method="post" action="UpdateHeadPortrait.do">
                        <fieldset>
                            <div class="formRow">
                                <label>上传头像<span class="req">*</span></label>
                                <div class="formRight"><input type="file" class="validate[required]" name="req"
                                                              id="req"></div>
                                <div class="clear"></div>
                            </div>
                            <div class="formSubmit"><input type="button" value="修改" class="redB"></div>
                            <div class="clear"></div>
                        </fieldset>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <!-- Footer line -->
    <jsp:include page="foot.jsp"></jsp:include>
</div>

<div class="clear"></div>
<script type="text/javascript">
    var msg = "${PSW}";
    if (msg !== null && msg !== "") {
        alert(msg);
    }
</script>
</body>
</html>
