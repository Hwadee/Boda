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

    //一个搜索框，包括部门号或部门名称
    public List<Department> getDeptInfo(String deptSearchToken) throws Exception {

        List<Department> departments = new LinkedList<>();

        if (isInteger(deptSearchToken)) { //优先以部门号搜索
            departments.add(departmentMapper.findDepartmentById(Integer.parseInt(deptSearchToken)));
        } else {
            departments.addAll(departmentMapper.findDepartmentByName(deptSearchToken));
        }
        departments.remove(null);
        return departments;
    }

    public boolean updateDeptInfo(Department department) throws Exception {

        return departmentMapper.updateDepartment(department) > 0;
    }

    public boolean addDeptInfo(Department department) throws Exception {

        return departmentMapper.addDepartment(department) > 0;
    }

    public boolean delDeptInfo(int deptId) throws Exception {

        return departmentMapper.delDepartmentById(deptId) > 0;
    }

    //判断搜索参数是否为整数
    private static boolean isInteger(String str) {
        if ("".equals(str)) return false;
        Pattern pattern = Pattern.compile("^[-+]?[\\d]*$");
        return pattern.matcher(str).matches();
    }
}
