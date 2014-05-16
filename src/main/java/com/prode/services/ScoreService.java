package com.prode.services;

import java.util.List;

import com.prode.dto.PersonPositionDTO;

public interface ScoreService {

	// calculate score of the user.
	public void getScoresProde();
	
	public List<PersonPositionDTO> getScoresProdeWeek(String startDate, String endDate);
}
