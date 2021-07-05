package com.cy;

import feign.RequestInterceptor;
import feign.RequestTemplate;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.openfeign.EnableFeignClients;
import org.springframework.context.annotation.Bean;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import java.util.Map;

@EnableFeignClients
@SpringBootApplication
public class JTPortalsApplication {
    public static void main(String[] args) {
        SpringApplication.run(JTPortalsApplication.class,args);

    }
    @Bean
    public RequestInterceptor requestInterceptor(){
        return new RequestInterceptor() {
            @Override
            public void apply(RequestTemplate requestTemplate) {
                ServletRequestAttributes requestAttributes =
                        (ServletRequestAttributes) RequestContextHolder.getRequestAttributes();
                HttpServletRequest request = requestAttributes.getRequest();
                Map<String,String[]> map = request.getParameterMap();
                if(map.containsKey("pageCurrent")){
                    requestTemplate.query("pageCurrent", request.getParameter("pageCurrent"));
                    requestTemplate.query("pageSize", request.getParameter("pageSize"));
                }

            }
        };
    }
}
