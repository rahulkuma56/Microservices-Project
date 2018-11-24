package com.vikash.controller;

import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.ParameterizedTypeReference;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestTemplate;

import com.vikash.modal.User;
import com.vikash.services.UserService;

@org.springframework.web.bind.annotation.RestController
public class RestController {
	
	@Autowired
	private UserService userService;

	@GetMapping("/abc")
	public String hello() {
		return "Welcome! Micro Services Example";
	}
	
	@GetMapping("/saveuser")
	public String saveUser(@RequestParam String username, @RequestParam String firstname, @RequestParam String lastname, @RequestParam int age, @RequestParam String password) {
		User user = new User(username, firstname, lastname, age, password);
		userService.saveMyUser(user);
		return "User Saved";
	}
	
	 @Autowired
	    RestTemplate restTemplate;
	
	 @GetMapping("/db/{username}")
	    public List<String> getStock(@PathVariable("username") final String userName) {

	        ResponseEntity<List<String>> quoteResponse = restTemplate.exchange("http://localhost:8300/rest/db/" + userName, HttpMethod.GET,
	                null, new ParameterizedTypeReference<List<String>>() {
	                });


	        List<String> quotes = quoteResponse.getBody();
	        return quotes;
	                /*.stream()
	                .map(this::getStockPrice)
	                .collect(Collectors.toList());*/
	    }
	/* private String getStockPrice(String quote) {
	        
	            return quote;
	    
	}*/
}
