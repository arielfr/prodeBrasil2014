package com.prode.repo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.prode.model.entities.Team;

public interface TeamRepository extends JpaRepository<Team, Long> {

	Team findOne(Long id);
	
    @Query("select t from Team t where lower(name) = lower(:name)")
	Team findByName(@Param("name") String name);
	
}
