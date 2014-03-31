package com.sample.repo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.sample.model.entities.Person;

@Repository
public interface PersonRepository extends JpaRepository<Person, Long>{
	Person findOne(Long id);
	
    @Query("select p from Person p where lower(email) = lower(:email)")
	Person findByEmail(@Param("email") String email);
}
