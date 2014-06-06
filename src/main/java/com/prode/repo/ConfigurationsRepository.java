package com.prode.repo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.prode.model.entities.Configurations;
import com.prode.model.entities.Person;

@Repository
public interface ConfigurationsRepository extends JpaRepository<Person, Long>{
    @Query("select c from Configurations c where lower(key) = lower(:key)")
	Configurations findByKey(@Param("key") String key);
}