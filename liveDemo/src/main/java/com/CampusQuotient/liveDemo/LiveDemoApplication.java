package com.CampusQuotient.liveDemo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.data.mongodb.repository.config.EnableMongoRepositories;

import com.CampusQuotient.liveDemo.Controller.LoginRegController;

@SpringBootApplication
@EnableAutoConfiguration
@ComponentScan(basePackageClasses=LoginRegController.class)
@EnableMongoRepositories(basePackages="com.CampusQuotient.liveDemo.Repository")
public class LiveDemoApplication {

	public static void main(String[] args) {
		SpringApplication.run(LiveDemoApplication.class, args);
	}
}
