package com.boda.mapper;

import java.io.IOException;
import java.util.List;

import com.boda.pojo.Loan;

public interface LoanMapper {
	
	/**
	 * 根据贷款id查询贷款信息
	 * @param loanId
	 * @return
	 * @throws IOException
	 */
	public Loan findLoanById(Integer loanId) throws IOException; 
	
	/**
	 * 根据用户id查询用户所有贷款信息
	 * @param empId
	 * @return 贷款信息列表
	 * @throws IOException
	 */
	public List<Loan> findLoanByEmpId(Integer empId) throws IOException;
	
	/**
	 * 新增一条贷款信息
	 * @param loan
	 * @return
	 * @throws IOException
	 */
	public Integer addLoan(Loan loan) throws IOException;
	
	/**
	 * 根据贷款id更新贷款状态
	 * @param loan
	 * @return
	 * @throws IOException
	 */
	public Integer updateLoanState(Loan loan) throws IOException;

}
