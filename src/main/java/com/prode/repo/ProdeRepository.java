package com.prode.repo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.prode.model.entities.Match;
import com.prode.model.entities.Person;
import com.prode.model.entities.Prode;

public interface ProdeRepository extends JpaRepository<Prode, Long> {
	
	Prode findOne(Long id);
	
    @Query("select c from Prode c where lower(match) = lower(:match)")
	Prode findByMatch(@Param("match") Match match);
    
    @Query("select c from Prode c where lower(user) = lower(:user)")
	Prode findByUser(@Param("user") Person person);
}
