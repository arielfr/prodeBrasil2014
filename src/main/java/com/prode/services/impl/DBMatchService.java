package com.prode.services.impl;

import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map.Entry;

import javax.annotation.Resource;

import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import com.prode.model.entities.Group;
import com.prode.model.entities.Match;
import com.prode.repo.GroupRepository;
import com.prode.repo.MatchRepository;
import com.prode.services.MatchService;

@Service
public class DBMatchService implements MatchService {

	@Resource
	MatchRepository matchRepo;
	
	@Resource
	GroupRepository groupRepo;
	
	public HashMap<Long, HashMap<Group, List<Match>>> getFixture(){
		HashMap<Long, HashMap<Group, List<Match>>> fixture = new HashMap<Long, HashMap<Group, List<Match>>>();
		
		List<Group> allGroups = groupRepo.findAll(sortById());
		
		for(Group group : allGroups){
			List<Match> groupMatches = matchRepo.findByGroup(group.getId());
			
			if( !groupMatches.isEmpty() ){
				HashMap<Group, List<Match>> matchs = new HashMap<Group, List<Match>>();
				matchs.put(group, groupMatches);
				fixture.put(group.getId(), matchs);
			}
		}
		
		return fixture;
	}
	
	
	private Sort sortById() {
        return new Sort(Sort.Direction.ASC, "id");
    }
}