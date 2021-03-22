package com.example.UserManager.controllers;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.UserManager.entities.User;
import com.example.UserManager.services.UserService;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

@Controller
public class UserController {

	@Autowired
	private UserService userService;

	Logger logger = LoggerFactory.getLogger(UserController.class);
	
	@GetMapping("/users")
	public String showUsers(ModelMap model) {

		logger.info("Getting all Users");

		Iterable<User> users = userService.GetAllUsers();
		logger.info("Passing users to view");
		model.addAttribute("users", users);
		return "users";
	}
	
	@GetMapping ("/find")
	public String FindByID(ModelMap model, @RequestParam int id) {
		logger.info ("Getting ID");
		User ui = userService.GetUserById(id);
		List<User> list = new ArrayList<>();
		list.add(ui);
		logger.info("Weee");
		model.addAttribute("users", list);

		return "users";
	}

	@RequestMapping(value = "/update", method = RequestMethod.GET)
	public String getUserById(ModelMap model, @RequestParam int id) {

		logger.info("Retrieving Users ");
		User u = userService.GetUserById(id);
		model.addAttribute ("users", u);
		return "edit";
		
	}

	@RequestMapping(value = "/edit", method = RequestMethod.POST)
	public String updateUser(User user, ModelMap model, @RequestParam int id, String name,
			String email, String password) {
			
		User u = new User();
		logger.info("Inserting data.");
		u.setId(id);
		u.setName(name);
		u.setEmail(email);
		u.setPassword(password);
		userService.save(u);
		List<User> list = new ArrayList<>();
		list.add(u);
		logger.info("Passing user");
		model.addAttribute("user", list);
		return "editComplete";
	}
}