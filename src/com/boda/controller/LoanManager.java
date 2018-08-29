package com.boda.controller;

import com.boda.pojo.Loan;
import com.boda.service.LoanService;
import com.boda.util.Tool;
import com.boda.vo.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

@Controller
public class LoanManager {

    @Resource
    LoanService ls;

    @RequestMapping("/IntoLoanInfo.do")
    public String intoLoanInfo() {
        return "放款名单";
    }

    @RequestMapping("/IntoAddLoan.do")
    public String intoAddLoan() {
        return "客户贷款信息录入";
    }

    @RequestMapping("/IntoLoanExamine.do")
    public String intoLoanExam() {
        return "客户贷款审批";
    }

    @RequestMapping("/LoanInfo.do")
    public String loanInfo(String loanMinDate, String loanMaxDate, Page<Loan> page, Model model) throws Exception {

        final int PAGE_SIZE = 10;
        System.out.println(page.getCurrentPage());
        if (page.getCurrentPage() == null || page.getCurrentPage() == 0) {
            page.setCurrentPage(1);
            page.setPageSize(PAGE_SIZE);
        }

        page = ls.getLoanInfo(loanMinDate, loanMaxDate, page);

        model.addAttribute("loanPage", page);
//
//        Page<Loan> loans = ls.getLoanInfo(loanMinDate, loanMaxDate, page);
//
//        if (!loans.isEmpty()) {
//            model.addAttribute("loaninfo", loans);
//
//        } else {
//            model.addAttribute("MSG", "无符合结果");
//        }

        return "放款名单";
    }

    @RequestMapping("/QueryLoanInfo.do")
    public String QueryLoanInfo(String loanState, Page<Loan> page, Model model) throws Exception {

        final int PAGE_SIZE = 10;
        System.out.println(page.getCurrentPage());
        if (page.getCurrentPage() == null || page.getCurrentPage() == 0) {
            page.setCurrentPage(1);
            page.setPageSize(PAGE_SIZE);
        }

        page = ls.getQueryLoanInfo(loanState, page);

        if (page.getObjList().isEmpty()) {
            model.addAttribute("searchMSG", "无符合结果");
        } else {
            model.addAttribute("loanPage", page);
        }
        return "客户贷款审批";
    }

    @RequestMapping("/UpdateLoanInfoDel.do")
    public String QueryLoanInfoDel(int loanId, Model model) throws Exception {

        if (ls.delLoanIdInfo(loanId)) {
            model.addAttribute("MSG", "删除成功");
        } else {
            model.addAttribute("MSG", "删除失败");
        }
        return "客户贷款审批";
    }

    @RequestMapping("/UpdateLoanInfoAgree.do")
    public String QueryLoanInfoAgree(String loanId, Model model) throws Exception {

        Loan loans = ls.getLoanIdInfo(loanId).get(0);
        loans.setLoanState("已发放");
        if (ls.updateLoanInfo(loans)) {
            model.addAttribute("MSG", "更新成功");
        } else {
            model.addAttribute("MSG", "更新失败");
        }
        return "客户贷款审批";
    }

    @RequestMapping("/AddLoanInfo.do")
    public String addLoanInfo(String customerId,
                              String empId,
                              String loanMoney,
                              String loanDate,
                              String loanState,
                              String returnStartDate,
                              String returnYears,
                              String numberOfStages,
                              String rateOfInterest,
                              Model model) throws Exception {

        //暂时性，应在前端判断输入
        if ("".equals(customerId)) {
            model.addAttribute("MSG", "新增失败，缺少客户Id");
            return "客户贷款信息录入";
        }

        Loan loan = new Loan();
        loan.setCustomerId(Integer.parseInt(customerId));
        loan.setEmpId(Integer.parseInt(empId));
        loan.setLoanMoney(Integer.parseInt(loanMoney));
        loan.setLoanDate(Tool.formatStringToDate(loanDate));
        loan.setLoanState(loanState);
        loan.setReturnStartDate(Tool.formatStringToDate(returnStartDate));
        loan.setReturnYears(Integer.parseInt(returnYears));
        loan.setNumberOfStages(Integer.parseInt(numberOfStages));
        loan.setRateOfInterest(Float.parseFloat(rateOfInterest));

        if (ls.addLoanInfo(loan)) {
            model.addAttribute("MSG", "新增成功");
        } else {
            model.addAttribute("MSG", "新增失败");
        }
        return "客户贷款信息录入";
    }

}
