package com.boda.controller;

import com.boda.pojo.Loan;
import com.boda.pojo.ReturnLoan;
import com.boda.service.AfterLoanManagerService;
import com.boda.vo.OverTimeDistribute;
import com.boda.vo.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class AfterLoanManagerController {

    @Resource
    private AfterLoanManagerService afterLoanManagerService;

    @RequestMapping("/index.do")
    public String index() {
        return "index";
    }

    @RequestMapping("/overTimeAccountWork.do")
    public String overTimeAccountWork(HttpServletRequest request, Model model, String currentPage,
                                      String pageSize, String loanId, String customerName, String customerIdentityId) {
        try {
            int currentPage_ = (currentPage == null || "".equals(currentPage) || "0".equals(currentPage)) ? 1 : Integer.parseInt(currentPage);
            int pageSize_ = (pageSize == null || "".equals(pageSize)) ? 3 : Integer.parseInt(pageSize);
            Integer loanId_ = (loanId == null || "".equals(loanId)) ? null : Integer.parseInt(loanId);
            Page<Loan> page = afterLoanManagerService.overTimeAccountWork(currentPage_, pageSize_, loanId_, customerName, customerIdentityId);

            model.addAttribute("page", page);
        } catch (Exception e) {
            // TODO: handle exception
            System.out.println("逾期账户工作出现异常");
        }
        return "逾期账户工作";
    }

    @RequestMapping("/returnLoanMessage.do")
    public String returnLoanMessage(HttpServletRequest request, String loanId, Model model, String MSG) {
        try {
            List<ReturnLoan> returnLoans = afterLoanManagerService.returnLoanMessage(loanId);
            model.addAttribute("returnLoans", returnLoans);
            model.addAttribute("MSG", MSG);
        } catch (Exception e) {
            // TODO: handle exception
            System.out.println("还款信息查询出现异常");
        }
        return "还款详细信息";
    }

    @RequestMapping("/overTimeMessageTable.do")
    public String overTimeMessageTable(HttpServletRequest request, Model model, String currentPage, String pageSize) {
        try {
            int currentPage_ = (currentPage == null || "".equals(currentPage) || "0".equals(currentPage)) ? 1 : Integer.parseInt(currentPage);
            int pageSize_ = (pageSize == null || "".equals(pageSize)) ? 3 : Integer.parseInt(pageSize);
            Page<ReturnLoan> returnLoanPage = afterLoanManagerService.overTimeMessageTable(currentPage_, pageSize_);
            model.addAttribute("returnLoanPage", returnLoanPage);
        } catch (Exception e) {
            // TODO: handle exception
            System.out.println("逾期信息报表出现异常");
        }
        return "逾期情况报表";
    }

    @RequestMapping("/urgeForReturn.do")
    public String urgeForReturn(String empId, String returnId, String loanId, Model model) {
        try {
            afterLoanManagerService.urgeForReturn(empId, returnId);
            model.addAttribute("MSG", "OK");
        } catch (Exception e) {
            // TODO: handle exception
            System.out.println("催促存在异常");
            model.addAttribute("MSG", "error");
        }
        return "redirect:returnLoanMessage.do?loanId=" + loanId;
    }

    @RequestMapping("/overTimeAccountDistribute.do")
    public String overTimeAccountDistribute(HttpServletRequest request, Model model, String customerId, String MSG) {
        try {
            OverTimeDistribute overTimeDistribute = afterLoanManagerService.overTimeAccountDistribute(Integer.parseInt(customerId));
            model.addAttribute("overTimeDistribute", overTimeDistribute);
            model.addAttribute("MSG", MSG);
        } catch (Exception e) {
            // TODO: handle exception
            System.out.println("逾期条件分配异常");
        }
        return "逾期账户分配条件";
    }

    @RequestMapping("/savaDistributeMessage.do")
    public String savaDistributeMessage(String customerId, String customerCredit, Model model) {
        try {
            afterLoanManagerService.savaDistributeMessage(customerId, customerCredit);
            model.addAttribute("MSG", "OK");
        } catch (Exception e) {
            // TODO: handle exception
            System.out.println("保存出错");
            model.addAttribute("MSG", "error");
        }
        //return "savaDistributeMessage";
        return "redirect:overTimeAccountDistribute.do?customerId=" + customerId;
    }

}
