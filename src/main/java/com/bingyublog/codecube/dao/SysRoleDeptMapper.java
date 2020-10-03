package com.bingyublog.codecube.dao;


import com.bingyublog.codecube.model.SysRoleDept;

 /**
 * @Classname SysRoleDeptMapper
 * @Description 用户控制器
 * @Date 2020/8/3 17:46
 * @Created by 冰羽
 */

public interface SysRoleDeptMapper {
    int deleteByPrimaryKey(Long id);

    int insert(SysRoleDept record);

    int insertSelective(SysRoleDept record);

    SysRoleDept selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(SysRoleDept record);

    int updateByPrimaryKey(SysRoleDept record);
}