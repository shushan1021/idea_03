package com.cy.controller;


import com.cy.domain.SysNotice;
import com.cy.service.ISysNoticeService;

import com.cy.util.PageUtil;
import com.cy.vo.JsonResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/notice")
public class SysNoticeController {
    @Autowired
    private ISysNoticeService noticeService;

    @PostMapping("/list")
    public JsonResult selectList(@RequestBody SysNotice sysNotice){
        return new JsonResult(PageUtil.startPage().doSelectPageInfo(()->
                noticeService.selectNotices(sysNotice)
        ));
    }

    @GetMapping("/{id}")
    public JsonResult selectById(@PathVariable Long id){
        return new JsonResult(noticeService.selectNoticeById(id));
    }

    @PostMapping
    public JsonResult insertById(@RequestBody SysNotice sysNotice){
        return new JsonResult(noticeService.insertNotice(sysNotice));
    }

    @PutMapping
    public JsonResult updateById(@RequestBody SysNotice sysNotice){
        return new JsonResult(noticeService.updateNotice(sysNotice));
    }

    @DeleteMapping("/{id}")
    public JsonResult deleteById(@PathVariable Long ...id){
        return new JsonResult(noticeService.deleteByid(id));
    }
}
