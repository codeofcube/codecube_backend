package com.bingyublog.codecube.controller;

import com.bingyublog.codecube.model.SysLoginLog;
import com.bingyublog.codecube.util.http.HttpResult;
import com.bingyublog.codecube.util.page.PageRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;


/**
 * 登录日志控制器
 *
 * @author Louis
 * @date Jan 13, 2019
 */

 /**
 * @Classname SysLoginLogController
 * @Description 登录日志控制器
 * @Date 2020/8/3 17:46
 * @Created by 冰羽
 */
@RestController
@RequestMapping("loginlog")
public class SysLoginLogController {

    @Autowired
    private com.bingyublog.codecube.service.SysLoginLogService sysLoginLogService;

    @PostMapping(value = "/findPage")
    public HttpResult findPage(@RequestBody PageRequest pageRequest) {
        return HttpResult.ok(sysLoginLogService.findPage(pageRequest));
    }

    @PostMapping(value = "/delete")
    public HttpResult delete(@RequestBody List<SysLoginLog> records) {
        return HttpResult.ok(sysLoginLogService.delete(records));
    }
}
