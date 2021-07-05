package com.cy.controller;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.*;

import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

@RestController
@RequestMapping("/provider")
public class RestProviderController {

    @Value("${server.port}")
    private Integer port;

    @DeleteMapping("/deleteById/{id}")
    public String doDeleteById(@PathVariable Long ...id){
        return Arrays.toString(id)  + " is delete;" ;
    }
    @PostMapping
    public Map<String,Object> doCreate(@RequestBody Map<String,Object> map){
        System.out.println("provider.map" + map);
        map.put("status", 200);
        map.put("message", "insert ok");

        return map;
    }
    @PutMapping
    public Map<String,Object> doUpdate(@RequestBody Map<String,Object> map){
        System.out.println("provider.map" + map);
        map.put("status", 200);
        map.put("message", "update ok");

        return map;
    }
}
