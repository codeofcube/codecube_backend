package com.bingyublog.codecube.service;

import com.bingyublog.codecube.model.SysDict;
import com.bingyublog.codecube.util.service.CurdService;

import java.util.List;


  /**
 * @Classname SysDictService
 * @Description 字典管理
 * @Date 2020/8/3 17:46
 * @Created by 冰羽
 */
public interface SysDictService extends CurdService<SysDict> {

    /**
     * 根据名称查询
     *
     * @param lable
     * @return
     */
    List<SysDict> findByLable(String lable);
}
