package com.popcorn.starch.repo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.popcorn.starch.entity.Theater;

@Repository
public interface TheaterRepository extends JpaRepository<Theater, Integer> {

}
