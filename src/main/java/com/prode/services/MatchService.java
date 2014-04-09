package com.prode.services;

import java.util.HashMap;
import java.util.List;

import com.prode.model.entities.Group;
import com.prode.model.entities.Match;
import com.prode.model.entities.Prode;

public interface MatchService {
	public HashMap<Long, List<Match>> getFixture(boolean withResults);
}
