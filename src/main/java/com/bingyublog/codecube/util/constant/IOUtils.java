package com.bingyublog.codecube.util.constant;

import java.io.Closeable;
import java.io.IOException;


  /**
 * @Classname IOUtils 
 * @Description IO相关工具类
 * @Date 2020/8/3 17:46
 * @Created by 冰羽
 */
public class IOUtils {

    /**
     * 关闭对象，连接
     *
     * @param closeable
     */
    public static void closeQuietly(final Closeable closeable) {
        try {
            if (closeable != null) {
                closeable.close();
            }
        } catch (final IOException ioe) {
            // ignore
        }
    }
}
