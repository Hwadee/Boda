package com.boda.controller;

import com.boda.pojo.OperationLog;
import com.boda.service.OperationLogService;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.List;

@Controller
public class OperationLogManager {

    @Resource
    OperationLogService ols;

    @RequestMapping("/IntoOperationLogs.do")
    public String intoOperationLogs() {
        return "operationLogs";
    }

    @RequestMapping("/OperationLogs.do")
    public String operationLogs(String startDate, String endDate, String empId, Model model) throws Exception {

        List<OperationLog> operationLogs = ols.getOperationLogs(startDate, endDate, empId);
        if (!operationLogs.isEmpty()) {
            model.addAttribute("operationlogs", operationLogs);
        } else {
            model.addAttribute("MSG", "无符合结果");
        }
        return "operationLogs";
    }
}
