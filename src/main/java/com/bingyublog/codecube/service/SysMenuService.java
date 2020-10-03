package com.bingyublog.codecube.service;

import com.bingyublog.codecube.model.SysMenu;
import com.bingyublog.codecube.util.service.CurdService;

import java.util.List;


  /**
 * @Classname SysMenuService
 * @Description 菜单管理
 * @Date 2020/8/3 17:46
 * @Created by 冰羽
 */
public interface SysMenuService extends CurdService<SysMenu> {

    /**
     * 查询菜单树,用户ID和用户名为空则查询全部
     *
     * @param menuType 获取菜单类型，0：获取所有菜单，包含按钮，1：获取所有菜单，不包含按钮
     * @param userId
     * @return
     */
    List<SysMenu> findTree(String userName, int menuType);

    /**
     * 根据用户名查找菜单列表
     *
     * @param userName
     * @return
     */
    List<SysMenu> findByUser(String userName);
}
