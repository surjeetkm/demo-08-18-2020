package com.example.demo;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class CustomerController {

	@GetMapping
	public String getMessage() {
		return "Hello Customer! Good Morning.";
	}
}
