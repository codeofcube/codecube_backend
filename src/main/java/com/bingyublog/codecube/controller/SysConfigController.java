package com.bingyublog.codecube.controller;


import com.bingyublog.codecube.model.SysConfig;
import com.bingyublog.codecube.util.http.HttpResult;
import com.bingyublog.codecube.util.page.PageRequest;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;


 /**
 * @Classname SysConfigController
 * @Description 系统配置控制器
 * @Date 2020/8/4 20:21
 * @Created by 冰羽
 */

@Api(value = "文章API", description = "文章API")
@RestController
@RequestMapping("config")
public class SysConfigController {

    @Autowired
    private com.bingyublog.codecube.service.SysConfigService sysConfigService;

    @ApiOperation(value = "发表文章", notes = "发表文章", produces = "application/json")
    @PutMapping(value = "/save")
    public HttpResult save(@RequestBody SysConfig record) {
        return HttpResult.ok(sysConfigService.save(record));
    }

    @ApiOperation(value = "修改文章", notes = "修改文章", produces = "application/json")
    @DeleteMapping(value = "/delete")
    public HttpResult delete(@RequestBody List<SysConfig> records) {
        return HttpResult.ok(sysConfigService.delete(records));
    }

    @PostMapping(value = "/findPage")
    public HttpResult findPage(@RequestBody PageRequest pageRequest) {
        return HttpResult.ok(sysConfigService.findPage(pageRequest));
    }

    @GetMapping(value = "/findByLable")
    public HttpResult findByLable(@RequestParam String lable) {
        return HttpResult.ok(sysConfigService.findByLable(lable));
    }
}
