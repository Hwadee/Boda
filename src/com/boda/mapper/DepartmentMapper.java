package com.boda.mapper;

import java.io.IOException;
import java.util.List;

import com.boda.pojo.Department;

public interface DepartmentMapper {
	/**
	 * ���ݲ���id��ѯ������Ϣ
	 * @param deptId
	 * @return ������ϸ��Ϣ
	 * @throws IOException
	 */
	public Department findDepartmentById(Integer deptId) throws IOException;
	
	/**
	 * ���ݲ������Ʋ�ѯģ����Ϣ
	 * @param deptName
	 * @return ������ϸ��Ϣ�б�
	 * @throws IOException
	 */
	public List<Department> findDepartmentByName(String deptName) throws IOException;
	
	
	/**
	 * ����һ��������Ϣ
	 * @param department
	 * @return
	 * @throws IOException
	 */
	public Integer addDepartment(Department department) throws IOException;
	
	/**
	 * ���ݲ���idɾ��������Ϣ
	 * @param deptId
	 * @return
	 * @throws IOException
	 */
	public Integer delDepartmentById(Integer deptId) throws IOException;
	
	/**
	 * ����һ�����ŵ���Ϣ
	 * @param department
	 * @return
	 * @throws IOException
	 */
	public Integer updateDepartment(Department department) throws IOException;

}
