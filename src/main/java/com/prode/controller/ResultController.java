package com.prode.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.AbstractController;

import com.prode.dto.UISaveFixtureDTO;
import com.prode.model.entities.Match;
import com.prode.model.entities.Result;
import com.prode.model.entities.Team;
import com.prode.repo.MatchRepository;
import com.prode.repo.PersonRepository;
import com.prode.repo.ResultRepository;
import com.prode.repo.TeamRepository;
import com.prode.services.impl.DBScoreService;

@Controller
@RequestMapping(value = "/result", produces = "application/json")
public class ResultController extends AbstractController {

	@Resource
	PersonRepository personRepo;

	@Resource
	ResultRepository resultRepo;

	@Resource
	TeamRepository teamRepo;

	@Resource
	MatchRepository matchRepo;

	@Resource
	DBScoreService scoreService;

	@Override
	protected ModelAndView handleRequestInternal(HttpServletRequest arg0, HttpServletResponse arg1) throws Exception {
		return null;
	}

    @RequestMapping(value = "/submit", method = RequestMethod.POST, produces="application/json")
    @ResponseBody
    public void submitResults(@RequestBody List<UISaveFixtureDTO> fixtureDTO) {
    	persistResults(fixtureDTO);
    }

    public void persistResults(List<UISaveFixtureDTO> fixtureDTO){
    	for(UISaveFixtureDTO groups : fixtureDTO){
    		Result resultA = resultRepo.findByMatchAndTeam(groups.getMatchId(), groups.getTeamAId());
    		Result resultB = resultRepo.findByMatchAndTeam(groups.getMatchId(), groups.getTeamBId());

    		//Save only if you complete the value in the UI
    		if( !(groups.getTeamA_Result() == -1 || groups.getTeamB_Result() == -1) ){
	    		if( resultA == null || resultB == null ){
	    			resultA = new Result();
	    			resultB = new Result();

	    			Team teamA = teamRepo.findOne(groups.getTeamAId());
	    			Team teamB = teamRepo.findOne(groups.getTeamBId());

	    			Match match = matchRepo.findOne(groups.getMatchId());

	    			resultA.setTeam(teamA);
	    			resultB.setTeam(teamB);

	    			resultA.setMatch(match);
	    			resultB.setMatch(match);
	    		}

	    		resultA.setGol(groups.getTeamA_Result());
	    		resultB.setGol(groups.getTeamB_Result());

	    		resultRepo.save(resultA);
	    		resultRepo.save(resultB);
    		}
    	}
    }
}
