package com.prode.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.prode.common.CommonModel;
import com.prode.model.entities.Country;
import com.prode.model.entities.Match;
import com.prode.model.entities.Person;
import com.prode.model.entities.Sector;
import com.prode.repo.CountryRepository;
import com.prode.repo.PersonRepository;
import com.prode.repo.SectorRepository;
import com.prode.services.impl.DBMatchService;
import com.prode.util.PermissionsUtil;
import com.prode.util.RedirectUtil;

@Controller
public class HomeController extends CommonModel{
	
	@Resource
	DBMatchService matchService;

	@Resource
	CountryRepository countryRepository;
	
	@Resource
	SectorRepository sectorRepository;
	
	@Resource
	PersonRepository personRepository;
	
	@RequestMapping(value = "/secure/index", method = RequestMethod.GET)
	public String secureHome(HttpServletRequest request, HttpServletResponse response, Map<String, Object> model) {
		putCommon(request, response, model);
		
		if( PermissionsUtil.blockPage(model) ){
			return RedirectUtil.redirectBlock(model);
		}
		
		HashMap<Long, List<Match>> matchesByGroup = matchService.getFixture(true);
		
		Page<Person> personPage = personRepository.findAll(firstSixByScore);
		List<Person> podium = personPage.getContent();
		
		model.put("fixture", matchesByGroup);
		model.put("podium", podium);
		
		return "secure/index";
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
		
		HashMap<Long, List<Match>> matchesByGroup = matchService.getFixture(false);
		List<Country> countries = countryRepository.findAll(sortByName());
		List<Sector> sectors = sectorRepository.findAll(sortByName());
		
		model.put("fixture", matchesByGroup);
		model.put("countries", countries);
		model.put("sectors", sectors);
		
		return "secure/registration";
	}
	
	@RequestMapping(value = "/domain-error", method = RequestMethod.GET)
	public String domainError(HttpServletRequest request, HttpServletResponse response, Map<String, Object> model) {
		//This will logout automatically
		SecurityContextHolder.getContext().setAuthentication(null);
		
		return "domain-error";
	}
	
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpServletRequest request, HttpServletResponse response, Map<String, Object> model) {
		return "logout";
	}
	
	@RequestMapping("/index")
    public String homeHtml(HttpServletRequest request, HttpServletResponse response, Map<String, Object> model) {
		return "redirect:/secure/index";
    }
	
	@RequestMapping(value="/secure/faq", method = RequestMethod.GET)
	public String faq(HttpServletRequest request, HttpServletResponse response, Map<String, Object> model) {
		putCommon(request, response, model);

		if( PermissionsUtil.blockPage(model) ){
			return RedirectUtil.redirectBlock(model);
		}


		return "faq";
	}
	
	private Sort sortByName() {
        return new Sort(Sort.Direction.ASC, "name");
    }

	final PageRequest firstSixByScore = new PageRequest(
			0, 6, Direction.DESC, "score"
	);
}