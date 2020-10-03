package com.bingyublog.codecube.controller;

import com.bingyublog.codecube.model.SysDict;
import com.bingyublog.codecube.util.http.HttpResult;
import com.bingyublog.codecube.util.page.PageRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * 字典控制器
 *
 * @author Louis
 * @date Jan 13, 2019
 */

 /**
 * @Classname SysDictController
 * @Description 字典控制器
 * @Date 2020/8/4 13:46
 * @Created by 冰羽
 */
@RestController
@RequestMapping("dict")
public class SysDictController {

    @Autowired
    private com.bingyublog.codecube.service.SysDictService sysDictService;

    @PostMapping(value = "/save")
    public HttpResult save(@RequestBody SysDict record) {
        return HttpResult.ok(sysDictService.save(record));
    }

    @PostMapping(value = "/delete")
    public HttpResult delete(@RequestBody List<SysDict> records) {
        return HttpResult.ok(sysDictService.delete(records));
    }

    @PostMapping(value = "/findPage")
    public HttpResult findPage(@RequestBody PageRequest pageRequest) {
        return HttpResult.ok(sysDictService.findPage(pageRequest));
    }

    @GetMapping(value = "/findByLable")
    public HttpResult findByLable(@RequestParam String lable) {
        return HttpResult.ok(sysDictService.findByLable(lable));
    }
}
