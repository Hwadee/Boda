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
	public List<Loan> findLoanByLoanDate(
			@Param("minDate") String minDate,
			@Param("maxDate") String maxDate,
			@Param("startRow") int startRow,
			@Param("length") int length) throws IOException;

	public int findLoanCount() throws IOException;

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

    /**
     * 根据贷款id查询客户信息及还款信息
     *
     * @param loanId
     * @return
     * @throws IOException
     */
    public Loan findCustomerMessageAndReturnMessage(Integer loanId) throws IOException;

    /**
     * 查询所有存在逾期的账户详细信息
     *
     * @return
     * @throws IOException
     */
    public List<Loan> findAllOverTimeMessage(@Param("startRow") int startRow, @Param("pageSize") int pageSize,
                                             @Param("loanId") Integer loanId, @Param("customerName") String customerName,
                                             @Param("customerIdentityId") String customerIdentityId) throws IOException;

    /**
     * 查询逾期信息总条数
     *
     * @return
     * @throws IOException
     */
    public Integer findAllOverTimeMessageNum(@Param("loanId") Integer loanId, @Param("customerName") String customerName,
                                             @Param("customerIdentityId") String customerIdentityId) throws IOException;

    /**
     * 根据客户id查询客户贷款总数
     *
     * @param customerId
     * @return
     * @throws IOException
     */
    public Integer findLoanNumByCustomerId(Integer customerId) throws IOException;

    /**
     * 查询用户贷款总金额
     *
     * @param customerId
     * @return
     * @throws IOException
     */
    public Integer findLoanMoneyByCustomerId(Integer customerId) throws IOException;

    /**
     * @return
     * @throws IOException
     * @Param loanState
     * @Param length
     * @Param startRow
     * 根据loanState
     */
    public List<Loan> findLoanByLoanState(@Param("loanState") String loanState,
                                          @Param("startRow") int startRow,
                                          @Param("length") int length) throws IOException;

    /**
     * 查询未审批数量
     *
     * @param loanState
     * @return
     * @throws IOException
     */
    public Integer findLoanByLoanCount(@Param("loanState") String loanState) throws IOException;

    /**
     * 根据用户id删除用户信息
     *
     * @param loanId
     * @return
     * @throws IOException
     */
    public Integer delLoanByLoanId(Integer loanId) throws IOException;

    /**
     * 根据部门id查询信息
     *
     * @param loanId
     * @return 详细信息
     * @throws IOException
     */
    public Loan findLoanByLoanId(Integer loanId) throws IOException;

    /**
     * 更新用户详细信息
     *
     * @param loan
     * @return
     * @throws IOException
     */
    public Integer updateLoan(Loan loan) throws IOException;
}
