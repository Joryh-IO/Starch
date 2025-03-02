package com.popcorn.starch.controller;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.popcorn.starch.entity.ShowTime;
import com.popcorn.starch.service.ShowTimeService;


@Controller
@RequestMapping("/Popcorn")
public class BookingController {
	
	@Autowired
	ShowTimeService showTimeService;
	
	@GetMapping("/bookingtest")
	public String bookingpage() {
		return "booking";
	}
	
	@GetMapping("/booking/{showtimeid}/")
	public String bookingShow(@PathVariable int showtimeid, Model model){
		Optional<ShowTime> a =  showTimeService.getfromId(showtimeid);
		if(a.isPresent()) {
			ShowTime st = a.get();
			System.out.println(st.getTheater());
			model.addAttribute("showtime", st);
			model.addAttribute("movie", st.getMovie());
			model.addAttribute("theater", st.getTheater());
		}else {
			//to-do later
		}
		return "booking";
	}
}
