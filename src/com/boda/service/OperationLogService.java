package com.boda.service;

import com.boda.mapper.OperationMapper;
import com.boda.pojo.OperationLog;
import com.boda.util.Tool;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.Date;
import java.util.List;

@Service
public class OperationLogService {

    @Resource
    private OperationMapper operationMapper;

    public boolean addOperationLog(OperationLog operationLog) throws Exception {

        return operationMapper.addOperationLog(operationLog) > 0;
    }

    public List<OperationLog> getOperationLogs(String startDate, String endDate, String empId) throws Exception {

        List<OperationLog> operationLogs = null;

        if ("".equals(startDate) && "".equals(endDate) && "".equals(empId)) { //日期与员工号均为空，查找全部记录
            operationLogs = operationMapper.findOperation();
        } else if ((!"".equals(startDate) || !"".equals(endDate)) && "".equals(empId)) { //员工号为空，日期至少一个不为空，根据日期查找记录
            //将未设置的起始日期或结束日期设置为默认值
            if ("".equals(startDate)) {
                startDate = Tool.formatDateToString(new Date(1970));
            }
            if ("".equals(endDate)) {
                endDate = Tool.formatDateToString(new Date());
            }
            operationLogs = operationMapper.findOperationByDate(startDate, endDate);
        } else if ("".equals(startDate) && "".equals(endDate) && !"".equals(empId)) { //日期为空，根据员工号查找记录
            operationLogs = operationMapper.findOperationByEmpId(empId);
        } else { //日期与员工号均不为空
            operationLogs = operationMapper.findOperationLogsBoth(startDate, endDate, empId);
        }
//        System.out.println(date + "  " + empId);
//        System.out.println(operationLogs);

        operationLogs.remove(null);
        return operationLogs;
    }

}
