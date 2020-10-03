package com.bingyublog.codecube.model;

 /**
 * @Classname SysRoleDept
 * @Description 用户控制器
 * @Date 2020/8/3 17:46
 * @Created by 冰羽
 */

public class SysRoleDept extends BaseModel {

    private Long roleId;

    private Long deptId;

    public Long getRoleId() {
        return roleId;
    }

    public void setRoleId(Long roleId) {
        this.roleId = roleId;
    }

    public Long getDeptId() {
        return deptId;
    }

    public void setDeptId(Long deptId) {
        this.deptId = deptId;
    }

}