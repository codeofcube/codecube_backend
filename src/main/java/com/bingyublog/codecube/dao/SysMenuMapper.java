package com.bingyublog.codecube.dao;

import com.bingyublog.codecube.model.SysMenu;
import org.apache.ibatis.annotations.Param;

import java.util.List;

 /**
 * @Classname SysMenuMapper
 * @Description 用户控制器
 * @Date 2020/8/3 17:46
 * @Created by 冰羽
 */

public interface SysMenuMapper {
    int deleteByPrimaryKey(Long id);

    int insert(SysMenu record);

    int insertSelective(SysMenu record);

    SysMenu selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(SysMenu record);

    int updateByPrimaryKey(SysMenu record);

    List<SysMenu> findPage();

    List<SysMenu> findPageByName(@Param(value = "name") String name);

    List<SysMenu> findAll();

    List<SysMenu> findByUserName(@Param(value = "userName") String userName);

    List<SysMenu> findRoleMenus(@Param(value = "roleId") Long roleId);
}