package com.boda.service;

import com.boda.mapper.EmpDetailMapper;
import com.boda.pojo.EmpDetail;
import com.boda.pojo.Employee;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class UserDetailService {
    @Resource
    private EmpDetailMapper empDetailMapper;


//    public EmpDetail userDetail(String id) throws IOException {
//
////        SqlSession sqlSession = SessionFactory.getSession();
////        EmpDetailMapper empDetailMapper = sqlSession.getMapper(EmpDetailMapper.class);
//        EmpDetail empDetail = empDetailMapper.findEmpDetailById(Integer.parseInt(id));
////        sqlSession.commit();
////        sqlSession.close();
//        if (empDetail != null) {
//            return empDetail;
//        }
//        return null;
//    }

    public EmpDetail userDetail(Employee emp) throws Exception {
//        System.out.println(emp);
        EmpDetail empDetail = empDetailMapper.findEmpDetailById(emp.getEmpId());
//        System.out.println(empDetail);
        return empDetail;
    }

    public boolean updateUserDetail(EmpDetail empDetail) throws Exception {
        System.out.println(empDetail);
        return empDetailMapper.updateEmpDetail(empDetail) > 0;
    }
}
