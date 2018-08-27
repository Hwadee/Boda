package com.boda.mapper;

import com.boda.pojo.OverTime;

import java.io.IOException;
import java.util.Date;
import java.util.List;

public interface OverTimeMapper {
	
	/**
	 * 根据逾期信息id查询逾期信息
	 * @param overTimeId
	 * @return
	 * @throws IOException
	 */
	public OverTime findOverTimeById(Integer overTimeId) throws IOException;
	
	/**
	 * 根据贷款id查询该贷款有多少逾期记录
	 * @param loanId
	 * @return
	 * @throws IOException
	 */
	public List<OverTime> findOverTimeByLoanId(Integer loanId) throws IOException;
	
	/**
	 * 根据逾期时间查询逾期信息
     * @param shouldReturnDate
     * @return 逾期时间超过某一天数限制
	 * @throws IOException
	 */
	public List<OverTime> findOverMessageByShouldReturnDate(Date shouldReturnDate) throws IOException;
	
	/**
	 * 根据逾期金额查询逾期信息
	 * @param overTimeMoney
	 * @return 逾期金额超过某一限制
	 * @throws IOException
	 */
	public List<OverTime> findOverMessageByOverMoney(Float overTimeMoney) throws IOException;

}
