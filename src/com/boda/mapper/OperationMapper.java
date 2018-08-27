package com.boda.mapper;

import com.boda.pojo.OperationLog;
import org.apache.ibatis.annotations.Param;

import java.io.IOException;
import java.util.Date;
import java.util.List;

public interface OperationMapper {

    /**
	 * 根据操作记录id查询操作记录
     * @param operationId
     * @return 某条操作记录
	 * @throws IOException
	 */
    public OperationLog findoperationById(Integer operationId) throws IOException;

    /**
	 * 根据日期查询操作记录
     * @param date
     * @return 某天操作记录
	 * @throws IOException
	 */
    public List<OperationLog> findOperationByDate(Date date) throws IOException;


    /**
	 * 根据员工员工id查询操作记录
     * @param empId
     * @return
	 * @throws IOException
	 */
    public List<OperationLog> findOperationByEmpId(Integer empId) throws IOException;

	/**
     * 根据传入参数查询操作记录
     * @param startDate
     * @param endDate
     * @param empId
	 * @return
	 * @throws IOException
	 */
    public List<OperationLog> findOperationLog(@Param("startDate") Date startDate, @Param("endDate") Date endDate,
                                               @Param("startRow") Integer startRow, @Param("pageSize") Integer pageSize,
                                               @Param("empId") Integer empId) throws IOException;

    /**
     * 查询操作记录条数
     *
     * @param startDate
     * @param endDate
     * @param empId
     * @return
     * @throws IOException
     */
    public Integer findOperationLogNum(@Param("startDate") Date startDate, @Param("endDate") Date endDate,
                                       @Param("empId") Integer empId) throws IOException;

    /**
     * 添加一条操作记录
     * @param operationLog
	 * @return
	 * @throws IOException
	 */
	public Integer addOperationLog(OperationLog operationLog) throws IOException;

}
