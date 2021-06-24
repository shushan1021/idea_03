package com.cy.jt;

import com.cty.jt.common.basic.util.StringUtils;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class MemberApplication {
    public static void main(String[] args) {
        SpringApplication.run(MemberApplication.class, args);
        System.out.println(StringUtils.isEmpty("aa"));

    }
}
