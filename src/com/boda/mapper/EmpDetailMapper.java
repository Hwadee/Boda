package com.boda.mapper;

import java.io.IOException;
import java.util.List;

import com.boda.pojo.EmpDetail;

public interface EmpDetailMapper {
	
	/**
	 * 根据员工详细信息id查询员工信息
	 * @param id
	 * @return 员工详细信息信息
	 * @throws IOException
	 */
	public EmpDetail findEmpDetailById(Integer empDetailId) throws IOException;
	
	/**
	 * 根据员工名字模糊查询员工信息
	 * @param empName
	 * @return 员工详细信息列表
	 * @throws IOException
	 */
	public List<EmpDetail> findEmpDetailByName(String empName) throws IOException;

	/**
	 * 根据员工详细信息id更新员工详细信息
	 * @param empDetailId
	 * @return
	 * @throws IOException
	 */
	public Integer updateEmpDetail(EmpDetail empDetail) throws IOException;
	

}
