package com.popcorn.starch.repo;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.popcorn.starch.entity.Seat;
import com.popcorn.starch.entity.ShowTime;

import jakarta.transaction.Transactional;

@Repository
public interface SeatRepository extends JpaRepository<Seat, Integer>{
	
	@Query(nativeQuery = true, value = "Select * from seats where stid = ?1 and availability= 'booked' ")
	public List<Seat> getSeatsByUser(int theaterid );
	
	
	@Query(nativeQuery = true, value = "Select * from seats where uid = ?1 and availability= 'pending' ")
	public List<Seat> getSeatsByUserid(int id);
	
	
	@Modifying
	@Transactional
	@Query(nativeQuery = true, value = "update seats set availability='booked' where uid = ?1 and availability= 'pending' and stid=?2 ")
	public void done(int uid, int stid);
}
