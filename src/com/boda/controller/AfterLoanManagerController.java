package com.boda.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.boda.pojo.Loan;
import com.boda.pojo.ReturnLoan;
import com.boda.service.AfterLoanManagerService;
import com.boda.vo.Page;

@Controller
public class AfterLoanManagerController {
	
	@Resource
	private AfterLoanManagerService afterLoanManagerService;
	
	@RequestMapping("/overTimeAccountWork.do")
	public String overTimeAccountWork(HttpServletRequest request,Model model,String currentPage,String pageSize)
	{
		try{
			int currentPage_ = (currentPage==null||"".equals(currentPage)||"0".equals(currentPage))?1:Integer.parseInt(currentPage);
			int pageSize_ = (pageSize==null||"".equals(pageSize))?3:Integer.parseInt(pageSize);
			Page<Loan> page = afterLoanManagerService.overTimeAccountWork(currentPage_, pageSize_);
			
			model.addAttribute("page", page);
		}catch (Exception e) {
			// TODO: handle exception
			System.out.println("逾期账户工作出现异常");
		}
		return "overTimeAccountWork";
	}
	
	@RequestMapping("/returnLoanMessage.do")
	public String returnLoanMessage(HttpServletRequest request,String loanId,Model model)
	{
		try{
			List<ReturnLoan> returnLoans = afterLoanManagerService.returnLoanMessage(loanId);
			model.addAttribute("returnLoans", returnLoans);
		}catch (Exception e) {
			// TODO: handle exception
			System.out.println("还款信息查询出现异常");
		}
		return "returnLoanMessage";
	}
	
	@RequestMapping("/overTimeMessageTable.do")
	public String overTimeMessageTable(HttpServletRequest request,Model model,String currentPage,String pageSize)
	{
		try{
			int currentPage_ = (currentPage==null||"".equals(currentPage)||"0".equals(currentPage))?1:Integer.parseInt(currentPage);
			int pageSize_ = (pageSize==null||"".equals(pageSize))?3:Integer.parseInt(pageSize);
			Page<ReturnLoan> returnLoanPage = afterLoanManagerService.overTimeMessageTable(currentPage_, pageSize_);
			
			model.addAttribute("returnLoanPage", returnLoanPage);
		}catch (Exception e) {
			
			// TODO: handle exception
			System.out.println("逾期信息报表出现异常");
		}
		return "overTimeMessageTable";
	}
	

}
