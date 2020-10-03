package com.bingyublog.codecube.util.constant;

import org.apache.poi.ss.usermodel.Workbook;

import java.io.*;

  /**
 * @Classname PoiUtils
 * @Description POI相关操作
 * @Date 2020/8/3 17:46
 * @Created by 冰羽
 */
public class PoiUtils {

    /**
     * 生成Excel文件
     *
     * @param workbook
     * @param fileName
     * @return
     */
    public static File createExcelFile(Workbook workbook, String fileName) {
        OutputStream stream = null;
        File file = null;
        try {
            file = File.createTempFile(fileName, ".xlsx");
            stream = new FileOutputStream(file.getAbsoluteFile());
            workbook.write(stream);
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            IOUtils.closeQuietly(workbook);
            IOUtils.closeQuietly(stream);
        }
        return file;
    }
}
