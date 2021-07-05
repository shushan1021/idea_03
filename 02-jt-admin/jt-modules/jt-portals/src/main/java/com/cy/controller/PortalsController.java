package com.cy.controller;


import com.cy.domain.SysNotice;
import com.cy.service.PortalsHttpApi;
import com.cy.vo.JsonResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/portals")
public class PortalsController {

    @Autowired
    private PortalsHttpApi portalsHttpApi;
    @PostMapping
    public JsonResult selectNotices(@RequestBody SysNotice sysNotice){

        return portalsHttpApi.selectList(sysNotice);
    }
}
