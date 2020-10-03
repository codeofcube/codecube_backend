package com.bingyublog.codecube.controller;


import com.bingyublog.codecube.model.SysDept;
import com.bingyublog.codecube.util.http.HttpResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * 机构控制器
 *
 * @author Louis
 * @date Jan 13, 2019
 */

 /**
 * @Classname SysDeptController
 * @Description 机构控制器
 * @Date 2020/8/4 09:46
 * @Created by 冰羽
 */
@RestController
@RequestMapping("dept")
public class SysDeptController {

    @Autowired
    private com.bingyublog.codecube.service.SysDeptService sysDeptService;

    @PostMapping(value = "/save")
    public HttpResult save(@RequestBody SysDept record) {
        return HttpResult.ok(sysDeptService.save(record));
    }

    @PostMapping(value = "/delete")
    public HttpResult delete(@RequestBody List<SysDept> records) {
        return HttpResult.ok(sysDeptService.delete(records));
    }

    @GetMapping(value = "/findTree")
    public HttpResult findTree() {
        return HttpResult.ok(sysDeptService.findTree());
    }

}
