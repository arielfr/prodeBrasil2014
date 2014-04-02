package com.prode.repo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.prode.model.entities.City;

@Repository
public interface CityRepository extends JpaRepository<City, Long> {
	City findOne(Long id);
	
    @Query("select c from City c where lower(name) = lower(:name)")
	City findByName(@Param("name") String name);
	
}
