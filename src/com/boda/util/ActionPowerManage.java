package com.boda.util;

import com.boda.pojo.PostPowerRelation;

import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ActionPowerManage {
    private static final Map<String, Integer> actionPower = new HashMap<>();

    static {
        actionPower.put("/overTimeAccountWork.do", 1);
        actionPower.put("/returnLoanMessage.do", 1);
        actionPower.put("/overTimeMessageTable.do", 1);
        actionPower.put("/urgeForReturn.do", 1);
        actionPower.put("/overTimeAccountDistribute.do", 1);
        actionPower.put("/savaDistributeMessage.do", 1);

        actionPower.put("/IntoOperationLogs.do", 1);
        actionPower.put("/OperationLogs.do", 1);
        actionPower.put("/IntoDeptInfo.do", 1);
        actionPower.put("/DeptInfo.do", 1);
        actionPower.put("/QueryUpdateInfo.do", 1);
        actionPower.put("/UpdateDeptInfo.do", 1);
        actionPower.put("/AddDeptInfo.do", 1);
        actionPower.put("/DelDeptInfo.do", 1);

        actionPower.put("/UserDetail.do", 1);
        actionPower.put("/UpdateUserInfo.do", 1);
        actionPower.put("/UpdatePassword.do", 1);
        actionPower.put("UpdateHeadPortrait.do", 1);
        actionPower.put("/DelDeptInfo.do", 1);

        actionPower.put("/returnOfToday.do", 1);
        actionPower.put("/returnAccountWork.do", 1);
        actionPower.put("/updateReturnMoney.do", 1);
        actionPower.put("/DelDeptInfo.do", 1);

        actionPower.put("/IntoEmployeeManager.do", 1);
        actionPower.put("/IntoEmpInfo.do", 1);
        actionPower.put("/EmpInfo.do", 1);
        actionPower.put("/DelEmpInfo.do", 1);
        actionPower.put("/AddEmpInfo.do", 1);

        actionPower.put("/IntoLoanInfo.do", 1);
        actionPower.put("/LoanInfo.do", 1);
        actionPower.put("/IntoAddLoan.do", 1);
        actionPower.put("/AddLoanInfo.do", 1);

        actionPower.put("/IntoPowerSetting.do", 1);
        actionPower.put("/EditPower.do", 1);
        actionPower.put("/PostOfDept.do", 1);

        actionPower.put("/IntoCusInfo.do", 1);
        actionPower.put("/CusInfo.do", 1);
        actionPower.put("/AddCusInfo.do", 1);
        actionPower.put("/QueryUpdatecustomerInfo.do", 1);
        actionPower.put("/UpdateCusInfo.do", 1);
        actionPower.put("/DelCusInfo.do", 1);

        actionPower.put("/QueryLoanInfo.do", 1);
        actionPower.put("/UpdateLoanInfoDel.do", 1);
        actionPower.put("/UpdateLoanInfoAgree.do", 1);
    }

    public static boolean hasPower(HttpServletRequest request) throws IOException {
        String uri = request.getRequestURI();
        System.out.println(uri);
        List<PostPowerRelation> powerList = (List<PostPowerRelation>) request.getSession().getAttribute("powerList");
        for (PostPowerRelation postPowerRelation : powerList) {
            if (postPowerRelation.getPowerId().equals(actionPower.get(uri))) {
                return true;
            }
        }
        System.out.println("请求被拦截");
        return false;
    }

}
