package com.popcorn.starch.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.popcorn.starch.entity.Seat;
import com.popcorn.starch.repo.SeatRepository;

@Service
public class SeatService {
	
	@Autowired
	SeatRepository seatRepository;
	
	
	public void saveSeat(Seat a) {
		seatRepository.save(a);
	}
	
	public List<Seat> getseats(int id) {
		return seatRepository.getSeatsByUser(id);
	}
	
	public List<Seat> getseatsbyuserid(int id){
		return seatRepository.getSeatsByUserid(id);
	}
	
	public void done(int uid, int stid) {
		seatRepository.done(uid, stid);
	}
}

