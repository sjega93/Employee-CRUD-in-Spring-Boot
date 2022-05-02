package com.ahmadsolehin.SUSAHCRUDNIE;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;

@SpringBootApplication(exclude = {DataSourceAutoConfiguration.class})
public class SusahcrudnieApplication {

	public static void main(String[] args) {
		SpringApplication.run(SusahcrudnieApplication.class, args);
	}
}
