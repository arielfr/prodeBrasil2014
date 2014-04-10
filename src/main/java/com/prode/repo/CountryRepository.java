package com.prode.repo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.prode.model.entities.Country;

@Repository
public interface CountryRepository extends JpaRepository<Country, Long> {
	Country findOne(Long id);
	
    @Query("select c from Country c where lower(name) = lower(:name)")
	Country findByName(@Param("name") String name);
	
}
