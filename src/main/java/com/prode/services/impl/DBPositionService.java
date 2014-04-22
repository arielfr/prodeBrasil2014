package com.prode.services.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.stereotype.Service;

import com.prode.dto.PersonPositionDTO;
import com.prode.model.entities.Country;
import com.prode.model.entities.Person;
import com.prode.model.entities.Sector;
import com.prode.repo.PersonRepository;
import com.prode.services.PositionService;

@Service
public class DBPositionService implements PositionService {

	@Resource
	DBCountryService countryService;
	
	@Resource
	DBSectorService sectorService;
	
	@Resource
	PersonRepository personRepository;
	
	PageRequest firstSixByScore = new PageRequest(0, 6, Direction.DESC, "score");
	
	public List<PersonPositionDTO> getGlobalPositions(){
		//Get all the persons with their score
		List<Person> positions = personRepository.findAll(sortByScore());
		
		//Generate the position DTO with all the current persons
		return generatePositions(positions);
	}
	
	public HashMap<Long, List<PersonPositionDTO>> getCountryPositions(){
		//Get all the persons with their score
		List<Person> positions = personRepository.findAll(sortByScore());
		
		HashMap<Long, List<PersonPositionDTO>> countryPositions = new HashMap<Long, List<PersonPositionDTO>>(); 
		List<Country> countries = countryService.getCountries();
		
		for(Country country : countries){
			List<Person> personOnCountry = new ArrayList<Person>();
			
			for(Person person : positions){
				if( person.getCountry().getId() == country.getId() ){
					personOnCountry.add(person);
				}
			}
			
			if( !personOnCountry.isEmpty() ){
				countryPositions.put(country.getId(), generatePositions(personOnCountry));
			}
		}
		
		//Generate the position DTO with all the current persons
		return countryPositions;
	}
	
	public HashMap<Long, List<PersonPositionDTO>> getSectorPositions(){
		//Get all the persons with their score
		List<Person> positions = personRepository.findAll(sortByScore());
		
		HashMap<Long, List<PersonPositionDTO>> sectorPositions = new HashMap<Long, List<PersonPositionDTO>>(); 
		List<Sector> sectors = sectorService.getSectors();
		
		for(Sector sector : sectors){
			List<Person> personOnSector = new ArrayList<Person>();
			
			for(Person person : positions){
				if( person.getSector().getId() == sector.getId() ){
					personOnSector.add(person);
				}
			}
			
			if( !personOnSector.isEmpty() ){
				sectorPositions.put(sector.getId(), generatePositions(personOnSector));
			}
		}
		
		//Generate the position DTO with all the current persons
		return sectorPositions;
	}
	
	public List<PersonPositionDTO> getPodium(){
		Page<Person> personPage = personRepository.findAll(firstSixByScore);
		List<PersonPositionDTO> podium = generatePositions(personPage.getContent());
		
		//If the WC not started yet
		if( podium.get(0).getPerson().getScore() == 0 ){
			return null;
		}else{
			return podium;
		}
	}
	
	public List<PersonPositionDTO> generatePositions(List<Person> positions){
		List<PersonPositionDTO> globalPositions = new ArrayList<PersonPositionDTO>();
		int position = 1;
		int lastScore = -1;
		
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