package com.prode.repo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.prode.model.entities.City;
import com.prode.model.entities.Match;
import com.prode.model.entities.Result;

public interface ResultRepository extends JpaRepository<Result, Long> {

	Result findOne(Long id);
	
    @Query("select c from Result c where lower(match) = lower(:match)")
	City findByMatch(@Param("match") Match match);
}
