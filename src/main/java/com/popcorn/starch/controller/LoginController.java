package com.popcorn.starch.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.popcorn.starch.entity.Movie;
import com.popcorn.starch.entity.User;
import com.popcorn.starch.service.LoginService;
import com.popcorn.starch.service.MovieService;

@Controller
@RequestMapping("/Popcorn")
public class LoginController {
	
	@Autowired
	LoginService loginService;
	@Autowired
	MovieService movieService;

	@GetMapping("/login")
	public String login() {

		return "login";
	}

	@GetMapping("/signup")
	public String signup() {

		return "login";
	}

	@PostMapping("/auth")
	public String authenticateUser(@RequestParam("username") String username, @RequestParam("password") String password,
			Model model) {
		
		System.out.println("auth visited");
		User loggedInUser = loginService.authenticateUser(username, password);
		if (loggedInUser != null) {
			model.addAttribute("currUser", loggedInUser);
			List<Movie> movieList = movieService.getAllMovies();
			model.addAttribute("movies", movieList);
			return "movie";
		} else {
			return "login";
		}
	}
}
