package com.prode.services.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.prode.model.entities.Match;
import com.prode.model.entities.Person;
import com.prode.model.entities.Prode;
import com.prode.model.entities.Result;
import com.prode.repo.MatchRepository;
import com.prode.repo.PersonRepository;
import com.prode.repo.ProdeRepository;
import com.prode.repo.ResultRepository;
import com.prode.services.ScoreService;



@Service
public class DBScoreService implements ScoreService {

	@Resource
	PersonRepository personRepo;
	
	@Resource
	ResultRepository resultRepo;
	
	@Resource
	MatchRepository matchRepo;
	
	@Resource
	ProdeRepository prodeRepo;
	
	public void getScoresProde() {
		// for each user we need to iterate all matches result and
		// compare to prode result. We have to calculate the score 
		// of each match and add to the score of the user.
	
		int golResultA, golResultB = 0;
		int golProdeA, golProdeB = 0;
		
		// obtain all users.
		List<Person> users = personRepo.findAll();
		List<Match> matches = matchRepo.findAll();
		
		for (Person user : users) {
			int score=0;
			for (Match match : matches) {
				List<Result> userMatchResult = resultRepo.findByMatch(match.getId());
				List<Prode> userProde = prodeRepo.findByMatchAndUser(user.getId(), match.getId());
				golResultA = userMatchResult.get(0).getGol();
				golResultB = userMatchResult.get(1).getGol();
				golProdeA = userProde.get(0).getGol();
				golProdeB = userProde.get(1).getGol();
				score += this.calculaScoreByMatch(golResultA, golResultB, golProdeA, golProdeB);
			}
			// save the score for the user.
			personRepo.save(user);
		}
		
		
	
	}

	private int calculaScoreByMatch(int golResultA, int golResultB,
			int golProdeA, int golProdeB) {
		// TODO Auto-generated method stub
		return 0;
	}

}
