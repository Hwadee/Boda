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
        // 贷后业务
        actionPower.put("/IntoOverTimeWork.do", 2);
        actionPower.put("/overTimeAccountWork.do", 2);
        actionPower.put("/returnLoanMessage.do", 2);
        actionPower.put("/overTimeMessageTable.do", 2);
        actionPower.put("/urgeForReturn.do", 2);
        actionPower.put("/overTimeAccountDistribute.do", 2);
        actionPower.put("/savaDistributeMessage.do", 2);

        // 系统设置
        actionPower.put("/IntoOperationLogs.do", 4);
        actionPower.put("/OperationLogs.do", 4);
        actionPower.put("/IntoDeptInfo.do", 4);
        actionPower.put("/DeptInfo.do", 4);
        actionPower.put("/QueryUpdateInfo.do", 4);
        actionPower.put("/UpdateDeptInfo.do", 4);
        actionPower.put("/AddDeptInfo.do", 4);
        actionPower.put("/DelDeptInfo.do", 4);
        actionPower.put("/IntoEmployeeManager.do", 4);
        actionPower.put("/IntoEmpInfo.do", 4);
        actionPower.put("/EmpInfo.do", 4);
        actionPower.put("/DelEmpInfo.do", 4);
        actionPower.put("/AddEmpInfo.do", 4);
        actionPower.put("/IntoPowerSetting.do", 4);
        actionPower.put("/EditPower.do", 4);
        actionPower.put("/PostOfDept.do", 4);

        // 财务管理
        actionPower.put("/returnOfToday.do", 3);
        actionPower.put("/returnAccountWork.do", 3);
        actionPower.put("/updateReturnMoney.do", 3);
        actionPower.put("/IntoLoanInfo.do", 3);
        actionPower.put("/LoanInfo.do", 3);
        actionPower.put("/IntoAddLoan.do", 3);
        actionPower.put("/AddLoanInfo.do", 3);

        // 贷前业务
        actionPower.put("/IntoCusInfo.do", 1);
        actionPower.put("/CusInfo.do", 1);
        actionPower.put("/AddCusInfo.do", 1);
        actionPower.put("/QueryUpdatecustomerInfo.do", 1);
        actionPower.put("/UpdateCusInfo.do", 1);
        actionPower.put("/DelCusInfo.do", 1);
        actionPower.put("/QueryLoanInfo.do", 1);
        actionPower.put("/IntoAddLoan.do", 1);
        actionPower.put("/AddLoanInfo.do", 1);
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
