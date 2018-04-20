package com.CampusQuotient.LoginPage;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.mongodb.repository.config.EnableMongoRepositories;

import com.CampusQuotient.Controller.LoginController;
import com.CampusQuotient.repo.Repository;
@Configuration
@EnableAutoConfiguration
@ComponentScan(basePackageClasses=LoginController.class)
@EnableMongoRepositories(basePackageClasses=Repository.class)
public class LoginPageApplication {

	public static void main(String[] args) {
		SpringApplication.run(LoginPageApplication.class, args);
	}
}
