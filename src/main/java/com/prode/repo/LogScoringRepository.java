package com.prode.repo;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.prode.model.entities.LogScoring;

@Repository
public interface LogScoringRepository extends JpaRepository<LogScoring, Long> {

	@Query("select l from LogScoring l order by l.id desc")
    List<LogScoring> findLastLogScoring();
	
}

