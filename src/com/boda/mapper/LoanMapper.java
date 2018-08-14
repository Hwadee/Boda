package com.boda.mapper;

import java.io.IOException;
import java.util.List;

import com.boda.pojo.Loan;

public interface LoanMapper {
	
	/**
	 * ���ݴ���id��ѯ������Ϣ
	 * @param loanId
	 * @return
	 * @throws IOException
	 */
	public Loan findLoanById(Integer loanId) throws IOException; 
	
	/**
	 * �����û�id��ѯ�û����д�����Ϣ
	 * @param empId
	 * @return ������Ϣ�б�
	 * @throws IOException
	 */
	public List<Loan> findLoanByEmpId(Integer empId) throws IOException;
	
	/**
	 * ����һ��������Ϣ
	 * @param loan
	 * @return
	 * @throws IOException
	 */
	public Integer addLoan(Loan loan) throws IOException;
	
	/**
	 * ���ݴ���id���´���״̬
	 * @param loan
	 * @return
	 * @throws IOException
	 */
	public Integer updateLoanState(Loan loan) throws IOException;

}
