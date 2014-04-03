package com.prode.repo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.prode.model.entities.Fixture;

@Repository
public interface fixtureRepository extends JpaRepository<Fixture, Long>{
	
}
