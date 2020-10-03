package com.bingyublog.codecube.service;

import com.bingyublog.codecube.model.SysMenu;
import com.bingyublog.codecube.model.SysRole;
import com.bingyublog.codecube.model.SysRoleMenu;
import com.bingyublog.codecube.util.service.CurdService;

import java.util.List;


  /**
 * @Classname SysRoleService
 * @Description 角色管理
 * @Date 2020/8/3 17:46
 * @Created by 冰羽
 */
public interface SysRoleService extends CurdService<SysRole> {

    /**
     * 查询全部
     *
     * @return
     */
    List<SysRole> findAll();

    /**
     * 查询角色菜单集合
     *
     * @return
     */
    List<SysMenu> findRoleMenus(Long roleId);

    /**
     * 保存角色菜单
     *
     * @param records
     * @return
     */
    int saveRoleMenus(List<SysRoleMenu> records);

    /**
     * 根据名称查询
     *
     * @param name
     * @return
     */
    List<SysRole> findByName(String name);

}
