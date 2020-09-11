package com.agile.dashboard.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.agile.dashboard.model.Issue;
import com.agile.dashboard.model.User;
import com.agile.dashboard.service.IssueService;
import com.agile.dashboard.service.UserService;

@Controller
public class ApplicationController {
	
	@Autowired
	private UserService userservice;
	@Autowired
	private IssueService issueservice;
	
	
	


	@RequestMapping(value = { "/", "/signup" })
	public String signupPage() {
		return "signup";
	}

	@PostMapping("/save-user")
	public String register(@ModelAttribute User user, BindingResult bindingresult, HttpServletRequest request) {
		System.out.println("User in db saved");
	  userservice.saveMyUser(user);
		return "login";
	}

	@RequestMapping("/login")
	public String login() {
		return "login";
	}
	@RequestMapping("/validate")
	public String vaildate(@ModelAttribute User user, HttpServletRequest request) {
		if(userservice.findByUsernameAndPassword(user.getUsername(), user.getPassword())!=null) {
			return "home";
		}
		else {
			request.setAttribute("error", "Invalid Username or Password");
			return "login";
			
		}
	
		
		
	}

	@RequestMapping("/home")
	public String home() {
		return "home";
	}
	@RequestMapping("/create")
	public String projectCreation() {
		return "project";
	}

	@RequestMapping("/activity_dashboard")
	public String dashBoard(HttpServletRequest request) {
		request.setAttribute("issues", issueservice.showAllIssues());
		return "dashboard";
	}
	@RequestMapping("/activity_home")
	public String ahome() {
		return "activity_home";
	}

	@RequestMapping("/activity_issue")
	public String issues(HttpServletRequest request) {
		request.setAttribute("users", userservice.showAllUsers());
		
		return "issue";
	}
	@RequestMapping("/create_issue")
	public String creation(@ModelAttribute Issue issue,BindingResult bindingresult, HttpServletRequest request)
	{
		request.setAttribute("success", "issue created successfully");
		
		issueservice.saveMyIssue(issue);
		return "activity_home";
	}

}
