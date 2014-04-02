package com.prode.repo;

import java.sql.Date;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.prode.model.entities.Match;
import com.prode.model.entities.Team;

public interface MatchRepository extends JpaRepository<Match, Long> {

	Match findOne(Long id);
	
    @Query("select m from Match m where lower(teamA) = lower(:teamA) and lower(teamB) = lower(:teamB)")
	Match findByMatchTeams(@Param("teamA") Team teamA, @Param("teamB") Team teamB);
	
    @Query("select m from Match m where dateMatch = :dateMatch")
    Match findByMatchDate(@Param("dateMatch") Date date);
   
}
