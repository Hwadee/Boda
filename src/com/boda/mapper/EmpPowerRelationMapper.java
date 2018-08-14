package com.boda.mapper;

import java.io.IOException;
import java.util.List;

import com.boda.pojo.EmpPowerRelation;

public interface EmpPowerRelationMapper {
	
	/**
	 * ����ְ��id��ѯ��ְ����ӵ�е�����Ȩ��
	 * @param postId
	 * @return
	 * @throws IOException
	 */
	public List<EmpPowerRelation> findPowerByPostId(Integer postId) throws IOException;
	
	/**
	 * ����Ȩ��id��ѯӵ������Ȩ�޵�����ְ��
	 * @param powerId
	 * @return
	 * @throws IOException
	 */
	public List<EmpPowerRelation> findPostByPowerId(Integer powerId) throws IOException;
	
	/**
	 * Ϊĳְ�����Ȩ��
	 * @param empPowerRelation
	 * @return
	 * @throws IOException
	 */
	public Integer addPostPowerRelation(EmpPowerRelation empPowerRelation) throws IOException;
	
	/**
	 * ɾ��ĳְ���ĳȨ��
	 * @param empPowerRelation
	 * @return
	 * @throws IOException
	 */
	public Integer delPostPowerRelation(EmpPowerRelation empPowerRelation) throws IOException;

}
