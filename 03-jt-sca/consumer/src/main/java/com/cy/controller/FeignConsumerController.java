package com.cy.controller;

import com.cy.service.ConsumerHttpAPI;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/consumer")
public class FeignConsumerController {

    @Autowired
    private ConsumerHttpAPI consumerHttpAPI;

    @GetMapping("/echo/{msg}")
    public String doEcho(@PathVariable String msg){
        return consumerHttpAPI.doEcho(msg);
    }
}
