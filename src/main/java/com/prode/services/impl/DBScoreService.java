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
	
		Integer golResultA, golResultB = 0;
		Integer golProdeA, golProdeB = 0;
		
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
				score += this.calculateScoreByMatch(golResultA, golResultB, golProdeA, golProdeB);
			}
			// save the score for the user.
			user.setScore(new Long(score));
			personRepo.save(user);
		}
		
		
	
	}

	/*
	 * Los puntos serán calculados en base al siguiente
	   criterio: 
	   1. Si acertás ELV y los goles convertidos: 5 puntos
	   Ejemplo: Pronostico del partido 2-1 Resultado Real: 2-1 
	   2. Si acertás ELV y la cantidad de goles de sólo 1 selección: 3 puntos 
	   Ejemplo: Pronostico del partido 5-1 Resultado Real 5-4
	   3. Si acertás ELV y ninguno de los goles de cada selección: 2
	   puntos 
	   Ejemplo: Pronostico del partido 4-3 Resultado Real: 1-0
	   4. Si acertás cantidad de goles de 1 equipo nada más: 1 punto
	   Ejemplo: Pronostico del partido 1-0 Resultado Real: 0-0 5.
	   5. Si no acertás nada: 0 puntos 
	   Ejemplo: Pronostico del partido 0-1 Resultado Real: 2-2
	 */
	
	private Boolean calculatePronostic(Integer golResultA, Integer golResultB, Integer golProdeA, Integer golProdeB) {
		Boolean pronostic = Boolean.FALSE;
		
		if (golProdeA.compareTo(golProdeB) > 0 && golResultA.compareTo(golResultB) > 0
				|| golProdeA.compareTo(golProdeB) < 0 && golResultA.compareTo(golResultB) < 0
					|| golProdeA.compareTo(golProdeB) == 0 && golResultA.compareTo(golResultB) == 0) {
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
