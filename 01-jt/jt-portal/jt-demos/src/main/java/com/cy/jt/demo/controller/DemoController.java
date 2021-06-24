package com.cy.jt.demo.controller;

import org.springframework.web.bind.annotation.*;

import java.util.Arrays;
import java.util.Map;
import java.util.concurrent.atomic.AtomicLong;

@RestController
@RequestMapping("/demo/")
public class DemoController {

    private AtomicLong counter = new AtomicLong(1);
    @PostMapping
    public String doCreate(@RequestBody Map<String,Object> map){
        return map.toString() + " is created";
    }

    @GetMapping("{id}")
    public String doFindByID(@PathVariable Integer id){
        String tname = Thread.currentThread().getName();
        System.out.println(counter.getAndIncrement());
        return tname + " find result by " + id;
    }

    @DeleteMapping("{id}")
    public String doDeleteById(@PathVariable Integer ...id){
        return Arrays.toString(id) + " is delete";
    }
}
