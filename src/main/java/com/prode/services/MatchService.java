package com.prode.services;

import java.util.HashMap;
import java.util.List;

import com.prode.model.entities.Match;

public interface MatchService {
	public HashMap<Long, List<Match>> getFixture(boolean withResults);
}
