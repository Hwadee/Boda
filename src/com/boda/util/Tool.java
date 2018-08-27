package com.boda.util;

import org.junit.Test;

import javax.imageio.ImageIO;
import java.awt.*;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.*;
import java.util.List;
import java.util.regex.Pattern;

/**
 * 工具类，提供一些可能用到的方法
 */
public class Tool {

    /**
     * 判断参数是否为整数
     *
     * @param str
     * @return boolean
     */
    public static boolean isInteger(String str) {
        if ("".equals(str)) return false;
        Pattern pattern = Pattern.compile("^[-+]?[\\d]*$");
        return pattern.matcher(str).matches();
    }

    /**
     * 用于转换日期格式
     *
     * @param dateStr
     * @return Date
     */
    public static Date formatStringToDate(String dateStr) {

        if (dateStr == null || "".equals(dateStr)) {
            return null;
        }

        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyyMMdd");
        Date date = new Date();
        //日期处理为yyyyMMdd格式
        dateStr = dateStr.replaceAll("-", "");
        dateStr = dateStr.replaceAll("/", "");
        try {
            date = dateFormat.parse(dateStr);
        } catch (ParseException e) {
            e.printStackTrace();
        }
        return date;
    }

    public static String formatDateToString(Date date) {

        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyyMMdd");
        return dateFormat.format(date);
    }

    /**
     * 保存头像文件并返回文件绝对路径
     *
     * @param date
     * @return String
     */
    public static String saveImage(String fileDic, File image) {

        BufferedImage srcImage = null;
        try {
            srcImage = ImageIO.read(image);
        } catch (IOException e) {
            e.printStackTrace();
        }

        // 获取图片的宽高
        final int width = srcImage.getWidth();
        final int height = srcImage.getHeight();

        // 最终宽高
        final int finalWidth = 200;
        final int finalHeight = 250;

        // 以finalWidth:finalHeight的宽高比裁剪
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

        // 生成UUID作为文件名保存图片
        String uuid = UUID.randomUUID().toString().replaceAll("-", "");
        String url = fileDic + uuid + ".png";
        try {
            ImageIO.write(finalImage, "png", new File(url));
        } catch (IOException e) {
            e.printStackTrace();
        }
        return url;
    }

    // 获取随机账号
    public static String getRandomAccount() {

//        int uid = 26;
        int uid = new Random(System.currentTimeMillis()).nextInt(99999);
//    System.out.println("Boda" + String.valueOf(uid));
        return "Boda" + String.valueOf(uid);
    }

    /**
     * 取出两个List中的相同记录
     *
     * @param target
     * @param source
     * @return List
     */
    public static List combineMutualRecord(List target, List source) {

        if (source.isEmpty()) {
            return target;
        }

        Iterator iterator = source.iterator();
        List result = new LinkedList();

        while (iterator.hasNext()) {
            Object obj = iterator.next();
            if (target.contains(obj)) {
                result.add(obj);
            }
        }
        target.clear();
        source.clear();
        return result;
    }

    /**
     * 检查Hashmap中的value是否均为空字符串
     * 即检查是否没有搜索参数
     *
     * @param map
     * @return
     */
    public static boolean hasNoPara(HashMap<String, String> map) {

        Collection<String> paraLists = map.values();

        for (String para : paraLists) {
            System.out.println(para);
            if (!"".equals(para)) {
                return false;
            }
        }
        return true;
    }

    /**
     * 移除List中的重复元素，需重写equals和hashcode方法
     *
     * @param list
     */
    private static void removeDuplicate(List list) {

        LinkedHashSet set = new LinkedHashSet<String>(list.size());
        set.addAll(list);
        list.clear();
        list.addAll(set);
    }
}
