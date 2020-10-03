package com.bingyublog.codecube.dao;

import com.bingyublog.codecube.model.SysDict;
import org.apache.ibatis.annotations.Param;

import java.util.List;

 /**
 * @Classname SysDictMapper
 * @Description 用户控制器
 * @Date 2020/8/3 17:46
 * @Created by 冰羽
 */

public interface SysDictMapper {
    int deleteByPrimaryKey(Long id);

    int insert(SysDict record);

    int insertSelective(SysDict record);

    SysDict selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(SysDict record);

    int updateByPrimaryKey(SysDict record);

    List<SysDict> findPage();

    List<SysDict> findPageByLabel(@Param(value = "label") String label);

    List<SysDict> findByLable(@Param(value = "label") String label);
}