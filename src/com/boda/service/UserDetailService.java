package com.boda.service;

import com.boda.mapper.EmpDetailMapper;
import com.boda.pojo.EmpDetail;
import com.boda.pojo.Employee;
import com.boda.util.Tool;
import com.sun.deploy.security.ValidationState;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import javax.imageio.ImageIO;
import java.awt.*;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.util.UUID;

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

    public EmpDetail getUserDetailByAccount(String empAccount) throws Exception {

        return empDetailMapper.findEmpDetailByAccount(empAccount);
    }

    public boolean updateUserDetail(EmpDetail empDetail) throws Exception {
//        System.out.println(empDetail);
        return empDetailMapper.updateEmpDetail(empDetail) > 0;
    }

    public boolean updateHeadPortrait(String empDetailId, File image) throws IOException {

        final String fileDic = "C:\\Users\\Wuming\\Desktop\\Boda\\WebContent\\images\\avatar\\";
        String url = Tool.saveImage(fileDic, image);

        System.out.println(url);
        EmpDetail detail = empDetailMapper.findEmpDetailById(Integer.parseInt(empDetailId));
        String oldUrl = detail.getEmpPhotoUrl();

        if (empDetailMapper.updateEmpPhoto(empDetailId, url) > 0) {
            //更新信息成功，删除旧头像文件
            File oldPhoto = new File(oldUrl);
            if (oldPhoto.isFile() && oldPhoto.exists()) {
                oldPhoto.delete();
            }
            return true;
        } else {
            //更新信息失败，删除保存的新头像文件
            File photo = new File(url);
            if (photo.isFile() && photo.exists()) {
                photo.delete();
            }
            return false;
        }
    }
}
