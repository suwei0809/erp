package com.sw;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@MapperScan("com.sw.erp")
@EnableAutoConfiguration
@ComponentScan(basePackages = {"com.sw.erp"})
public class ErpApplication  {

	public static void main(String[] args) {
		SpringApplication.run(ErpApplication.class, args);
	}




}
