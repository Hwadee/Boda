package com.boda.service;

import com.boda.mapper.DepartmentMapper;
import com.boda.mapper.OperationMapper;
import com.boda.mapper.PostMapper;
import com.boda.pojo.Department;
import com.boda.pojo.OperationLog;
import com.boda.pojo.Post;
import com.boda.pojo.PostPowerRelation;
import com.boda.util.Tool;
import com.boda.vo.Page;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.Date;
import java.util.LinkedList;
import java.util.List;

@Service
public class SystemSettingService {
    @Resource
    private OperationMapper operationMapper;
    @Resource
    private PostMapper postMapper;

//    //一个搜索框，包括部门号或部门名称
//    public List<Department> getDeptInfo(String deptSearchToken) throws Exception {
//
//        List<Department> departments = new LinkedList<>();
//
//        if (Tool.isInteger(deptSearchToken)) { //优先以部门号搜索
//            departments.add(departmentMapper.findDepartmentById(Integer.parseInt(deptSearchToken)));
//        } else {
//            departments.addAll(departmentMapper.findDepartmentByName(deptSearchToken));
//        }
//        departments.remove(null);
//        return departments;
//    }
//
//    public boolean updateDeptInfo(Department department) throws Exception {
//
//        return departmentMapper.updateDepartment(department) > 0;
//    }
//
//    public boolean addDeptInfo(Department department) throws Exception {
//
//        return departmentMapper.addDepartment(department) > 0;
//    }
//
//    public boolean delDeptInfo(int deptId) throws Exception {
//
//        return departmentMapper.delDepartmentById(deptId) > 0;
//    }
//    //操作记录查询
//    public boolean addOperationLog(OperationLog operationLog) throws Exception {
//
//        return operationMapper.addOperationLog(operationLog) > 0;
//    }

    public Page<OperationLog> getOperationLogs(Integer currentPage, Integer pageSize, Date startDate, Date endDate, Integer empId) throws Exception {

        Page<OperationLog> operationLogPage = new Page<>();
        operationLogPage.setCurrentPage(currentPage);
        operationLogPage.setPageSize(pageSize);
        int allRowNum = operationMapper.findOperationLogNum(startDate, endDate, empId);
        if (allRowNum % pageSize == 0) {
            operationLogPage.setAllPageNum(allRowNum / pageSize);
        } else {
            operationLogPage.setAllPageNum(allRowNum / pageSize + 1);
        }
        int startRow = (operationLogPage.getCurrentPage() - 1) * operationLogPage.getPageSize();
        List<OperationLog> returnLoans = operationMapper.findOperationLog(startDate, endDate, startRow, pageSize, empId);
        operationLogPage.setObjList(returnLoans);
        return operationLogPage;
    }

    public List<Post> getPost(String deptId) throws Exception {

        return postMapper.findPostByDeptId(Integer.parseInt(deptId));
    }
}
