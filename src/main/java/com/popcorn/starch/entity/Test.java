package com.popcorn.starch.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="test_table")
public class Test {
   	@Id
	@Column(name="test_id")
	private int id;
	@Column(name="test_name")
	private String name;
}
