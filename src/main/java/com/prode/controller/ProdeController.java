package com.prode.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.scribe.up.profile.google2.Google2Profile;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.AbstractController;

import com.prode.dto.UISaveFixtureDTO;
import com.prode.model.entities.Match;
import com.prode.model.entities.Person;
import com.prode.model.entities.Prode;
import com.prode.model.entities.Team;
import com.prode.repo.CountryRepository;
import com.prode.repo.MatchRepository;
import com.prode.repo.PersonRepository;
import com.prode.repo.ProdeRepository;
import com.prode.repo.SectorRepository;
import com.prode.repo.TeamRepository;
import com.prode.util.ActiveUserUtil;

@Controller
@RequestMapping(value = "/prode", produces = "application/json")
public class ProdeController extends AbstractController {
	
	@Resource
	PersonRepository personRepo;
	
	@Resource
	ProdeRepository prodeRepo;
	
	@Resource
	TeamRepository teamRepo;
	
	@Resource
	MatchRepository matchRepo;
	
	@Resource
	CountryRepository countryRepo;
	
	@Resource
	SectorRepository sectorRepo;

	@Override
	protected ModelAndView handleRequestInternal(HttpServletRequest arg0, HttpServletResponse arg1) throws Exception {
		return null;
	}

    @RequestMapping(value = "/save/{country}/{sector}", method = RequestMethod.POST, produces="application/json")
    @ResponseBody
    public void saveProde(@PathVariable("country") Long country, @PathVariable("sector") Long sector, @RequestBody List<UISaveFixtureDTO> fixtureDTO) {
    	Google2Profile google = ActiveUserUtil.getActiveGoogleUser();
    	
    	Person person = savePerson(google, false, country, sector);
    	
    	persistMatches(fixtureDTO, person);
    }
    
    @RequestMapping(value = "/submit/{country}/{sector}", method = RequestMethod.POST, produces="application/json")
    @ResponseBody
    public void submitProde(@PathVariable("country") Long country, @PathVariable("sector") Long sector, @RequestBody List<UISaveFixtureDTO> fixtureDTO) {
    	Google2Profile google = ActiveUserUtil.getActiveGoogleUser();
    	
    	Person person = savePerson(google, true, country, sector);
    	
    	persistMatches(fixtureDTO, person);
    }
    
    public Person savePerson(Google2Profile google, boolean submit, Long country, Long sector){
    	Person person = personRepo.findByEmail(google.getEmail());
    	
    	if( person == null ){
    		person = new Person();
    		
    		person.setName(google.getDisplayName());
    		person.setEmail(google.getEmail());
    		person.setScore(new Long(0));
    	}
    	
    	person.setCountry(countryRepo.findOne(country));
    	person.setSector(sectorRepo.findOne(sector));
    	person.setPhoto(google.getPictureUrl());
    	person.setRegister(submit);
		person.setSaved(true);
    	
    	return personRepo.save(person);
    }
    
    public void persistMatches(List<UISaveFixtureDTO> fixtureDTO, Person person){
    	for(UISaveFixtureDTO groups : fixtureDTO){
    		Prode prodeA = (Prode) prodeRepo.findByMatchAndTeamAndPerson(groups.getMatchId(), groups.getTeamAId(), person.getId());
    		Prode prodeB = (Prode) prodeRepo.findByMatchAndTeamAndPerson(groups.getMatchId(), groups.getTeamBId(), person.getId());
    		
    		//Save only if you complete the value in the UI
    		if( !(groups.getTeamA_Result() == -1 || groups.getTeamB_Result() == -1) ){
	    		if( prodeA == null || prodeB == null ){
	    			prodeA = new Prode();
	    			prodeB = new Prode();
	    			
	    			Team teamA = teamRepo.findOne(groups.getTeamAId());
	    			Team teamB = teamRepo.findOne(groups.getTeamBId());
	    			
	    			Match match = matchRepo.findOne(groups.getMatchId());
	    			
	    			prodeA.setUser(person);
	    			prodeB.setUser(person);
	    			
	    			prodeA.setTeam(teamA);
	    			prodeB.setTeam(teamB);
	    			
	    			prodeA.setMatch(match);
	    			prodeB.setMatch(match);
	    		}
	    		
	    		prodeA.setGol(groups.getTeamA_Result());
	    		prodeB.setGol(groups.getTeamB_Result());
	    		
	    		prodeRepo.save(prodeA);
	    		prodeRepo.save(prodeB);
    		}
    	}
    }
}
