package com.bingyublog.codecube.service;

import com.bingyublog.codecube.model.SysConfig;
import com.bingyublog.codecube.util.service.CurdService;

import java.util.List;

  /**
 * @Classname SysConfigService 
 * @Description 系统配置管理
 * @Date 2020/8/3 17:46
 * @Created by 冰羽
 */
public interface SysConfigService extends CurdService<SysConfig> {

    /**
     * 根据名称查询
     *
     * @param lable
     * @return
     */
    List<SysConfig> findByLable(String lable);
}
