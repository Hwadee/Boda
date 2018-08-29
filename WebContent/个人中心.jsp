<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %><%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 2018/8/11
  Time: 9:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>个人中心</title>
    <link href="${pageContext.request.contextPath}/css/main.css" rel="stylesheet" type="text/css"/>

    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.min.js"></script>

    <script type="text/javascript" src="${pageContext.request.contextPath}/js/plugins/spinner/ui.spinner.js"></script>
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/js/plugins/spinner/jquery.mousewheel.js"></script>

    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-ui.min.js"></script>

    <script type="text/javascript" src="${pageContext.request.contextPath}/js/plugins/charts/excanvas.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/plugins/charts/jquery.flot.js"></script>
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/js/plugins/charts/jquery.flot.orderBars.js"></script>
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/js/plugins/charts/jquery.flot.pie.js"></script>
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/js/plugins/charts/jquery.flot.resize.js"></script>
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/js/plugins/charts/jquery.sparkline.min.js"></script>

    <script type="text/javascript" src="${pageContext.request.contextPath}/js/plugins/forms/uniform.js"></script>
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/js/plugins/forms/jquery.cleditor.js"></script>
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/js/plugins/forms/jquery.validationEngine-en.js"></script>
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/js/plugins/forms/jquery.validationEngine.js"></script>
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/js/plugins/forms/jquery.tagsinput.min.js"></script>
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/js/plugins/forms/autogrowtextarea.js"></script>
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/js/plugins/forms/jquery.maskedinput.min.js"></script>
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/js/plugins/forms/jquery.dualListBox.js"></script>
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/js/plugins/forms/jquery.inputlimiter.min.js"></script>
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/js/plugins/forms/chosen.jquery.min.js"></script>

    <script type="text/javascript" src="${pageContext.request.contextPath}/js/plugins/wizard/jquery.form.js"></script>
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/js/plugins/wizard/jquery.validate.min.js"></script>
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/js/plugins/wizard/jquery.form.wizard.js"></script>

    <script type="text/javascript" src="${pageContext.request.contextPath}/js/plugins/uploader/plupload.js"></script>
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/js/plugins/uploader/plupload.html5.js"></script>
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/js/plugins/uploader/plupload.html4.js"></script>
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/js/plugins/uploader/jquery.plupload.queue.js"></script>

    <script type="text/javascript" src="${pageContext.request.contextPath}/js/plugins/tables/datatable.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/plugins/tables/tablesort.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/plugins/tables/resizable.min.js"></script>

    <script type="text/javascript" src="${pageContext.request.contextPath}/js/plugins/ui/jquery.tipsy.js"></script>
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/js/plugins/ui/jquery.collapsible.min.js"></script>
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/js/plugins/ui/jquery.prettyPhoto.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/plugins/ui/jquery.progress.js"></script>
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/js/plugins/ui/jquery.timeentry.min.js"></script>
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/js/plugins/ui/jquery.colorpicker.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/plugins/ui/jquery.jgrowl.js"></script>
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/js/plugins/ui/jquery.breadcrumbs.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/plugins/ui/jquery.sourcerer.js"></script>

    <script type="text/javascript" src="${pageContext.request.contextPath}/js/plugins/calendar.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/plugins/elfinder.min.js"></script>

    <script type="text/javascript" src="${pageContext.request.contextPath}/js/custom.js"></script>

    <script type="text/javascript" src="${pageContext.request.contextPath}/js/charts/chart.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/personalCenter.js"></script>
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
                <li id="li1"><a href="#tab1">基本信息</a></li>
                <li><a href="#tab2">账户密码</a></li>
                <li id="li3"><a href="#tab3">上传头像</a></li>
            </ul>
            <div class="tab_container">
                <div id="tab1" class="tab_content np" style="display: block;">
                    <form class="form" method="post" action="UpdateUserInfo.do" id="validate">
                        <fieldset>
                            <div style="height: 100%; overflow: hidden; border-bottom: 1px solid #E2E2E2;">
                                <%--<div class="oneTwo"></div>--%>
                                <div class="oneTwo" style="width: 80%;">
                                    <div class="formRow" style="height: 40px;">
                                        <div class="oneThree">
                                            <label>姓名</label>
                                            <div class="formRight"><input type="text" value="${detailInfo.empName}"
                                                                          class="validate[required]" readonly="readonly"
                                                                          name="name" id="name"/></div>
                                        </div>
                                        <div class="oneThree">
                                            <label>性别</label>
                                            <div class="formRight">
                                                <input type="text" value="${detailInfo.empSex}"
                                                       class="validate[required]" readonly="readonly" name="sex"
                                                       id="sex"/>
                                            </div>
                                        </div>
                                        <div class="oneThree">
                                            <label>生日</label>
                                            <div class="formRight">
                                                <input type="text" value="${detailInfo.printEmpBirthday()}"
                                                       class="validate[required,custom[date]]" readonly="readonly"
                                                       name="birthday" id="birthday"/>
                                            </div>
                                        </div>
                                        <div class="clear"></div>
                                    </div>

                                    <div class="formRow" style="height: 40px;">
                                        <div class="oneThree"><label>体重</label>
                                            <div class="formRight">
                                                <input type="text" value="${detailInfo.empWeight}"
                                                       class="validate[custom[integer]]" readonly="readonly"
                                                       name="weight" id="weight"/>
                                            </div>
                                        </div>
                                        <div class="oneThree"><label>身高</label>
                                            <div class="formRight">
                                                <input type="text" value="${detailInfo.empHeight}"
                                                       class="validate[custom[integer]]" readonly="readonly"
                                                       name="height" id="height"/>
                                            </div>
                                        </div>
                                        <div class="oneThree" style="display: flex"><label>教育度</label>
                                            <div class="formRight"><input type="text" value="${detailInfo.empEducation}"
                                                                          readonly="readonly" name="education"
                                                                          id="education"/></div>
                                        </div>
                                        <div class="clear"></div>
                                    </div>

                                    <div class="formRow">
                                        <div class="oneThree"><label>籍贯</label>
                                            <div class="formRight">
                                                <select name="sel" disabled="disabled" style="opacity: 0;">
                                                    <option value="北京市" id="北京市1">北京市</option>
                                                    <option value="天津市" id="天津市1">天津市</option>
                                                    <option value="上海市" id="上海市1">上海市</option>
                                                    <option value="重庆市" id="重庆市1">重庆市</option>
                                                    <option value="河北省" id="河北省1">河北省</option>
                                                    <option value="山西省" id="山西省1">山西省</option>
                                                    <option value="辽宁省" id="辽宁省1">辽宁省</option>
                                                    <option value="吉林省" id="吉林省1">吉林省</option>
                                                    <option value="黑龙江省" id="黑龙江省1">黑龙江省</option>
                                                    <option value="江苏省" id="江苏省1">江苏省</option>
                                                    <option value="浙江省" id="浙江省1">浙江省</option>
                                                    <option value="安徽省" id="安徽省1">安徽省</option>
                                                    <option value="福建省" id="福建省1">福建省</option>
                                                    <option value="江西省" id="江西省1">江西省</option>
                                                    <option value="山东省" id="山东省1">山东省</option>
                                                    <option value="河南省" id="河南省">河南省</option>
                                                    <option value="湖北省" id="湖北省1">湖北省</option>
                                                    <option value="湖南省" id="湖南省1">湖南省</option>
                                                    <option value="广东省" id="广东省1">广东省</option>
                                                    <option value="海南省" id="海南省1">海南省</option>
                                                    <option value="四川省" id="四川省1">四川省</option>
                                                    <option value="贵州省" id="贵州省1">贵州省</option>
                                                    <option value="云南省" id="云南省1">云南省</option>
                                                    <option value="陕西省" id="陕西省1">陕西省</option>
                                                    <option value="甘肃省" id="甘肃省1">甘肃省</option>
                                                    <option value="青海省" id="青海省1">青海省</option>
                                                    <option value="台湾省" id="台湾省1">台湾省</option>
                                                    <option value="广西壮族自治区" id="广西壮族自治区1">广西壮族自治区</option>
                                                    <option value="内蒙古自治区" id="内蒙古自治区1">内蒙古自治区</option>
                                                    <option value="西藏自治区" id="西藏自治区1">西藏自治区</option>
                                                    <option value="宁夏回族自治区" id="宁夏回族自治区1">宁夏回族自治区</option>
                                                    <option value="新疆维吾尔自治区" id="新疆维吾尔族自治区1">新疆维吾尔自治区</option>
                                                    <option value="香港特别行政区" id="香港特别行政区1">香港特别行政区</option>
                                                    <option value="澳门特别行政区" id="澳门特别行政区1">澳门特别行政区</option>
                                                </select>
                                            </div>
                                        </div>
                                        <input name="ht" id="ht" type="hidden" value="">
                                        <div class="oneThree" style="display: flex">
                                            <label>居住地</label>
                                            <div class="formRight">
                                                <input type="text" value="${detailInfo.empAddress}" name="adr" id="adr"
                                                       readonly="readonly"/>
                                            </div>
                                        </div>
                                        <div class="oneThree">
                                            <label>国籍</label>
                                            <div class="formRight">
                                                <input type="text" value="${detailInfo.empNation}" name="nation"
                                                       id="nation" readonly="readonly">
                                            </div>
                                        </div>
                                        <div class="clear"></div>
                                    </div>
                                </div>

                                <div class="oneTwo" style="width: 20%;">
                                    <c:if test="${detailInfo.empPhotoUrl!=null && detailInfo.empPhotoUrl!=''}">
                                        <img alt="头像URL:${detailInfo.empPhotoUrl}" src="${detailInfo.empPhotoUrl}"
                                             height="250px" width="200px">
                                    </c:if>
                                    <c:if test="${detailInfo.empPhotoUrl==null || detailInfo.empPhotoUrl==''}">
                                        <img src="${pageContext.request.contextPath}/images/avatar/default.jpg"
                                             height="250px" width="200px" alt="" onclick="changeHead()"/>
                                    </c:if>
                                    <%--<p>TEST</p>--%>
                                </div>

                            </div>
                        </fieldset>
                        <fieldset>


                            <div class="formRow">
                                <label>手机号码：</label>
                                <div class="formRight">
                                    <input type="text" value="${detailInfo.empPhone}" name="phone" id="phone"
                                           class="validate[custom[phone]]"
                                           readonly="readonly">
                                </div>
                                <div class="clear"></div>
                            </div>
                            <div class="formRow">
                                <label>邮箱：</label>
                                <div class="formRight">
                                    <input type="text" value="" name="email" id="email"
                                           class="validate[custom[email]]" readonly="readonly">
                                </div>
                                <div class="clear"></div>
                            </div>

                            <div class="formSubmit"><input id="b1" type="button" value="修改" class="greenB"
                                                           onclick="edit()"><input id="b2" type="submit" value="完成"
                                                                                   class="redB" disabled="disabled"
                                                                                   onclick="getPlace()">
                            </div>
                            <div class="clear"></div>
                        </fieldset>
                    </form>
                </div>
                <div id="tab2" class="tab_content np" style="display: none;">
                    <form id="setPsw" class="form" method="post" action="UpdatePassword.do">
                        <fieldset>
                            <div class="formRow">
                                <label>原密码：<span class="req">*</span></label>
                                <div class="formRight">
                                    <input type="password" class="validate[required]" name="req" id="req">
                                </div>
                                <div class="clear"></div>
                            </div>
                            <div class="formRow">
                                <label>新密码：<span class="req">*</span></label>
                                <div class="formRight">
                                    <input type="password" class="validate[required,minSize[6]]" name="password1"
                                           id="password1">
                                </div>
                                <div class="clear"></div>
                            </div>
                            <div class="formRow">
                                <label>确认密码：<span class="req">*</span></label>
                                <div class="formRight">
                                    <input type="password" class="validate[required,equals[password1]]" name="minValid"
                                           id="minValid">
                                </div>
                                <div class="clear"></div>
                            </div>
                            <div class="formSubmit"><input type="submit" value="修改" class="redB"></div>
                            <div class="clear"></div>
                        </fieldset>
                    </form>
                    <script type="text/javascript">
                        $('#setPsw').validationEngine();
                    </script>
                </div>
                <div id="tab3" class="tab_content np" style="display: none;">
                    <form id="validateP" class="form" method="post" enctype="multipart/form-data"
                          action="UpdateHeadPortrait.do">
                        <fieldset>
                            <div class="formRow">
                                <label>上传头像<span class="req">*</span></label>
                                <div class="formRight">
                                    <input type="file" accept="image/*" name="req" id="req">
                                </div>
                                <div class="clear"></div>
                            </div>
                            <div class="formSubmit"><input type="submit" value="修改" class="redB"></div>
                            <div class="clear"></div>
                        </fieldset>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <!-- Footer line -->
    <jsp:include page="foot.jsp"/>
</div>

<div class="clear"></div>
<script type="text/javascript">
    var homeTown = "${detailInfo.empHometown}";
    document.getElementById(homeTown + "1").selected = true;
    var address = "${detailInfo.empAddress}";
    document.getElementById(address + "2").selected = true;
</script>
<script type="text/javascript">
    var msg1 = "${PSW}";

    if (msg1 !== null && msg1 !== "") {
        alert(msg1);
    }
</script>
<script type="text/javascript">
    var msg = "${avatarMSG}";
    if (msg !== null && msg !== "") {
        alert(msg);
    }
</script>
</body>
</html>
