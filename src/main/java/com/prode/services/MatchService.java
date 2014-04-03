package com.prode.services;

import java.util.HashMap;
import java.util.List;

import com.prode.model.entities.Group;
import com.prode.model.entities.Match;

public interface MatchService {
	public HashMap<Group, List<Match>> getFixture();
}
