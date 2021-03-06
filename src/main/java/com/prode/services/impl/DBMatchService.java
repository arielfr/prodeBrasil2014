package com.prode.services.impl;

import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;

import org.joda.time.LocalDateTime;
import org.scribe.up.profile.google2.Google2Profile;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import com.prode.model.entities.Group;
import com.prode.model.entities.Match;
import com.prode.model.entities.Person;
import com.prode.model.entities.Prode;
import com.prode.model.entities.Result;
import com.prode.repo.GroupRepository;
import com.prode.repo.MatchRepository;
import com.prode.repo.PersonRepository;
import com.prode.repo.ProdeRepository;
import com.prode.repo.ResultRepository;
import com.prode.services.MatchService;
import com.prode.util.ActiveUserUtil;

@Service
public class DBMatchService implements MatchService {

	@Resource
	MatchRepository matchRepo;
	
	@Resource
	GroupRepository groupRepo;
	
	@Resource
	ProdeRepository prodeRepo;
	
	@Resource
	ResultRepository resultRepo;
	
	@Resource
	PersonRepository personRepo;
	
	public HashMap<Long, List<Match>> getFixture(boolean withResults, LocalDateTime date){
    	Google2Profile google = ActiveUserUtil.getActiveGoogleUser();
    	Person person = personRepo.findByEmail(google.getEmail());
    	
		HashMap<Long, List<Match>> fixture = new HashMap<Long, List<Match>>();
		
		List<Group> allGroups = groupRepo.findAll(sortById());
		
		for(Group group : allGroups){
			List<Match> groupMatches;
			
			if(date != null){
				groupMatches = matchRepo.findByGroupAndDate(group.getId(), date);
			}else{
				groupMatches = matchRepo.findByGroup(group.getId());
			}
			
			
			if( !groupMatches.isEmpty() ){
				for(Match match : groupMatches){
					if( person != null ){
						if(person.isSaved()){
							List<Prode> prode = prodeRepo.findByMatchAndUser(person.getId(), match.getId());
							List<Result> result = null;
							
							if( withResults ){
								result = resultRepo.findByMatch(match.getId());
							}
							
							if( !prode.isEmpty() ){
								match.setProde(prode);
							}
							
							if(  result != null ){
								if( !result.isEmpty() ){
									match.setResult(result);
								}
							}
						}
					}
				}
				
				fixture.put(group.getId(), groupMatches);
			}
		}
		
		return fixture;
	}
	
	public HashMap<Long, List<Match>> getResults(){
    	Google2Profile google = ActiveUserUtil.getActiveGoogleUser();
    	Person person = personRepo.findByEmail(google.getEmail());
    	
		HashMap<Long, List<Match>> fixture = new HashMap<Long, List<Match>>();
		
		List<Group> allGroups = groupRepo.findAll(sortById());
		
		for(Group group : allGroups){
			List<Match> groupMatches = matchRepo.findByGroup(group.getId());
			
			if( !groupMatches.isEmpty() ){
				for(Match match : groupMatches){
					if( person != null ){
						if(person.isSaved()){
							List<Result> result = resultRepo.findByMatch(match.getId());

							if( !result.isEmpty() ){
								match.setResult(result);
							}
						}
					}
				}
				
				fixture.put(group.getId(), groupMatches);
			}
		}
		
		return fixture;
	}
	
	private Sort sortById() {
        return new Sort(Sort.Direction.ASC, "id");
    }
}