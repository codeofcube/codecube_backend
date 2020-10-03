package com.bingyublog.codecube.service;

import com.bingyublog.codecube.model.SysUser;
import com.bingyublog.codecube.model.SysUserRole;
import com.bingyublog.codecube.util.page.PageRequest;
import com.bingyublog.codecube.util.service.CurdService;

import java.io.File;
import java.util.List;
import java.util.Set;


  /**
 * @Classname SysUserService 
 * @Description 用户管理
 * @Date 2020/8/3 17:46
 * @Created by 冰羽
 */
public interface SysUserService extends CurdService<SysUser> {

    SysUser findByName(String username);

    /**
     * 查找用户的菜单权限标识集合
     *
     * @param userName
     * @return
     */
    Set<String> findPermissions(String userName);

    /**
     * 查找用户的角色集合
     *
     * @param userName
     * @return
     */
    List<SysUserRole> findUserRoles(Long userId);

    /**
     * 生成用户信息Excel文件
     *
     * @param pageRequest 要导出的分页查询参数
     * @return
     */
    File createUserExcelFile(PageRequest pageRequest);

}
