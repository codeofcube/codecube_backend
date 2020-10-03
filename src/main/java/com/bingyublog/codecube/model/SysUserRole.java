package com.bingyublog.codecube.model;

 /**
 * @Classname SysUserRole  
 * @Description 用户控制器
 * @Date 2020/8/3 17:46
 * @Created by 冰羽
 */

public class SysUserRole extends BaseModel {

    private Long userId;

    private Long roleId;

    public Long getUserId() {
        return userId;
    }

    public void setUserId(Long userId) {
        this.userId = userId;
    }

    public Long getRoleId() {
        return roleId;
    }

    public void setRoleId(Long roleId) {
        this.roleId = roleId;
    }

}