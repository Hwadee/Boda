package com.boda.mapper;

import java.io.IOException;
import java.util.List;

import com.boda.pojo.Department;

public interface DepartmentMapper {
	/**
	 * 根据部门id查询部门信息
	 * @param deptId
	 * @return 部门详细信息
	 * @throws IOException
	 */
	public Department findDepartmentById(Integer deptId) throws IOException;
	
	/**
	 * 根据部门名称查询模糊信息
	 * @param deptName
	 * @return 部门详细信息列表
	 * @throws IOException
	 */
	public List<Department> findDepartmentByName(String deptName) throws IOException;

    /**
	 * 新增一个部门信息
	 * @param department
	 * @return
	 * @throws IOException
	 */
	public Integer addDepartment(Department department) throws IOException;
	
	/**
	 * 根据部门id删除部门信息
	 * @param deptId
	 * @return
	 * @throws IOException
	 */
	public Integer delDepartmentById(Integer deptId) throws IOException;
	
	/**
	 * 更新一个部门的信息
	 * @param department
	 * @return
	 * @throws IOException
	 */
	public Integer updateDepartment(Department department) throws IOException;

}
