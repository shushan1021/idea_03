package com.cy;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.ServiceInstance;
import org.springframework.cloud.client.loadbalancer.LoadBalanced;
import org.springframework.cloud.client.loadbalancer.LoadBalancerClient;
import org.springframework.context.annotation.Bean;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;

@SpringBootApplication
public class ConsumerApplication {
    public static void main(String[] args) {
        SpringApplication.run(ConsumerApplication.class, args);
    }

    @Bean
    public RestTemplate restTemplate(){
        return new RestTemplate();
    }

    @Bean
    @LoadBalanced
    public RestTemplate loadBalancerRestTemplate(){
        return new RestTemplate();
    }
    @RestController
    class ConsumerController{

        @Autowired
        private RestTemplate loadBalancerRestTemplate;

        @Autowired
        private RestTemplate restTemplate;

        @Autowired
        private LoadBalancerClient loadBalancerClient;

        @Value("${spring.application.name}")
        private String appName;

        @GetMapping("/consumer/doRestEcho01")
        public String doRestEcho01(){
            String url = "http://localhost:8082/provider/echo/" + appName;
            return restTemplate.getForObject(url, String.class);
        }

        @GetMapping("/consumer/doRestEcho02")
        public String doRestEcho02(){
            ServiceInstance choose = loadBalancerClient.choose("nacos-provider");
            String host = choose.getHost();
            int port = choose.getPort();
            String url = String.format("http://%s:%s/provider/echo/%s", host, port, appName);
            return restTemplate.getForObject(url, String.class);
        }

        @GetMapping("/consumer/doRestEcho03")
        public String doRestEcho03(){

            String url = String.format("http://%s/provider/echo/%s","nacos-provider",appName);
            return loadBalancerRestTemplate.getForObject(url, String.class);
        }
    }
}
