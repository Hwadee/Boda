package com.boda.service;

import com.boda.mapper.EmpDetailMapper;
import com.boda.pojo.EmpDetail;
import com.boda.unit.SessionFactory;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.io.IOException;

@Service
public class UserDetailService {
    @Resource
    private EmpDetailMapper empDetailMapper;

    public EmpDetail userDetail(String id) throws IOException {

//        SqlSession sqlSession = SessionFactory.getSession();
//        EmpDetailMapper empDetailMapper = sqlSession.getMapper(EmpDetailMapper.class);
        EmpDetail empDetail = empDetailMapper.findEmpDetailById(Integer.parseInt(id));
//        sqlSession.commit();
//        sqlSession.close();
        if (empDetail != null) {
            return empDetail;
        }
        return null;
    }
}
