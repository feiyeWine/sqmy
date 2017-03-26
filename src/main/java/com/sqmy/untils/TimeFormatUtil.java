package com.sqmy.untils;

import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * Created by TR on 2015/12/5.
 */
public class TimeFormatUtil {

    /**
     * 格式化一个Date
     * @param date
     * @return
     */
    public static String timeFormat(Date date) {
        SimpleDateFormat time=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        return time.format(date);
    }

    /**
     * 格式化当前时
     * @return
     */
    public static String nowTimeFormat(Date date) {
        return new SimpleDateFormat("yyyyMMddHHmmss").format(date);
    }

    /**
     * 格式化当前时
     * @return
     */
    public static String nowDateFormat() {
        return new SimpleDateFormat("yyyyMMdd").format(new Date());
    }


    public static void main(String[] args) {
        System.out.println(nowDateFormat());
    }

}
