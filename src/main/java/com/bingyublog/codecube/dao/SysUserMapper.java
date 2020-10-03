package com.bingyublog.codecube.dao;

import com.bingyublog.codecube.model.SysUser;
import org.apache.ibatis.annotations.Param;

import java.util.List;

 /**
 * @Classname SysUserMapper 
 * @Description 用户控制器
 * @Date 2020/8/3 17:46
 * @Created by 冰羽
 */

public interface SysUserMapper {
    int deleteByPrimaryKey(Long id);

    int insert(SysUser record);

    int insertSelective(SysUser record);

    SysUser selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(SysUser record);

    int updateByPrimaryKey(SysUser record);

    List<SysUser> findPage();

    SysUser findByName(@Param(value = "name") String name);

    List<SysUser> findPageByName(@Param(value = "name") String name);

    List<SysUser> findPageByNameAndEmail(@Param(value = "name") String name, @Param(value = "email") String email);
}