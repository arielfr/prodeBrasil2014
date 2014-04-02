package com.prode.repo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.prode.model.entities.Group;

public interface GroupRepository extends JpaRepository<Group, Long> {
	
	Group findOne(Long id);
	
    @Query("select g from Group g where lower(name) = lower(:name)")
	Group findByName(@Param("name") String name);
	
}
