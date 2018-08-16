package com.boda.service;

import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.boda.mapper.LoanMapper;
import com.boda.pojo.Loan;
import com.boda.vo.Page;

@Service
public class AfterLoanManagerService {
	
	@Autowired
	private LoanMapper loanMapper;
	
	public Page<Loan> overTimeAccountWork(int currentPage,int pageSize) throws IOException
	{
		Page<Loan> page = new Page<>();
		page.setCurrentPage(currentPage);
		page.setPageSize(pageSize);
		List<Loan> loan = loanMapper.findAllOverTimeMessage();
		page.setObjList(loan);
		int allPageNum = loanMapper.findAllOverTimeMessageNum();
		page.setAllPageNum(allPageNum);
		return page;
	}
	

}
