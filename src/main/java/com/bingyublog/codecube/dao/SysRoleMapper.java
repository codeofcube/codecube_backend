package com.bingyublog.codecube.dao;

import com.bingyublog.codecube.model.SysRole;
import org.apache.ibatis.annotations.Param;

import java.util.List;

 /**
 * @Classname SysRoleMapper
 * @Description 用户控制器
 * @Date 2020/8/3 17:46
 * @Created by 冰羽
 */

public interface SysRoleMapper {
    int deleteByPrimaryKey(Long id);

    int insert(SysRole record);

    int insertSelective(SysRole record);

    SysRole selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(SysRole record);

    int updateByPrimaryKey(SysRole record);

    List<SysRole> findPage();

    List<SysRole> findAll();

    List<SysRole> findPageByName(@Param(value = "name") String name);

    List<SysRole> findByName(@Param(value = "name") String name);
}