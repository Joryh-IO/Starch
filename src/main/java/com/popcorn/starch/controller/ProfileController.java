package com.popcorn.starch.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/Popcorn")
public class ProfileController {

	@GetMapping("/profile")
	public String profilepage() {
		return "profile";
	}
}
