package com.popcorn.starch.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/Popcorn")
public class HomepageController {
	
	@GetMapping("/home")
	public String homepage() {
		System.out.println("visited");
		return "index";
	}
}
