package com.boda.mapper;

import java.io.IOException;
import java.util.Date;
import java.util.List;

import com.boda.pojo.EmpDetail;
import com.boda.pojo.OperationLog;

public interface OperationMapper {
	
	/**
	 * 根据操作记录id查询操作记录
	 * @param id
	 * @return 某条操作记录
	 * @throws IOException
	 */
	public OperationLog findoperationById(Integer operationId) throws IOException;
	
	/**
	 * 根据日期查询操作记录
	 * @param empName
	 * @return 某天操作记录
	 * @throws IOException
	 */
	public List<OperationLog> findOperationByDate(Date date) throws IOException;
	
	
	/**
	 * 根据员工员工id查询操作记录
	 * @param empDetailId
	 * @return
	 * @throws IOException
	 */
	public List<OperationLog> findOperationByEmpId(Integer empId) throws IOException;

}
