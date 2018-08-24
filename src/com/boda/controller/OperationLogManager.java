package com.boda.controller;

import com.boda.pojo.EmpDetail;
import com.boda.pojo.OperationLog;
import com.boda.service.OperationLogService;

import com.boda.service.UserDetailService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.List;

@Controller
public class OperationLogManager {

    @Resource
    OperationLogService ols;
    UserDetailService uds;

    @RequestMapping("/IntoOperationLogs.do")
    public String intoOperationLogs() {
        return "操作记录查询";
    }

    @RequestMapping("/OperationLogs.do")
    public String operationLogs(String startDate, String endDate, String empInfo, Model model) throws Exception {

        System.out.println(empInfo + " " + startDate + " " + endDate);

        if (startDate == null) {
            startDate = "";
        }
        if (endDate == null) {
            endDate = "";
        }
        if (empInfo == null) {
            empInfo = "";
        }

        List<OperationLog> operationLogs = ols.getOperationLogs(startDate, endDate, empInfo);
        if (!operationLogs.isEmpty()) {
            model.addAttribute("operationlogs", operationLogs);
        } else {
            model.addAttribute("searchMSG", "无符合结果");
        }
        return "操作记录查询";
    }
}
