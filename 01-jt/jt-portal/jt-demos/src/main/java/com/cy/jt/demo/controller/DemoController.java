package com.cy.jt.demo.controller;

import org.springframework.web.bind.annotation.*;

import java.util.Arrays;
import java.util.Map;

@RestController
@RequestMapping("/demo/")
public class DemoController {
    @PostMapping
    public String doCreate(@RequestBody Map<String,Object> map){
        return map.toString() + " is created";
    }

    @GetMapping("{id}")
    public String doFindByID(@PathVariable Integer id){
        return "find result by " + id;
    }

    @DeleteMapping("{id}")
    public String doDeleteById(@PathVariable Integer ...id){
        return Arrays.toString(id) + " is delete";
    }
}
