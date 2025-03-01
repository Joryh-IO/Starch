package com.popcorn.starch.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.popcorn.starch.entity.Movie;
import com.popcorn.starch.repo.MovieRepository;

@Service
public class MovieService {
	
	@Autowired
	MovieRepository movieRepository;
	
	public List<Movie> getAllMovies(){
		System.out.println(movieRepository.findAll());
		return movieRepository.findAll();
		
	}
	
	public Optional<Movie> movieById(int id){
		return movieRepository.findById(id);
	}
}
