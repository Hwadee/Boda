package com.boda.mapper;

import java.io.IOException;
import java.util.Date;
import java.util.List;

import com.boda.pojo.OverTime;

public interface OverTimeMapper {
	
	/**
	 * ����������Ϣid��ѯ������Ϣ
	 * @param overTimeId
	 * @return
	 * @throws IOException
	 */
	public OverTime findOverTimeById(Integer overTimeId) throws IOException;
	
	/**
	 * ���ݴ���id��ѯ�ô����ж������ڼ�¼
	 * @param loanId
	 * @return
	 * @throws IOException
	 */
	public List<OverTime> findOverTimeByLoanId(Integer loanId) throws IOException;
	
	/**
	 * ��������ʱ���ѯ������Ϣ
	 * @param overTimeDays
	 * @return ����ʱ�䳬��ĳһ��������
	 * @throws IOException
	 */
	public List<OverTime> findOverMessageByShouldReturnDate(Date shouldReturnDate) throws IOException;
	
	/**
	 * �������ڽ���ѯ������Ϣ
	 * @param overTimeMoney
	 * @return ���ڽ���ĳһ����
	 * @throws IOException
	 */
	public List<OverTime> findOverMessageByOverMoney(Float overTimeMoney) throws IOException;

}
