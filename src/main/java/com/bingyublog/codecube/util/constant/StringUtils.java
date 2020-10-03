package com.bingyublog.codecube.util.constant;

/**
 * 字符串工具类
 *
 * @author Louis
 * @date Sep 1, 2018
 */

  /**
 * @Classname StringUtils
 * @Description 字符串工具类
 * @Date 2020/8/3 17:46
 * @Created by 冰羽
 */
public class StringUtils {

    /**
     * 判空操作
     *
     * @param value
     * @return
     */
    public static boolean isBlank(String value) {
        return value == null || "".equals(value) || "null".equals(value) || "undefined".equals(value);
    }

}
