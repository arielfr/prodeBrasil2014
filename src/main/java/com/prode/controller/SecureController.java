package com.prode.controller;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.joda.time.LocalDateTime;
import org.joda.time.format.DateTimeFormat;
import org.joda.time.format.DateTimeFormatter;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.prode.common.CommonModel;
import com.prode.model.entities.Configurations;
import com.prode.model.entities.Country;
import com.prode.model.entities.LogScoring;
import com.prode.repo.ConfigurationsRepository;
import com.prode.repo.LogScoringRepository;
import com.prode.services.impl.DBCountryService;
import com.prode.services.impl.DBMatchService;
import com.prode.services.impl.DBPositionService;
import com.prode.services.impl.DBScoreService;
import com.prode.services.impl.DBSectorService;
import com.prode.util.PermissionsUtil;
import com.prode.util.RedirectUtil;

@Controller
public class SecureController extends CommonModel{
	
	@Resource
	DBMatchService matchService;
	
	@Resource
	DBPositionService positionService;
	
	@Resource
	DBCountryService countryService;
	
	@Resource
	DBSectorService sectorService;
	
	@Resource
	DBScoreService scoreService;
	
	@Resource
	LogScoringRepository logScoringRepo;
	
	@Resource
	ConfigurationsRepository confRepo;
	
	final static DateTimeFormatter fourDigitYear = DateTimeFormat.forPattern("MM/dd/yyyy");
	
	@RequestMapping(value = "/secure/index", method = RequestMethod.GET)
	public String secureHome(HttpServletRequest request, HttpServletResponse response, Map<String, Object> model) {
		putCommon(request, response, model);
		
		LocalDateTime logDate = null;
		List<LogScoring> listLogScoring = logScoringRepo.findLastLogScoring();
		
		if (!listLogScoring.isEmpty()) {
			logDate = listLogScoring.get(0).getDateLog(); 
		}
		
		if( PermissionsUtil.blockPage(model) ){
			return RedirectUtil.redirectBlock(model);
		}
		putOnModel(model, "fixture", matchService.getFixture(true, null));
		putOnModel(model, "podium", positionService.getPodium());
		putOnModel(model, "logdate", logDate);
		putOnModel(model, "page", "index");
		
		return "secure/index";
	}
	
	@RequestMapping(value = "/secure/scoring", method = RequestMethod.GET)
	public String scoring(HttpServletRequest request, HttpServletResponse response, Map<String, Object> model) {
		putCommon(request, response, model);
		
		String email = (String) model.get("email");
		
		if( !(email.equals("ariel.rey@openenglish.com") || email.equals("maximiliano.micciullo@openenglish.com")) ){
			model.clear();
			
			return "redirect:/secure/index";
		}
		
		scoreService.getScoresProde();
		
		return "/secure/scoring";
	}
	
	@RequestMapping(value = "/secure/weeks/{startDate}/{endDate}", method = RequestMethod.GET)
	public String weeks(HttpServletRequest request, HttpServletResponse response, Map<String, Object> model,
						@PathVariable("startDate") String startDate,
						@PathVariable("endDate") String endDate) {
		putCommon(request, response, model);
		
		String email = (String) model.get("email");
		
		if( !(email.equals("ariel.rey@openenglish.com") || email.equals("maximiliano.micciullo@openenglish.com")) ){
			model.clear();
			
			return "redirect:/secure/index";
		}
		
		putOnModel(model, "positions", scoreService.getScoresProdeWeek(startDate, endDate));
		
		return "/secure/weeks";
	}
	
	@RequestMapping(value = "/secure/registration", method = RequestMethod.GET)
	public String secureRegistration(HttpServletRequest request, HttpServletResponse response, Map<String, Object> model) {
		putCommon(request, response, model);
		
		if( PermissionsUtil.blockPageRegistration(model) ){
			return RedirectUtil.redirectBlock(model);
		}
		
		boolean register = (Boolean) model.get("register");

		if(register){
			model.clear();
			
			return "redirect:/secure/index";
		}
		
		Configurations conf = confRepo.findByKey("allow_registration");
		
		if( !register && !conf.isValue() ){
			model.clear();
			
			return "redirect:/block";
		}
		
		LocalDateTime today = new LocalDateTime();
		
		putOnModel(model, "fixture", matchService.getFixture(false, today));
		putOnModel(model, "countries", countryService.getCountries());
		putOnModel(model, "sectors", sectorService.getSectors());
		putOnModel(model, "page", "registration");
		
		return "secure/registration";
	}
	
	@RequestMapping(value = "/secure/matches", method = RequestMethod.GET)
	public String secureMatches(HttpServletRequest request, HttpServletResponse response, Map<String, Object> model) {
		putCommon(request, response, model);
		
		String email = (String) model.get("email");
		
		if( !(email.equals("ariel.rey@openenglish.com") || email.equals("maximiliano.micciullo@openenglish.com")) ){
			model.clear();
			
			return "redirect:/secure/index";
		}
		
		putOnModel(model, "fixture", matchService.getResults());
		putOnModel(model, "page", "registration");
		
		return "secure/matches";
	}
	
	@RequestMapping(value = "/secure/positions", method = RequestMethod.GET)
	public String securePositions(HttpServletRequest request, HttpServletResponse response, Map<String, Object> model) {
		putCommon(request, response, model);
		
		if( PermissionsUtil.blockPage(model) ){
			return RedirectUtil.redirectBlock(model);
		}
		
		putOnModel(model, "podium", positionService.getPodium());
		putOnModel(model, "positions", positionService.getGlobalPositions());
		putOnModel(model, "page", "positions");
		
		return "secure/positions";
	}
	
	@RequestMapping(value = "/secure/positions_country", method = RequestMethod.GET)
	public String securePositionsCountry(HttpServletRequest request, HttpServletResponse response, Map<String, Object> model) {
		putCommon(request, response, model);
		
		if( PermissionsUtil.blockPage(model) ){
			return RedirectUtil.redirectBlock(model);
		}
		
		putOnModel(model, "positionsByCountry", positionService.getCountryPositions());
		putOnModel(model, "page", "positions_country");
		
		return "secure/positions_country";
	}
	
	@RequestMapping(value = "/secure/positions_sector", method = RequestMethod.GET)
	public String securePositionsSector(HttpServletRequest request, HttpServletResponse response, Map<String, Object> model) {
		putCommon(request, response, model);
		
		Country country = (Country) model.get("personCountry");
		
		if( country.getName().equals("Venezuela") ){
			model.clear();
			
			return "redirect:/secure/index";
		}
		
		if( PermissionsUtil.blockPage(model) ){
			return RedirectUtil.redirectBlock(model);
		}
		
		putOnModel(model, "positionsBySector", positionService.getSectorPositions());
		putOnModel(model, "page", "positions_sector");
		
		return "secure/positions_sector";
	}
	
	@RequestMapping(value="/secure/faq", method = RequestMethod.GET)
	public String faq(HttpServletRequest request, HttpServletResponse response, Map<String, Object> model) {
		putCommon(request, response, model);

		if( PermissionsUtil.blockPage(model) ){
			return RedirectUtil.redirectBlock(model);
		}

		putOnModel(model, "page", "faq");

		return "faq";
	}
}