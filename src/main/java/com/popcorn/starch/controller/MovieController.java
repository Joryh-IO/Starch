package com.popcorn.starch.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.popcorn.starch.entity.Movie;
import com.popcorn.starch.entity.Theater;
import com.popcorn.starch.service.MovieService;
import com.popcorn.starch.service.TheaterService;

@Controller
@RequestMapping("/Popcorn")
public class MovieController {
	
	@Autowired
	MovieService movieService;
	
	@Autowired
	TheaterService theaterService;
	
	@GetMapping("/movie")
	public String moviepage() {
		return "movie";
	}
	
	@GetMapping("/movie/{movieId}")
	public String moviepage(@PathVariable int movieId, Model model) {
		Optional<Movie> opm = movieService.movieById(movieId);
		Movie m = opm.get();
		System.out.println(m);
		model.addAttribute("currentMovie",m);
		
		List<Theater> theaters = theaterService.showAll();
		model.addAttribute("theaters", theaters);
		
		return "movie";
	}
}

