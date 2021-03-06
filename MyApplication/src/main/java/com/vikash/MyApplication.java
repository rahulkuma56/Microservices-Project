package com.vikash;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.netflix.eureka.EnableEurekaClient;
@EnableEurekaClient
@SpringBootApplication
public class MyApplication {
	
	public static void main(String[] args) {
		SpringApplication.run(MyApplication.class, args);
	}
}
