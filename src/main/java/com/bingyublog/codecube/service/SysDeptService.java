package com.bingyublog.codecube.service;

import com.bingyublog.codecube.model.SysDept;
import com.bingyublog.codecube.util.service.CurdService;

import java.util.List;


  /**
 * @Classname SysDeptService
 * @Description 机构管理
 * @Date 2020/8/3 17:46
 * @Created by 冰羽
 */
public interface SysDeptService extends CurdService<SysDept> {

    /**
     * 查询机构树
     *
     * @param userId
     * @return
     */
    List<SysDept> findTree();
}
