package com.cy.service;

import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

@FeignClient(name = "nacos-provider")
public interface ConsumerHttpAPI {
    @GetMapping("/provider/echo/{msg}")
    String doEcho(@PathVariable("msg") String msg);
}
