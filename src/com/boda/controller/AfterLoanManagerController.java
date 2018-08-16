package com.boda.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.boda.pojo.Loan;
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
			int pageSize_ = (pageSize==null||"".equals(pageSize))?2:Integer.parseInt(pageSize);
			Page<Loan> page = afterLoanManagerService.overTimeAccountWork(currentPage_, pageSize_);
			
			model.addAttribute("page", page);
		}catch (Exception e) {
			// TODO: handle exception
		}
		return "overTimeAccountWork";
	}
	

}
