package com.boda.service;

import com.boda.mapper.EmpDetailMapper;
import com.boda.pojo.EmpDetail;
import com.boda.pojo.Employee;
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

    public boolean updateUserDetail(EmpDetail empDetail) throws Exception {
//        System.out.println(empDetail);
        return empDetailMapper.updateEmpDetail(empDetail) > 0;
    }

    public boolean updateHeadPortrait(String empDetailId, File image) throws IOException {

        final String fileDic = "C:\\Users\\Wuming\\Desktop\\Boda\\WebContent\\images\\avatar\\";

        BufferedImage srcImage = ImageIO.read(image);

        // 获取图片的宽高
        final int width = srcImage.getWidth();
        final int height = srcImage.getHeight();

        // 最终宽高
        final int finalWidth = 200;
        final int finalHeight = 250;

        // 以finalWidth:finalHeight的宽高比裁剪
//        final int cutHeight = height;
//        float wToh = finalWidth / finalHeight;
        final int cutWidth = width > height * finalWidth / finalHeight ? height * finalWidth / finalHeight : width;

        // 裁剪原点
        int cutOriginX = (width - cutWidth) / 2;
        int cutOriginY = 0;

        // 裁剪并缩放图片为200*250像素
        BufferedImage cutImage = srcImage.getSubimage(cutOriginX, cutOriginY, cutWidth, height);
        Image scaledImage = cutImage.getScaledInstance(finalWidth, finalHeight, Image.SCALE_DEFAULT);
        BufferedImage finalImage = new BufferedImage(finalWidth, finalHeight, BufferedImage.TYPE_3BYTE_BGR);
        finalImage.getGraphics().drawImage(scaledImage, 0, 0, null);
        finalImage.getGraphics().dispose();

        // 生成UUID作为文件名保存图片，并记录到数据库
        String uuid = UUID.randomUUID().toString().replaceAll("-", "");
//        System.out.println(uuid);
        String url = fileDic + uuid + ".png";
        System.out.println(url);
        EmpDetail detail = empDetailMapper.findEmpDetailById(Integer.parseInt(empDetailId));
        String oldUrl = detail.getEmpPhotoUrl();

        if (empDetailMapper.updateEmpPhoto(empDetailId, url) > 0) {
            ImageIO.write(finalImage, "png", new File(url));
            File oldPhoto = new File(oldUrl);
            if (oldPhoto.isFile() && oldPhoto.exists()) {
                oldPhoto.delete();
            }
            return true;
        } else return false;
    }
}
