package com.bingyublog.codecube.dao;


import com.bingyublog.codecube.model.SysLog;
import com.bingyublog.codecube.model.SysLoginLog;
import org.apache.ibatis.annotations.Param;

import java.util.List;

 /**
 * @Classname SysLoginLogMapper 
 * @Description 用户控制器
 * @Date 2020/8/3 17:46
 * @Created by 冰羽
 */

public interface SysLoginLogMapper {
    int deleteByPrimaryKey(Long id);

    int insert(SysLoginLog record);

    int insertSelective(SysLoginLog record);

    SysLoginLog selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(SysLoginLog record);

    int updateByPrimaryKey(SysLoginLog record);

    List<SysLog> findPage();

    List<SysLog> findPageByUserName(@Param(value = "userName") String userName);

    List<SysLog> findPageByStatus(@Param(value = "status") String status);
}