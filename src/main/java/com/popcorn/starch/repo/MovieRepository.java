package com.popcorn.starch.repo;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.popcorn.starch.entity.Movie;
import com.popcorn.starch.entity.Theater;

@Repository
public interface MovieRepository extends JpaRepository<Movie, Integer> {
	
	List<Theater> showAllTheatersFromMId();
	
}

