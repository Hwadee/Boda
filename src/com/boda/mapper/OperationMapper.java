package com.boda.mapper;

import java.io.IOException;
import java.util.Date;
import java.util.List;

import com.boda.pojo.EmpDetail;
import com.boda.pojo.OperationLog;
import org.apache.ibatis.annotations.Param;

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
	public List<OperationLog> findOperationByDate(String date) throws IOException;
	
	
	/**
	 * 根据员工员工id查询操作记录
	 * @param empDetailId
	 * @return
	 * @throws IOException
	 */
	public List<OperationLog> findOperationByEmpId(String empId) throws IOException;

	/**
	 * 根据日期及员工id查询操作记录
	 *
	 * @param date
	 * @param empId
	 * @return
	 * @throws IOException
	 */
	public List<OperationLog> findOperationLogs(@Param("date") String date, @Param("empId") String empId) throws IOException;

	/**
	 * 插入操作记录
	 *
	 * @param operationLog
	 * @return
	 * @throws IOException
	 */
	public Integer addOperationLog(OperationLog operationLog) throws IOException;
}
