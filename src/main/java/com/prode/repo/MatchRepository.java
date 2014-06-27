package com.prode.repo;

import java.sql.Date;
import java.util.List;

import org.joda.time.LocalDateTime;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.prode.model.entities.Match;
import com.prode.model.entities.Team;

public interface MatchRepository extends JpaRepository<Match, Long> {

	Match findOne(Long id);
	
    @Query("select m from Match m where lower(teamA) = lower(:teamA) and lower(teamB) = lower(:teamB)")
    List<Match> findByMatchTeams(@Param("teamA") Team teamA, @Param("teamB") Team teamB);
	
    @Query("select m from Match m where dateMatch = :dateMatch")
    List<Match> findByMatchDate(@Param("dateMatch") Date date);
    
    @Query("select m from Match m where id_group = :group order by date_match")
    List<Match> findByGroup(@Param("group") Long groupId);
    
    @Query("select m from Match m where id_group = :group and dateMatch > :dateMatch order by date_match")
    List<Match> findByGroupAndDate(@Param("group") Long groupId, @Param("dateMatch") LocalDateTime date);
}
