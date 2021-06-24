package com.cy.jt.demo.controller;

import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Arrays;

@RestController
@RequestMapping("/demo/")
public class DemoController {
    @DeleteMapping("{id}")
    public String deleteById(@PathVariable Integer ...id){
        return Arrays.toString(id) + " is delete";
    }
}
