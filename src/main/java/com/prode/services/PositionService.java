package com.prode.services;

import java.util.HashMap;
import java.util.List;

import com.prode.dto.PersonPositionDTO;
import com.prode.model.entities.Person;


public interface PositionService {
	public List<PersonPositionDTO> generatePositions(List<Person> positions);
	
	public List<PersonPositionDTO> getPodium();
	
	public List<PersonPositionDTO> getGlobalPositions();
	
	public HashMap<Long, List<PersonPositionDTO>> getCountryPositions();
}
