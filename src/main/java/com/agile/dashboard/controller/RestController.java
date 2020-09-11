package com.agile.dashboard.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.agile.dashboard.model.User;
import com.agile.dashboard.service.UserService;
@org.springframework.web.bind.annotation.RestController
public class RestController {
	@Autowired
	private UserService userService;
	
	
	
         @GetMapping("/saveuser")
         public String saveUser(@RequestParam String username,@RequestParam String email_id,@RequestParam String password)
         {
        	 User user=new User(username,email_id,password);
        	 userService.saveMyUser(user);
        	 return "hi User is saved";
         }
}
