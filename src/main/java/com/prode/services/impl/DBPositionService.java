package com.prode.services.impl;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.stereotype.Service;

import com.prode.dto.PersonPositionDTO;
import com.prode.model.entities.Person;
import com.prode.repo.PersonRepository;
import com.prode.services.PositionService;

@Service
public class DBPositionService implements PositionService {

	@Resource
	PersonRepository personRepository;
	
	PageRequest firstSixByScore = new PageRequest(0, 6, Direction.DESC, "score");
	
	public List<PersonPositionDTO> getGlobalPositions(){
		//Get all the persons with their score
		List<Person> positions = personRepository.findAll(sortByScore());
		
		//Generate the position DTO with all the current persons
		List<PersonPositionDTO> globalPositions = generatePositions(positions);
		
		return globalPositions;
	}
	
	public List<PersonPositionDTO> getPodium(){
		Page<Person> personPage = personRepository.findAll(firstSixByScore);
		List<PersonPositionDTO> podium = generatePositions(personPage.getContent());
		
		return podium;
	}
	
	public List<PersonPositionDTO> generatePositions(List<Person> positions){
		List<PersonPositionDTO> globalPositions = new ArrayList<PersonPositionDTO>();
		int position = 1;
		int lastScore = 0;
		
		for(Person person : positions){
			PersonPositionDTO personPos = new PersonPositionDTO();
			
			personPos.setPerson(person);
			
			globalPositions.add(personPos);
			
			if( person.getScore() == lastScore ){
				position = position - 1;
			}
			
			personPos.setPosition(position);
			
			lastScore = person.getScore().intValue();
			position = position + 1;
		}
		
		return globalPositions;
	}
	
	public Sort sortByScore() {
        return new Sort(Sort.Direction.DESC, "score");
    }
}