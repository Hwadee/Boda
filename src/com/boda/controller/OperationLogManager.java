package com.boda.controller;

import com.boda.pojo.OperationLog;
import com.boda.service.OperationLogService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class OperationLogManager {

    @Resource
    OperationLogService ols;

    @RequestMapping("/OperationLog.do")
    public String operationLog(@RequestParam("date") String date, @RequestParam("empId") String empId, HttpServletRequest request, Model model) throws Exception {
        if (date == null) {
            date = "*";
        }
        if (empId == null) {
            empId = "*";
        }

        List<OperationLog> operationLogs = ols.getOperationLogs(date, empId);
        model.addAttribute("operationlogs", operationLogs);
        return "operationLogs";
    }
}
