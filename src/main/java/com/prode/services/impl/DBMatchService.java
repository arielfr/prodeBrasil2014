package com.prode.services.impl;

import java.util.HashMap;
import java.util.List;

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
	
	public HashMap<Group, List<Match>> getFixture(){
		HashMap<Group, List<Match>> matchesByGroup = new HashMap<Group, List<Match>>();
		
		List<Group> allGroups = groupRepo.findAll(sortById());
		
		for(Group group : allGroups){
			List<Match> groupMatches = matchRepo.findByGroup(group.getId());
			
			if( groupMatches != null ){
				matchesByGroup.put(group, groupMatches);
			}
		}

		return matchesByGroup;
	}
	
	private Sort sortById() {
        return new Sort(Sort.Direction.ASC, "id");
    }
}