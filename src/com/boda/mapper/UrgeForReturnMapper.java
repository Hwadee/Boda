package com.boda.mapper;

import java.io.IOException;
import java.util.List;

import com.boda.pojo.UrgeForReturn;

public interface UrgeForReturnMapper {
	
	/**
	 * 根据逾期id查询催促信息
	 * @param overTimeId
	 * @return
	 * @throws IOException
	 */
	public List<UrgeForReturn> findUrgeMessageByOverTimeId(Integer overTimeId) throws IOException;
	
	/**
	 * 根据员工id查询员工催促的信息
	 * @param empId
	 * @return
	 * @throws IOException
	 */
	public List<UrgeForReturn> findUrgeMessageByEmpId(Integer empId) throws IOException;
	
	/**
	 * 新增一条催促信息
	 * @param urgeForReturn
	 * @return
	 * @throws IOException
	 */
	public Integer addUrgeMessage(UrgeForReturn urgeForReturn) throws IOException;
	
	/**
	 * 根据员工id和逾期id更新查询信息
	 * @param urgeForReturn
	 * @return
	 * @throws IOException
	 */
	public Integer updateUrgeMessage(UrgeForReturn urgeForReturn) throws IOException;

}
