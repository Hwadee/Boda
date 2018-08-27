package com.boda.util;

import com.boda.mapper.OperationMapper;
import com.boda.pojo.Employee;
import com.boda.pojo.OperationLog;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import javax.annotation.PostConstruct;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.util.Date;

@Component
public class OperationLogger {
    @Autowired
    private OperationMapper operationMapper;

    public static OperationLogger operationLogger;

    @PostConstruct
    public void init() {
        operationLogger = this;
        operationLogger.operationMapper = this.operationMapper;
    }

    public static void addLogger(HttpServletRequest request) throws IOException {
        OperationLog operationLog = new OperationLog();
        Employee employee = (Employee) request.getSession().getAttribute("employee");
        operationLog.setEmpId(employee.getEmpId());
        Date date = new Date();
        operationLog.setOperationDate(date);
        StringBuffer requestURL = request.getRequestURL();
        String queryString = request.getQueryString();
        if (queryString == null) {
            queryString = "";
        }
        operationLog.setOperationType(requestURL + queryString);
        operationLogger.operationMapper.addOperationLog(operationLog);
    }
}
