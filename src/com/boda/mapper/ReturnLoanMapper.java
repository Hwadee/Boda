package com.boda.mapper;

import java.io.IOException;
import java.util.List;

import com.boda.pojo.Loan;
import org.apache.ibatis.annotations.Param;

import com.boda.pojo.ReturnLoan;
import com.sun.org.apache.xml.internal.resolver.helpers.PublicId;

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
     * 根据客户id查询逾期总次数
     *
     * @param customerId
     * @return
     * @throws IOException
     */
    public Integer findOverTimeNumByCustomerId(Integer customerId) throws IOException;

    /**
     * 添加还款信息
	 * @param returnLoan
	 * @return
     * @throws IOException
     */

    public Integer updateReturnLoan(ReturnLoan returnLoan) throws IOException;

    public Integer findReturnLoanCount(Integer loanId) throws IOException;

    /**
     * 查询所有逾期信息及催促情况
     *
     * @return
     * @throws IOException
     */
    public List<ReturnLoan> findAllReturnAndUrgeMessage(@Param("startRow") int startRow, @Param("pageSize") int pageSize) throws IOException;

    /**
     * 查询所有逾期信息总条数
     *
     * @return
     * @throws IOException
     */
    public Integer findAllReturnAndUrgeMessageCount() throws IOException;

    /**
     * 查询今日还款信息
     *
     * @return
     * @throws IOException
     */
    public List<ReturnLoan> findTodayReturn(@Param("startRow") int startRow, @Param("pageSize") int pageSize) throws IOException;

    /**
     * 查询今日还款信息总条数
     *
     * @return
     * @throws IOException
     */
    public Integer findTodayReturnCount() throws IOException;


}
