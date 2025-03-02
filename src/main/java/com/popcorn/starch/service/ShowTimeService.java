package com.popcorn.starch.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.popcorn.starch.entity.ShowTime;
import com.popcorn.starch.repo.ShowTimeRepository;

@Service
public class ShowTimeService {
	
	@Autowired
	ShowTimeRepository showTimeRepository;
	
	public List<ShowTime> showAll(){
		return showTimeRepository.findAll();
	}
	
	public List<ShowTime> getSTByMovieId(int movieid){
		return showTimeRepository.getShowTimeByMovieId(movieid) ;
	}
	
	public Optional<ShowTime> getfromId(int id) {
		return showTimeRepository.findById(id);
	}
}
