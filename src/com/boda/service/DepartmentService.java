package com.boda.service;

import com.boda.mapper.DepartmentMapper;
import com.boda.pojo.Department;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.LinkedList;
import java.util.List;
import java.util.regex.Pattern;

@Service
public class DepartmentService {

    @Resource
    private DepartmentMapper departmentMapper;

    public List<Department> getDeptInfo(String deptSearchToken) throws Exception { //一个搜索框，包括部门号或部门名称

        List<Department> departments = new LinkedList<>();

        if (isInteger(deptSearchToken)) { //优先以部门号搜索
            departments.add(departmentMapper.findDepartmentById(Integer.parseInt(deptSearchToken)));
        } else {
            departments.addAll(departmentMapper.findDepartmentByName(deptSearchToken));
        }
//        if ((departments = departmentMapper.findDepartmentByName(deptSearchToken)) == null) {
//            departments.add(departmentMapper.findDepartmentById(Integer.parseInt(deptSearchToken)));
//        }
        return departments.isEmpty() ? null : departments;
    }

    public boolean updateDeptInfo(Department department) throws Exception {

        return departmentMapper.updateDepartment(department) > 0;
    }


    private static boolean isInteger(String str) {
        if ("".equals(str)) return false;
        Pattern pattern = Pattern.compile("^[-+]?[\\d]*$");
        return pattern.matcher(str).matches();
    }
}
