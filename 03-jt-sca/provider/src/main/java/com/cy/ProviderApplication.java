package com.cy;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;


@SpringBootApplication
public class ProviderApplication {
    public static void main(String[] args) {
        SpringApplication.run(ProviderApplication.class,args);
    }
    @RestController
    class ProviderController{

        @Value("${server.port}")
        private String port;

        @GetMapping("/provider/echo/{msg}")
        public String doEcho(@PathVariable String msg){
            return port + " say : " + msg;
        }
    }
}
