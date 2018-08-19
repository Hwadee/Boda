package com.boda.service;

import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.boda.mapper.LoanMapper;
import com.boda.mapper.ReturnLoanMapper;
import com.boda.pojo.Loan;
import com.boda.pojo.ReturnLoan;
import com.boda.vo.Page;

@Service
public class AfterLoanManagerService {
	
	@Autowired
	private LoanMapper loanMapper;
	@Autowired
	private ReturnLoanMapper returnLoanMapper;
	
	public Page<Loan> overTimeAccountWork(int currentPage,int pageSize) throws IOException
	{
		Page<Loan> page = new Page<>();
		page.setCurrentPage(currentPage);
		page.setPageSize(pageSize);
		List<Loan> loan = loanMapper.findAllOverTimeMessage(page.getStartRow(),pageSize);
		page.setObjList(loan);
		int allRowNum = loanMapper.findAllOverTimeMessageNum();
		if(allRowNum%pageSize==0){
			page.setAllPageNum(allRowNum/pageSize);
		}
		else {
			page.setAllPageNum(allRowNum/pageSize+1);
		}
		
		return page;
	}
	//逾期账户还款情况
	public List<ReturnLoan> returnLoanMessage(String loanId) throws IOException
	{
		List<ReturnLoan> returnLoans = returnLoanMapper.findReturnLoanByLoanId(Integer.parseInt(loanId));
		
		return returnLoans;
	}
	public Loan detailLoanMessage(String loanId) throws IOException
	{
		Loan loan = loanMapper.findCustomerMessageAndReturnMessage(Integer.parseInt(loanId));
		return loan;
	}
	
	//逾期信息报表
	public Page<ReturnLoan> overTimeMessageTable(int currentPage,int pageSize) throws IOException
	{
		
		Page<ReturnLoan> returnLoanPage = new Page<>();
		returnLoanPage.setCurrentPage(currentPage);
		returnLoanPage.setPageSize(pageSize);
		int allRowNum = returnLoanMapper.findAllReturnAndUrgeMessageCount();
		if(allRowNum%pageSize==0){
			returnLoanPage.setAllPageNum(allRowNum/pageSize);
		}
		else {
			returnLoanPage.setAllPageNum(allRowNum/pageSize+1);
		}
		
		List<ReturnLoan> returnLoans = returnLoanMapper.findAllReturnAndUrgeMessage(returnLoanPage.getStartRow(),pageSize);
		returnLoanPage.setObjList(returnLoans);
		
		
		return returnLoanPage;
		
	}

}
