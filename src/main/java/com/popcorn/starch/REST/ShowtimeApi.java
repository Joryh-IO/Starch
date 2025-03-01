package com.popcorn.starch.REST;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.popcorn.starch.entity.ShowTime;
import com.popcorn.starch.service.ShowTimeService;

@RestController
@RequestMapping("/popcorn/api/showtimes")
public class ShowtimeApi {
	
	@Autowired
	ShowTimeService showTimeService;
	
	@PostMapping("/getall")
	public List<ShowTime> getall(){
		return showTimeService.showAll();
	}
	
	@RequestMapping("/getspecific")
	public List<ShowTime> getMovieShowTime(@RequestParam int id){
		System.out.println(id);
		return showTimeService.getSTByMovieId(id);
	}
}
