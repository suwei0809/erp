package com.sw.erp;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@MapperScan("com.sw.erp.tourist.mapper")
@EnableAutoConfiguration
@ComponentScan(basePackages = {"com.sw.erp.tourist.controller","com.sw.erp.tourist.service"})
public class ErpApplication  {

	public static void main(String[] args) {
		SpringApplication.run(ErpApplication.class, args);
	}




}
