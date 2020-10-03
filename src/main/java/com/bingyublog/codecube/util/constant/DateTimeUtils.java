package com.bingyublog.codecube.util.constant;

import java.text.SimpleDateFormat;
import java.util.Date;

  /**
 * @Classname DateTimeUtils
 * @Description 日期时间相关工具
 * @Date 2020/8/3 17:46
 * @Created by 冰羽
 */
public class DateTimeUtils {

    public static final String DATE_FORMAT = "yyyy-MM-dd HH:mm:ss";

    /**
     * 获取当前标准格式化日期时间
     *
     * @param
     * @return
     */
    public static String getDateTime() {
        return getDateTime(new Date());
    }

    /**
     * 标准格式化日期时间
     *
     * @param date
     * @return
     */
    public static String getDateTime(Date date) {
        return (new SimpleDateFormat(DATE_FORMAT)).format(date);
    }
}
