package com.prode.repo;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.prode.model.entities.Sector;

@Repository
public interface SectorRepository extends JpaRepository<Sector, Long> {
	Sector findOne(Long id);
	
    @Query("select s from Sector s where lower(name) = lower(:name)")
	Sector findByName(@Param("name") String name);
	
    @Query("select s from Sector s where id_country = :country")
    List<Sector> findByCountry(@Param("country") Long countryId);
	
}
