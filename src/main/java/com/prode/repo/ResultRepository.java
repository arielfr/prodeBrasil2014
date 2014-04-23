package com.prode.repo;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.prode.model.entities.Result;

public interface ResultRepository extends JpaRepository<Result, Long> {

	Result findOne(Long id);
	
    @Query("select c from Result c where id_match = :id_match")
	List<Result> findByMatch(@Param("id_match") Long match);

    @Query("select c from Result c where id_match = :id_match and id_team = :id_team")
	Result findByMatchAndTeam(@Param("id_match") Long match, @Param("id_team") Long team);
}
