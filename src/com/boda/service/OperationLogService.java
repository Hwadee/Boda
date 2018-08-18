package com.boda.service;

import com.boda.mapper.OperationMapper;
import com.boda.pojo.OperationLog;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class OperationLogService {

    @Resource
    private OperationMapper operationMapper;

    public boolean addOperationLog(OperationLog operationLog) throws Exception {

        return operationMapper.addOperationLog(operationLog) > 0;
    }

    public List<OperationLog> getOperationLogs(String date, String empId) throws Exception {

        List<OperationLog> operationLogs = null;


        if ("".equals(date) && "".equals(empId)) { //日期与员工号均为空，查找全部记录
            operationLogs = operationMapper.findOperation();
        } else if (!"".equals(date) && "".equals(empId)) { //员工号为空，根据日期查找记录
            operationLogs = operationMapper.findOperationByDate(date);
        } else if ("".equals(date) && !"".equals(empId)) { //日期为空，根据员工号查找记录
            operationLogs = operationMapper.findOperationByEmpId(empId);
        } else { //日期与员工号均不为空
            operationLogs = operationMapper.findOperationLogsBoth(date, empId);
        }
        System.out.println(date + "  " + empId);
        System.out.println(operationLogs);

        return operationLogs;
    }

}
