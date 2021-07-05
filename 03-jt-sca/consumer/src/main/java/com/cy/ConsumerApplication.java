package com.cy;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.ServiceInstance;
import org.springframework.cloud.client.loadbalancer.LoadBalanced;
import org.springframework.cloud.client.loadbalancer.LoadBalancerClient;
import org.springframework.cloud.context.config.annotation.RefreshScope;
import org.springframework.cloud.openfeign.EnableFeignClients;
import org.springframework.context.annotation.Bean;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;



@SpringBootApplication
@EnableFeignClients
public class ConsumerApplication {

    private static Logger logger = LoggerFactory.getLogger(ConsumerApplication.class);
    public static void main(String[] args) {
        SpringApplication.run(ConsumerApplication.class, args);

        logger.debug("==debug");
        logger.warn("--warn");
        logger.info("info");
        logger.error("error");
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

    @RefreshScope
    @RestController
    class ConsumerController{

        @Value("${logging.level.com.cy:error}")
        private String logLevel;

        @GetMapping("/getLogLevel")
        public String doGetLogLevel(){
            return "logLevel is " + logLevel;
        }

        @Value("${server.tomcat.threads.max:200}")
        private String maxThread;

        @GetMapping("/getMaxThreads")
        public String doGetMaxThreads(){
            return "max threads is " + maxThread;
        }

        @Value("${page.pageSize:10}")
        private String pageSize;

        @GetMapping("/getPageSize")
        public String doGetPageSize(){
            return "pageSize is " + pageSize;
        }

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
            logger.debug("/consumer/doRestEcho01","doRestEcho01()");
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

            String url = String.format("http://%s%s/%s","nacos-provider","/provider/echo",appName);
            return loadBalancerRestTemplate.getForObject(url, String.class);
        }
    }
}
