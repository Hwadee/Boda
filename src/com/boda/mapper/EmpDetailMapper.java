package com.boda.mapper;

import java.io.IOException;
import java.util.List;

import com.boda.pojo.EmpDetail;

public interface EmpDetailMapper {
	
	/**
	 * ����Ա����ϸ��Ϣid��ѯԱ����Ϣ
	 * @param id
	 * @return Ա����ϸ��Ϣ��Ϣ
	 * @throws IOException
	 */
	public EmpDetail findEmpDetailById(Integer empDetailId) throws IOException;
	
	/**
	 * ����Ա������ģ����ѯԱ����Ϣ
	 * @param empName
	 * @return Ա����ϸ��Ϣ�б�
	 * @throws IOException
	 */
	public List<EmpDetail> findEmpDetailByName(String empName) throws IOException;
	
	
	/**
	 * ����Ա����ϸ��Ϣid����Ա����ϸ��Ϣ
	 * @param empDetailId
	 * @return
	 * @throws IOException
	 */
	public Integer updateEmpDetail(EmpDetail empDetail) throws IOException;
	

}
