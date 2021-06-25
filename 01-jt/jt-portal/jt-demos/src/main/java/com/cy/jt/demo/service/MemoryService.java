package com.cy.jt.demo.service;

import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class MemoryService {
    public List<Map<String,Object>> list(){
        System.out.println("Get Data From DataBase");
        Map<String,Object> map = new HashMap<>();
        map.put("id", 100);
        map.put("title", "title-A");
        Map<String,Object> map2 = new HashMap<>();
        map2.put("id", 101);
        map2.put("title", "title-B");
        List<Map<String,Object>> list = new ArrayList<>();
        list.add(map);
        list.add(map2);
        return list;
    }
}
