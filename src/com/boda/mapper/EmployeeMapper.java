package com.boda.mapper;

import java.io.IOException;
import java.util.List;

import com.boda.pojo.Employee;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Component;

@Component(value = "employeeMapper")
public interface EmployeeMapper {

    /**
     * 根据指定信息查询employee
     *
     * @param empId
     * @param empName
     * @param empDept
     * @return
     * @throws IOException
     */
    public List<Employee> findEmp(@Param("empId") String empId,
                                  @Param("empName") String empName,
                                  @Param("empDept") String empDept,
                                  @Param("startRow") int startRow,
                                  @Param("length") int length) throws IOException;

    /**
     * 根据指定信息查询符合条件的employee数量
     *
     * @param empId
     * @param empName
     * @param empDept
     * @return
     * @throws IOException
     */
    public int findEmpCount(@Param("empId") String empId,
                            @Param("empName") String empName,
                            @Param("empDept") String empDept) throws IOException;

    /**
     * 根据ID查询employee
     *
     * @param 员工id
     * @return
     * @throws IOException
     */
    public Employee findEmpById(Integer id) throws IOException;

    /**
     * 根据账户名查询employee
     *
     * @param 员工account
     * @return 员工账户表的信息
     * @throws IOException
     */
    public Employee findEmpByAccount(String account) throws IOException;

    /**
     * 根据员工账户查询员工详细信息
     *
     * @param 员工account
     * @return 映射类型详细信息
     * @throws IOException
     */
    public Employee findEmpDetailByAccount(String account) throws IOException;

    /**
     * 更改密码
     *
     * @param employee
     * @return
     * @throws IOException
     */
    public Integer updatePassword(Employee employee) throws IOException;

    /**
     * 重置账户密码
     *
     * @param empAccount
     * @return
     * @throws IOException
     */
    public Integer resetPassword(String empAccount) throws IOException;

    /**
     * 根据部门名称和职位名称得到职位id
     *
     * @param deptName
     * @param postName
     * @return
     * @throws IOException
     */
    public Integer getPostId(@Param("deptName") String deptName, @Param("postName") String postName) throws IOException;


    /**
     * 新增一个员工账户
     *
     * @param employee
     * @return 带id的原信息
     * @throws IOException
     */
    public Integer addEmployee(Employee employee) throws IOException;



    /**
     * 根据id更新用户信息
     *
     * @param employee
     * @return
     * @throws IOException
     */
    public void updateUserById(Employee employee) throws IOException;

    /**
     * 根据用户id删除用户
     *
     * @param id
     * @throws IOException
     */
    public Integer delUserById(Integer id) throws IOException;


}
