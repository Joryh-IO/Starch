package com.popcorn.starch.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.popcorn.starch.entity.Theater;
import com.popcorn.starch.repo.TheaterRepository;

@Service
public class TheaterService {
	
	@Autowired
	TheaterRepository theaterRepository;
	
	public List<Theater> showAll(){
		return theaterRepository.findAll();
	}
	
}
