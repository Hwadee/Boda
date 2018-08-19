package com.boda.mapper;

import java.io.IOException;
import java.util.List;

import com.boda.pojo.Loan;
import org.apache.ibatis.annotations.Param;

public interface LoanMapper {

	/**
	 * 查询所有贷款信息
	 * @return
	 * @throws IOException
	 */
	public List<Loan> findLoan() throws IOException;

	/**
	 * 根据id（包括贷款id、员工id或客户id）查询贷款信息
	 * @param loanId
	 * @return
	 * @throws IOException
	 */
	public List<Loan> findLoanById(Integer loanId) throws IOException;

	/**
	 * 根据客户姓名查询贷款信息
	 * @return
	 * @throws IOException
	 */
	public List<Loan> findLoanByName(String name) throws IOException;

	/**
	 * 根据贷款日期段查询贷款信息
	 *
	 * @param minDate
	 * @param maxDate
	 * @return
	 * @throws IOException
	 */
	public List<Loan> findLoanByLoanDate(@Param("minDate") String minDate, @Param("maxDate") String maxDate) throws IOException;

	/**
	 * 根据还款日期段查询贷款信息
	 *
	 * @param minDate
	 * @param maxDate
	 * @return
	 * @throws IOException
	 */
	public List<Loan> findLoanByReturnDate(@Param("minDate") String minDate, @Param("maxDate") String maxDate) throws IOException;

	/**
	 * 根据贷款额度的上下限查询贷款信息
	 *
	 * @param minAmount
	 * @param maxAmount
	 * @return
	 * @throws IOException
	 */
	public List<Loan> findLoanByMoney(@Param("minAmount") float minAmount, @Param("maxAmount") float maxAmount) throws IOException;

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
