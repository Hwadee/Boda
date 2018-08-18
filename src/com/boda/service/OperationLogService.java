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
        return operationMapper.findOperationLogs(date, empId);
    }

//    public List<OperationLog> getOperationLogsByEmpId(String empId) throws Exception {
//        return operationMapper.findOperationByEmpId(empId);
//    }
}
