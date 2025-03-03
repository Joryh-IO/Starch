package com.popcorn.starch.REST;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.popcorn.starch.entity.Seat;
import com.popcorn.starch.service.SeatService;

@RestController
@RequestMapping("/popcorn/api/seatsapi")
public class SeatsApi {
	
	@Autowired
	SeatService seatService;
	
	@PostMapping("/postSeat")
	public ResponseEntity<String> saving(@RequestBody Seat a) {
		seatService.saveSeat(a);
		return ResponseEntity.ok("Yay successfully posted!");
	}
	
	@GetMapping("/seatsbystid")
	public List<Seat> retrieve(@RequestParam int id) {
		return seatService.getseats(id);
	}
	
	@GetMapping("/seatsbyukserid")
	public List<Seat> seatsByUserId(@RequestParam int id) {
		return seatService.getseatsbyuserid(id);
	}
	
	@GetMapping("/done")
	public ResponseEntity<String> done(@RequestParam int uid, @RequestParam int stid){
		seatService.done(uid, stid);
		return ResponseEntity.ok("Yay seats are booked!");
	}
	
	
}

