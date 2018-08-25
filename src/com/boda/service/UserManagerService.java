package com.boda.service;

import java.io.IOException;
import java.util.LinkedList;
import java.util.List;

import com.boda.pojo.Loan;
import com.boda.util.Tool;
import com.boda.vo.Page;
import org.springframework.stereotype.Service;

import com.boda.mapper.EmployeeMapper;
import com.boda.pojo.Employee;

import javax.annotation.Resource;

@Service
public class UserManagerService {

    @Resource
    private EmployeeMapper employeeMapper;

    public Employee userLogin(String account, String password) throws IOException {

//        SqlSession sqlSession = SessionFactory.getSession();
//        EmployeeMapper employeeMapper = sqlSession.getMapper(EmployeeMapper.class);
        Employee employee = employeeMapper.findEmpByAccount(account);
        System.out.println(employee);
//        sqlSession.commit();
//        sqlSession.close();
        if (employee != null && employee.getEmpPassword().equals(password)) {
            return employee;
        }
        return null;
    }

    public Page<Employee> getEmpInfo(String empId, String empName, String empDept, Page<Employee> page) throws IOException {

        List<Employee> employees = new LinkedList<>();

        int pageMAXRow = page.getPageSize();
        int startRow = (page.getCurrentPage() - 1) * page.getPageSize();

        employees.addAll(employeeMapper.findEmp(empId, empName, empDept, startRow, page.getPageSize()));

        page.setObjList(employees);

        int allRowNum = employeeMapper.findEmpCount(empId, empName, empName);
        int allPageNum = allRowNum % pageMAXRow == 0 ? allRowNum / pageMAXRow : allRowNum / pageMAXRow + 1;
        page.setAllPageNum(allPageNum);
        System.out.println(employees);
        return page;
    }

    public String addEmpInfo(String empName, String deptName, String postName) throws IOException {

        int postId = employeeMapper.getPostId(deptName, postName);

        Employee employee = new Employee();
//        employee.setEmpName(empName);
        employee.setPostId(postId);
        employee.setEmpAccount(Tool.getRandomAccount());
        employee.setEmpPassword("123456");

        if (employeeMapper.addEmployee(employee) > 0) {
            String empAccount = employee.getEmpAccount();
            if (employeeMapper.autoUpdateEmpName(empName, String.valueOf(employeeMapper.getIdByAccount(empAccount))) > 0) {
                return empAccount;
            } else {
                //todo: 删除插入的记录
            }
        }
        return null;

    }

    public boolean delEmpInfo(String empId) throws IOException {

        return employeeMapper.delUserById(Integer.parseInt(empId)) > 0;
    }

}
