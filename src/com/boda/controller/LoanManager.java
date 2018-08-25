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

}
