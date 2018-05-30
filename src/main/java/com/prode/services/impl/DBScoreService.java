package com.prode.services.impl;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

import javax.annotation.Resource;

import org.joda.time.LocalDateTime;
import org.springframework.stereotype.Service;

import com.prode.dto.PersonPositionDTO;
import com.prode.model.entities.LogScoring;
import com.prode.model.entities.Match;
import com.prode.model.entities.Person;
import com.prode.model.entities.Prode;
import com.prode.model.entities.Result;
import com.prode.repo.LogScoringRepository;
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

	@Resource
	LogScoringRepository logScoringRepo;

	@Resource
	DBPositionService positionService;

	public void getScoresProde() {
		//Get all users
		List<Person> users = personRepo.findAll();
		//Get all matches
		List<Match> matches = matchRepo.findAll();

		for (Person user : users) {
			int score = getScoreFromMatches(matches, user);

			// save the score for the user.
			user.setScore(new Long(score));

			personRepo.save(user);
		}

		// Log last socring calculated
		LogScoring logScoring = new LogScoring();
		logScoring.setDateLog(LocalDateTime.now());
		logScoringRepo.save(logScoring);
	}

	public List<PersonPositionDTO> getScoresProdeWeek(String startDateParam, String endDateParam){
		//Get all users
		List<Person> users = personRepo.findAll();

		LocalDateTime startDate = LocalDateTime.parse(startDateParam + "T00:00:00");
		LocalDateTime endDate = LocalDateTime.parse(endDateParam + "T23:59:59");

		//Get all matches
		List<Match> matches = matchRepo.findByDateAndDate(startDate, endDate);

		for (Person user : users) {
			int score = getScoreFromMatches(matches, user);

			// save the score for the user.
			user.setScore(new Long(score));
		}

		Collections.sort(users, new Comparator<Person>() {
	        public int compare(Person o1, Person o2) {
	            return (int) (o2.getScore() - o1.getScore());
	        }
	    });

		return positionService.returnMePositions(users);
	}

	/**
	 * Get score from matches
	 * @param matches
	 * @param user
	 * @return
	 */
	private Integer getScoreFromMatches(List<Match> matches, Person user) {
		int score = 0;

		for (Match match : matches) {
			List<Result> matchResult = resultRepo.findByMatch(match.getId());

			//Apply calculation in the only matches that where play
			if( !matchResult.isEmpty() ){
				List<Prode> userProde = prodeRepo.findByMatchAndUser(user.getId(), match.getId());

				if( !userProde.isEmpty() ){
					List<Integer> resultsGoals = new ArrayList<Integer>();
					List<Integer> prodeGoals = new ArrayList<Integer>();

					for(Result playMatch : matchResult){
						for(Prode prode : userProde){
							if(playMatch.getTeam().getId() == prode.getTeam().getId()){
								resultsGoals.add(playMatch.getGol());
								prodeGoals.add(prode.getGol());
							}
						}
					}

					score += this.calculateScoreByMatch(resultsGoals.get(0), resultsGoals.get(1), prodeGoals.get(0), prodeGoals.get(1));
				}else{
					score += 0;
				}
			}else{
				score += 0;
			}
		}

		return score;
	}

	/*
	 * Los puntos ser�n calculados en base al siguiente
	   criterio:
	   1. Si acert�s ELV y los goles convertidos: 5 puntos
	   Ejemplo: Pronostico del partido 2-1 Resultado Real: 2-1
	   2. Si acert�s ELV y la cantidad de goles de s�lo 1 selecci�n: 3 puntos
	   Ejemplo: Pronostico del partido 5-1 Resultado Real 5-4
	   3. Si acert�s ELV y ninguno de los goles de cada selecci�n: 2
	   puntos
	   Ejemplo: Pronostico del partido 4-3 Resultado Real: 1-0
	   4. Si acert�s cantidad de goles de 1 equipo nada m�s: 1 punto
	   Ejemplo: Pronostico del partido 1-0 Resultado Real: 0-0 5.
	   5. Si no acert�s nada: 0 puntos
	   Ejemplo: Pronostico del partido 0-1 Resultado Real: 2-2
	 */

	private Boolean calculatePronostic(Integer golResultA, Integer golResultB, Integer golProdeA, Integer golProdeB) {
		Boolean pronostic = Boolean.FALSE;

		//Gana Equipo A
		if( (golResultA > golResultB) && (golProdeA > golProdeB) ){
			pronostic = Boolean.TRUE;
		}

		//Gana Equipo B
		if( (golResultB > golResultA) && (golProdeB > golProdeA) ){
			pronostic = Boolean.TRUE;
		}

		//Empate
		if( (golResultA == golResultB) && (golProdeA == golProdeB) ){
			pronostic = Boolean.TRUE;
		}

		return pronostic;
	}

	private int calculateScoreByMatch(Integer golResultA, Integer golResultB, Integer golProdeA, Integer golProdeB) {

		Boolean pronostic = this.calculatePronostic(golResultA, golResultB, golProdeA, golProdeB);

		if (pronostic == Boolean.TRUE && golResultA.compareTo(golProdeA)==0 && golResultB.compareTo(golProdeB)==0) {
			return 5;
		} else if (pronostic == Boolean.TRUE  && (golResultA.compareTo(golProdeA)==0 && golResultB.compareTo(golProdeB)!=0
				|| golResultA.compareTo(golProdeA)!=0 && golResultB.compareTo(golProdeB)==0)) {
			return 3;
		} else if (pronostic == Boolean.TRUE  && golResultA.compareTo(golProdeA)!=0 && golResultB.compareTo(golProdeB)!=0)
		{
			return 2;
		} else if (pronostic == Boolean.FALSE && (golResultA.compareTo(golProdeA)==0 || golResultB.compareTo(golProdeB)==0)) {
			return 1;
		}
		return 0;
	}

}
