package com.boda.controller;

import com.boda.pojo.OperationLog;
import com.boda.service.SystemSettingService;
import com.boda.util.Tool;
import com.boda.vo.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.Date;

@Controller
public class SystemSettingController {
    @Resource
    private SystemSettingService systemSettingService;

    @RequestMapping("/IntoOperationLogs.do")
    public String intoOperationLogs() {
        return "操作记录查询";
    }

    @RequestMapping("/OperationLogs.do")
    public String operationLogs(String startDate, String endDate, String empId, String currentPage, String pageSize, Model model) {

        final int defaultPageSize = 10;
        try {
//            DateConveter dateConveter = new DateConveter();
            Date startDate_ = Tool.formatStringToDate(startDate);
            Date endDate_ = Tool.formatStringToDate(endDate);
            Integer empId_ = (empId == null || "".equals(empId)) ? null : Integer.parseInt(empId);
            Integer currentPage_ = (currentPage == null || "".equals(currentPage) || "0".equals(currentPage)) ? 1 : Integer.parseInt(currentPage);
            Integer pageSize_ = (pageSize == null || "".equals(pageSize)) ? defaultPageSize : Integer.parseInt(pageSize);
            Page<OperationLog> operationLogPage = systemSettingService.getOperationLogs(currentPage_, pageSize_, startDate_, endDate_, empId_);
            model.addAttribute("operationLogPage", operationLogPage);
        } catch (Exception e) {
            System.out.println("操作记录查询异常");
        }
        return "操作记录查询";
    }
}


