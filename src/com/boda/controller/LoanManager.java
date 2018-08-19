package com.boda.controller;

import com.boda.pojo.Loan;
import com.boda.service.LoanService;
import com.boda.util.Tool;
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
        return "loanInfo";
    }

    @RequestMapping("/LoanInfo.do")
    public String loanInfo(String id,
                           String name,
                           String loanMinDate, String loanMaxDate,
                           String returnMinDate, String returnMaxDate,
                           String minAmount, String maxAmount,
                           Model model) throws Exception {
        //若未指定最晚借贷日期，则设置为当前日期
        if ("".equals(loanMaxDate)) {
            loanMaxDate = Tool.formatDateToString(new Date());
        }
        //若未指定最早还贷日期，则设置为Date起始日期
        if ("".equals(returnMinDate)) {
            returnMinDate = Tool.formatDateToString(new Date());
        }

        HashMap<String, String> map = new HashMap<>();

        map.put("id", id);
        map.put("name", name);
        map.put("loanMinDate", loanMinDate);
        map.put("loanMaxDate", loanMaxDate);
        map.put("returnMinDate", returnMinDate);
        map.put("returnMaxDate", returnMaxDate);
        map.put("minAmount", minAmount);
        map.put("maxAmount", maxAmount);

        List<Loan> loans = ls.getLoanInfo(map);

        if (!loans.isEmpty()) {
            model.addAttribute("loaninfo", loans);

        } else {
            model.addAttribute("MSG", "无符合结果");
        }

        return "loanInfo";
    }

}
