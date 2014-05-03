package com.prode.repo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.prode.model.entities.LogScoring;

@Repository
public interface LogScoringRepository extends JpaRepository<LogScoring, Long> {

}

