package com.cy.jt.demo.controller;

import com.cy.jt.demo.service.MemoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

@RestController
@RequestMapping("/memory/")
public class MemoryController {
    @Autowired
    MemoryService memoryService;
    //jvm中的缓存
//    private Map<String,Object> cache = new ConcurrentHashMap<>();
    @GetMapping
    public List<Map<String, Object>> doRetrieve(){
//        if (!cache.containsKey("memory"))
//            cache.put("memory", memoryService.list());
        return memoryService.list();
    }
}
