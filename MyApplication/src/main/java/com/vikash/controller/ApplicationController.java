package com.vikash.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.ParameterizedTypeReference;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestTemplate;

import com.netflix.infix.lang.infix.antlr.EventFilterParser.boolean_expr_return;
import com.vikash.modal.User;
import com.vikash.services.UserService;

@Controller
public class ApplicationController {

	 @Autowired
	    RestTemplate restTemplate;
	 
	@Autowired
	UserService userService;
	@Autowired
	HttpSession session;
	
	@RequestMapping("/")
	public String index() {
		System.out.println(session+"**************************************************");		
		return"index";
	}
	@RequestMapping("/welcome")
	public String Welcome(HttpServletRequest request) {
		request.setAttribute("mode", "MODE_HOME");
		return "welcomepage";
	}

	@RequestMapping("/register")
	public String registration(HttpServletRequest request) {
		request.setAttribute("mode", "MODE_REGISTER");
		return "welcomepage";
	}
	
	@PostMapping("/save-user")
	public String registerUser(@ModelAttribute User user, BindingResult bindingResult, HttpServletRequest request) {
		userService.saveMyUser(user);
		request.setAttribute("mode", "MODE_HOME");
		return "welcomepage";
	}

	@GetMapping("/show-users")
	public String showAllUsers(HttpServletRequest request) {
		if(session.getAttribute("user")== null) {
			request.setAttribute("error", "Login with application.");
			request.setAttribute("mode", "MODE_LOGIN");
			return "welcomepage";
		}
		
		request.setAttribute("users", userService.showAllUsers());
		request.setAttribute("mode", "ALL_USERS");
		return "welcomepage";
	}
	@GetMapping("/allquotes")
	public String showAllQuote(HttpServletRequest request) {
		
		
		
		if(session.getAttribute("user")== null) {
			request.setAttribute("error", "Login with application.");
			request.setAttribute("mode", "MODE_LOGIN");
			return "welcomepage";
		}
			
		ResponseEntity<List<String>> quoteResponse = restTemplate.exchange("http://localhost:8300/rest/db/allquotes" , HttpMethod.GET,
                null, new ParameterizedTypeReference<List<String>>() {
                });
		 List<String> quotes = quoteResponse.getBody();
		request.setAttribute("quotes", quotes);
		request.setAttribute("mode", "ALL_QUOTES");
		return "welcomepage";
		
	}
	@RequestMapping("/delete-user")
	public String deleteUser(@RequestParam int id, HttpServletRequest request) {
		userService.deleteMyUser(id);
		request.setAttribute("users", userService.showAllUsers());
		request.setAttribute("mode", "ALL_USERS");
		return "welcomepage";
	}
	
	@RequestMapping("/edit-user")
	public String editUser(@RequestParam int id,HttpServletRequest request) {
		request.setAttribute("user", userService.editUser(id));
		request.setAttribute("mode", "MODE_UPDATE");
		return "welcomepage";
	}
	
	@RequestMapping("/login")
	public String login(HttpServletRequest request) {
		request.setAttribute("mode", "MODE_LOGIN");
		return "welcomepage";
	}
	
	@RequestMapping("/addquotes")
	public String addQuotes(HttpServletRequest request) {
		request.setAttribute("mode", "MODE_AddQuotes");
		return "welcomepage";
	}
	
	
	@RequestMapping ("/login-user")
	public String loginUser(@ModelAttribute User user, HttpServletRequest request) {
		if(userService.findByUsernameAndPassword(user.getUsername(), user.getPassword())!=null) {
			session.setAttribute("user", user);
			return "homepage";
		}
		else {
			request.setAttribute("error", "Invalid Username or Password");
			request.setAttribute("mode", "MODE_LOGIN");
			return "welcomepage";
			
		}
	}
	
	
	/*public boolean isLogin(HttpServletRequest request) {
		if(session.getAttribute("user")== null) {
			request.setAttribute("error", "Login with application.");
			request.setAttribute("mode", "MODE_LOGIN");
		return false;
		}
		else {
		return true;
		}
	}*/

}
