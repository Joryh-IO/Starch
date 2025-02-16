package com.popcorn.starch.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.popcorn.starch.entity.Movie;
import com.popcorn.starch.repo.MovieRepository;

public class MovieService {
	
	@Autowired
	MovieRepository movieRepository;
	
	public List<Movie> getAllMovies(){
		System.out.println(movieRepository.findAll());
		return movieRepository.findAll();
		
	}
}
