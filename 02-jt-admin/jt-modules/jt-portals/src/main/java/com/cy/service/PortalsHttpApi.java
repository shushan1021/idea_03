package com.cy.service;


import com.cy.domain.SysNotice;
import com.cy.vo.JsonResult;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;


@FeignClient(value = "jt-system",contextId = "portalsHttpApi")
public interface PortalsHttpApi {
    @PostMapping("/notice/list")
    JsonResult selectList(@RequestBody SysNotice sysNotice);

}
