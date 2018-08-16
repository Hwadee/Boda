package com.boda.mapper;

import java.io.IOException;
import java.util.Date;
import java.util.List;

import com.boda.pojo.EmpDetail;
import com.boda.pojo.OperationLog;

public interface OperationMapper {
	
	/**
	 * ���ݲ�����¼id��ѯ������¼
	 * @param id
	 * @return ĳ��������¼
	 * @throws IOException
	 */
	public OperationLog findoperationById(Integer operationId) throws IOException;
	
	/**
	 * �������ڲ�ѯ������¼
	 * @param empName
	 * @return ĳ�������¼
	 * @throws IOException
	 */
	public List<OperationLog> findOperationByDate(Date date) throws IOException;
	
	
	/**
	 * ����Ա��Ա��id��ѯ������¼
	 * @param empDetailId
	 * @return
	 * @throws IOException
	 */
	public List<OperationLog> findOperationByEmpId(Integer empId) throws IOException;

}
