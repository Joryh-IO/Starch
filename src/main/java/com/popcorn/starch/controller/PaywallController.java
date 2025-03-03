package com.popcorn.starch.controller;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.popcorn.starch.entity.Movie;
import com.popcorn.starch.entity.ShowTime;
import com.popcorn.starch.entity.Theater;
import com.popcorn.starch.service.ShowTimeService;

@Controller
@RequestMapping("/Popcorn")
public class PaywallController {
	
	@Autowired
	ShowTimeService showTimeService;
	
	
	@GetMapping("/booking/{showtimeid}/payment")
	public String paywallpage(@PathVariable int showtimeid, Model model) {
		Optional<ShowTime> opst = showTimeService.getfromId(showtimeid);
		ShowTime st = opst.get();
		Theater theater = st.getTheater();
		Movie movie = st.getMovie();
		model.addAttribute("currentMovie", movie);
		model.addAttribute("showtime", st);
		model.addAttribute("theater", theater);
		return "paywall";
	}
}
