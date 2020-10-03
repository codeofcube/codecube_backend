package com.bingyublog.codecube.controller;

import com.bingyublog.codecube.model.SysMenu;
import com.bingyublog.codecube.util.http.HttpResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;


/**
 * 菜单控制器
 *
 * @author Louis
 * @date Jan 13, 2019
 */

 /**
 * @Classname SysMenuController
 * @Description 菜单控制器
 * @Date 2020/8/3 17:46
 * @Created by 冰羽
 */
@RestController
@RequestMapping("menu")
public class SysMenuController {

    @Autowired
    private com.bingyublog.codecube.service.SysMenuService sysMenuService;

    @PostMapping(value = "/save")
    public HttpResult save(@RequestBody SysMenu record) {
        return HttpResult.ok(sysMenuService.save(record));
    }

    @PostMapping(value = "/delete")
    public HttpResult delete(@RequestBody List<SysMenu> records) {
        return HttpResult.ok(sysMenuService.delete(records));
    }

    @GetMapping(value = "/findNavTree")
    public HttpResult findNavTree(@RequestParam String userName) {
        return HttpResult.ok(sysMenuService.findTree(userName, 1));
    }

    @GetMapping(value = "/findMenuTree")
    public HttpResult findMenuTree() {
        return HttpResult.ok(sysMenuService.findTree(null, 0));
    }
}
