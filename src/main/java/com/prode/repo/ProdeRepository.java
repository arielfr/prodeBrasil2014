package com.prode.repo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.prode.model.entities.Match;
import com.prode.model.entities.Person;
import com.prode.model.entities.Prode;

public interface ProdeRepository extends JpaRepository<Prode, Long> {
	
	Prode findOne(Long id);
	
    @Query("select c from Prode c where id_match = :id_match")
	Prode findByMatch(@Param("id_match") Long match_id);
    
    @Query("select c from Prode c where id_match = :id_match and id_team = :id_team")
	Prode findByMatchAndTeam(@Param("id_match") Long match_id, @Param("id_team") Long team_id);
    
    @Query("select c from Prode c where id_person = :id_person")
	Prode findByUser(@Param("id_person") Long id_person);
}
