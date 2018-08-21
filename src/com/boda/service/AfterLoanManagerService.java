package com.boda.service;

import java.io.IOException;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.boda.mapper.CustomerMapper;
import com.boda.mapper.LoanMapper;
import com.boda.mapper.ReturnLoanMapper;
import com.boda.mapper.UrgeForReturnMapper;
import com.boda.pojo.CustomerMessage;
import com.boda.pojo.Loan;
import com.boda.pojo.ReturnLoan;
import com.boda.pojo.UrgeForReturn;
import com.boda.vo.OverTimeDistribute;
import com.boda.vo.Page;

@Service
public class AfterLoanManagerService {
	
	@Autowired
	private LoanMapper loanMapper;
	@Autowired
	private ReturnLoanMapper returnLoanMapper;
	@Autowired
	private UrgeForReturnMapper urgeForReturnMapper;
	@Autowired
	private CustomerMapper customerMapper;
	/**
	 * 逾期账户工作，分页查询
	 * @param currentPage
	 * @param pageSize
	 * @return
	 * @throws IOException
	 */
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
	/**
	 * 逾期账户还款情况
	 * @param loanId
	 * @return
	 * @throws IOException
	 */
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
	
	/**
	 * 逾期信息报表，分页查询
	 * @param currentPage
	 * @param pageSize
	 * @return
	 * @throws IOException
	 */
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
	/**
	 * 催促还款
	 * @param empId
	 * @param returnId
	 * @throws IOException
	 */
	public void urgeForReturn(String empId,String returnId) throws IOException
	{
		UrgeForReturn urgeForReturn = new UrgeForReturn();
		urgeForReturn.setReturnId(Integer.parseInt(returnId));
		urgeForReturn.setEmpId(Integer.parseInt(empId));
		Date date = new Date();
		urgeForReturn.setLastUrgeDate(date);
		urgeForReturn.setUrgeState("已催促");
		if(urgeForReturnMapper.findUrgeMessageIsExist(urgeForReturn.getReturnId())!=0){
			urgeForReturnMapper.updateUrgeMessage(urgeForReturn);
		}
		else{
			urgeForReturnMapper.addUrgeMessage(urgeForReturn);
		}
	}
	/**
	 * 根据用户id查询用于设置分配条件的用户信息
	 * @param customerId
	 * @return
	 * @throws IOException
	 */
	public OverTimeDistribute overTimeAccountDistribute(Integer customerId) throws IOException
	{
		OverTimeDistribute overTimeDistribute = new OverTimeDistribute();
		CustomerMessage customerMessage = customerMapper.findCustomerById(customerId);
		overTimeDistribute.setCustomerMessage(customerMessage);
		Integer loanNum = loanMapper.findLoanNumByCustomerId(customerId);
		overTimeDistribute.setLoanNum(loanNum);
		Integer loanMoney = loanMapper.findLoanMoneyByCustomerId(customerId);
		overTimeDistribute.setLoanMoney(loanMoney);
		Integer overTimeNum = returnLoanMapper.findOverTimeNumByCustomerId(customerId);
		overTimeDistribute.setOverTimeNum(overTimeNum);
		return overTimeDistribute;	
	}
	/**
	 * 保存更改后的信用信息
	 * @param customerId
	 * @param customerCredit
	 * @param model
	 * @throws IOException 
	 * @throws  
	 */
	public void savaDistributeMessage(String customerId,String customerCredit) throws IOException
	{
		CustomerMessage customerMessage = customerMapper.findCustomerById(Integer.parseInt(customerId));
		customerMessage.setCustomerCredit(Integer.parseInt(customerCredit));
		customerMapper.updateCustomerMessage(customerMessage);
	}
	
}
