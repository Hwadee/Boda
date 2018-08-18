package com.boda.controller;

import com.boda.pojo.OperationLog;
import com.boda.service.OperationLogService;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

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
    public String operationLogs(@RequestParam("date") String date, @RequestParam("empId") String empId, Model model) throws Exception {

        List<OperationLog> operationLogs = ols.getOperationLogs(date, empId);
        model.addAttribute("operationlogs", operationLogs);
        return "operationLogs";
    }
}
