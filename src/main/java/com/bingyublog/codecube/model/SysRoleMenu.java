package com.bingyublog.codecube.model;

 /**
 * @Classname SysRoleMenu 
 * @Description 用户控制器
 * @Date 2020/8/3 17:46
 * @Created by 冰羽
 */

public class SysRoleMenu extends BaseModel {

    private Long roleId;

    private Long menuId;

    public Long getRoleId() {
        return roleId;
    }

    public void setRoleId(Long roleId) {
        this.roleId = roleId;
    }

    public Long getMenuId() {
        return menuId;
    }

    public void setMenuId(Long menuId) {
        this.menuId = menuId;
    }

}