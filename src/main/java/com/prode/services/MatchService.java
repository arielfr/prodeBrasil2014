package com.prode.services;

import java.util.HashMap;
import java.util.List;

import org.joda.time.LocalDateTime;

import com.prode.model.entities.Match;

public interface MatchService {
	public HashMap<Long, List<Match>> getFixture(boolean withResults, LocalDateTime date);
}
