package com.popcorn.starch.repo;

import org.springframework.data.jpa.repository.JpaRepository;

import com.popcorn.starch.entity.Theater;

public interface TheaterRepository extends JpaRepository<Theater, Integer> {

}
