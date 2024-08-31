package com.kora.jenkins_integration;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication
@RestController
@RequestMapping(value = "/k8")
public class JenkinsIntegrationApplication {

	@GetMapping
	public String message(){
		return "welcome to javatechie";
	}

	public static void main(String[] args) {
		SpringApplication.run(JenkinsIntegrationApplication.class, args);
	}

}
