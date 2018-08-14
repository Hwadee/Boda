package com.boda.mapper;

import java.io.IOException;
import java.util.List;

import com.boda.pojo.ReturnLoan;

public interface ReturnLoanMapper {
	
	/**
	 * ���ݻ���id��ѯ������Ϣ
	 * @param returnId
	 * @return
	 * @throws IOException
	 */
	public ReturnLoan findReturnLoanById(Integer returnId) throws IOException;
	
	/**
	 * ���ݴ���id��ѯ�仹����Ϣ
	 * @param loanId
	 * @return
	 * @throws IOException
	 */
	public List<ReturnLoan> findReturnLoanByLoanId(Integer loanId) throws IOException;
	
	/**
	 * ��ӻ�����Ϣ
	 * @param returnLoan
	 * @return
	 * @throws IOException
	 */
	public Integer addReturnLoan(ReturnLoan returnLoan) throws IOException;

}
