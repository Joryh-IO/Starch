package com.popcorn.starch.repo;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.popcorn.starch.entity.ShowTime;

@Repository
public interface ShowTimeRepository extends JpaRepository<ShowTime, Integer>{
	
	@Query(nativeQuery = true, value = "Select * from showtime where mid = ?1")
	public List<ShowTime> getShowTimeByMovieId(int movieid );
}

