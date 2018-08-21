package com.boda.mapper;

import java.io.IOException;
import java.util.List;

import org.apache.ibatis.annotations.Param;

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
	public List<Loan> findLoanByCustomerId(Integer customerId) throws IOException;
	
	/**
	 * 根据客户id查询客户贷款总数
	 * @param customerId
	 * @return
	 * @throws IOException
	 */
	public Integer findLoanNumByCustomerId(Integer customerId) throws IOException;
	
	/**
	 * 查询用户贷款总金额
	 * @param customerId
	 * @return
	 * @throws IOException
	 */
	public Integer findLoanMoneyByCustomerId(Integer customerId) throws IOException;
	
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
	
	/**
	 * 根据贷款id查询客户信息及还款信息
	 * @param loan
	 * @return
	 * @throws IOException
	 */
	public Loan findCustomerMessageAndReturnMessage(Integer loanId) throws IOException;
	
	/**
	 * 查询所有存在逾期的账户详细信息
	 * @return
	 * @throws IOException
	 */
	public List<Loan> findAllOverTimeMessage(@Param("startRow")int startRow,@Param("pageSize")int pageSize) throws IOException;
	
	/**
	 * 查询逾期信息总条数
	 * @return
	 * @throws IOException
	 */
	public Integer findAllOverTimeMessageNum() throws IOException;

}
