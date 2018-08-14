package com.boda.mapper;

import java.io.IOException;
import java.util.List;

import com.boda.pojo.ReturnLoan;

public interface ReturnLoanMapper {
	
	/**
	 * 根据还款id查询还款信息
	 * @param returnId
	 * @return
	 * @throws IOException
	 */
	public ReturnLoan findReturnLoanById(Integer returnId) throws IOException;
	
	/**
	 * 根据贷款id查询其还款信息
	 * @param loanId
	 * @return
	 * @throws IOException
	 */
	public List<ReturnLoan> findReturnLoanByLoanId(Integer loanId) throws IOException;
	
	/**
	 * 添加还款信息
	 * @param returnLoan
	 * @return
	 * @throws IOException
	 */
	public Integer addReturnLoan(ReturnLoan returnLoan) throws IOException;

}
