package com.popcorn.starch.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/Popcorn")
public class PaywallController {
	
	@GetMapping("/payment")
	public String paywallpage() {
		return "paywall";
	}
}
