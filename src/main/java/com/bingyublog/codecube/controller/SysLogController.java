package com.bingyublog.codecube.controller;

import com.bingyublog.codecube.model.SysLog;
import com.bingyublog.codecube.util.http.HttpResult;
import com.bingyublog.codecube.util.page.PageRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;



 /**
 * @Classname SysLogController
 * @Description 操作日志控制器
 * @Date 2020/8/3 17:46
 * @Created by 冰羽
 */
@RestController
@RequestMapping("log")
public class SysLogController {

    @Autowired
    private com.bingyublog.codecube.service.SysLogService sysLogService;

    @PostMapping(value = "/findPage")
    public HttpResult findPage(@RequestBody PageRequest pageRequest) {
        return HttpResult.ok(sysLogService.findPage(pageRequest));
    }

    @PostMapping(value = "/delete")
    public HttpResult delete(@RequestBody List<SysLog> records) {
        return HttpResult.ok(sysLogService.delete(records));
    }
}
