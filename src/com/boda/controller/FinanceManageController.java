package com.boda.controller;

import com.boda.pojo.Loan;
import com.boda.pojo.ReturnLoan;
import com.boda.service.FinanceManageService;
import com.boda.vo.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

@Controller
public class FinanceManageController {

    @Resource
    private FinanceManageService financeManageService;

    @RequestMapping("/returnOfToday.do")
    public String returnOfToday(HttpServletRequest request, Model model, String currentPage, String pageSize) {
        try {
            int currentPage_ = (currentPage == null || "".equals(currentPage) || "0".equals(currentPage)) ? 1 : Integer.parseInt(currentPage);
            int pageSize_ = (pageSize == null || "".equals(pageSize)) ? 3 : Integer.parseInt(pageSize);
            Page<ReturnLoan> todayReturnPage = financeManageService.returnOfToday(currentPage_, pageSize_);
            model.addAttribute("todayReturnPage", todayReturnPage);
        } catch (Exception e) {
            // TODO: handle exception
            System.out.println("还款列表获取出现异常");
        }
        return "还款名单";
    }

    @RequestMapping("/returnAccountWork.do")
    public String returnAccountWork(HttpServletRequest request, Model model, String currentPage,
                                    String pageSize, String loanId) {
        try {
            int currentPage_ = (currentPage == null || "".equals(currentPage) || "0".equals(currentPage)) ? 1 : Integer.parseInt(currentPage);
            int pageSize_ = (pageSize == null || "".equals(pageSize)) ? 3 : Integer.parseInt(pageSize);
            Integer loanId_ = (loanId == null || "".equals(loanId)) ? null : Integer.parseInt(loanId);
            Page<ReturnLoan> returnPage = financeManageService.returnAccountWork(currentPage_, pageSize_, loanId_);

            model.addAttribute("returnPage", returnPage);
        } catch (Exception e) {
            // TODO: handle exception
            System.out.println("还款工作出现异常");
        }
        return "还款功能";
    }

    @RequestMapping("/updateReturnMoney.do")
    public String updateReturnMoney(String returnId) {
        try {

            financeManageService.updateReturnMoney(returnId);

        } catch (Exception e) {
            // TODO: handle exception
            System.out.println("添加还款出现异常");
        }
        return "success";
    }
}
