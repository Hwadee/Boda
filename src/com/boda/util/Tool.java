package com.boda.util;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.*;
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

        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyyMMdd");
        Date date = new Date();
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
