package com.cy.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.client.RestTemplate;

import java.util.Map;

@RestController
@RequestMapping("/consumer")
public class RestConsumerController {

    @Autowired
    private RestTemplate loadBalancerRestTemplate;
    @DeleteMapping("/deleteById/{id}")
    public String doDeleteById(@PathVariable String id){
        String url = String.format("http://%s/%s/%s/%s","nacos-provider","provider","deleteById",id);
        System.out.println(id);
        ResponseEntity<String> exchange = loadBalancerRestTemplate.exchange(url, HttpMethod.DELETE, null, String.class);
        return exchange.getBody();
    }

    @PostMapping
    public Map<String,Object> doCreate(@RequestBody Map<String,Object> map){
        String url = String.format("http://%s/%s", "nacos-provider","provider");
        return loadBalancerRestTemplate.postForObject(url,map,Map.class);
    }

    @PutMapping
    public Map<String,Object> doUpdate(@RequestBody Map<String,Object> map){
        String url = String.format("http://%s/%s", "nacos-provider","provider");

        ResponseEntity<Map> exchange = loadBalancerRestTemplate.exchange(url, HttpMethod.PUT, new HttpEntity<>(map), Map.class);
        return exchange.getBody();
    }
}
