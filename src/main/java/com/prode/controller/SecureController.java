package com.prode.controller;

import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.prode.common.CommonModel;
import com.prode.services.impl.DBCountryService;
import com.prode.services.impl.DBMatchService;
import com.prode.services.impl.DBPositionService;
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
	
	@RequestMapping(value = "/secure/index", method = RequestMethod.GET)
	public String secureHome(HttpServletRequest request, HttpServletResponse response, Map<String, Object> model) {
		putCommon(request, response, model);
		
		if( PermissionsUtil.blockPage(model) ){
			return RedirectUtil.redirectBlock(model);
		}
		
		putOnModel(model, "fixture", matchService.getFixture(true));
		putOnModel(model, "podium", positionService.getPodium());
		
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
		
		putOnModel(model, "fixture", matchService.getFixture(false));
		putOnModel(model, "countries", countryService.getCountries());
		putOnModel(model, "sectors", sectorService.getSectors());
		
		return "secure/registration";
	}
	
	@RequestMapping(value = "/secure/positions", method = RequestMethod.GET)
	public String securePositions(HttpServletRequest request, HttpServletResponse response, Map<String, Object> model) {
		putCommon(request, response, model);
		
		if( PermissionsUtil.blockPage(model) ){
			return RedirectUtil.redirectBlock(model);
		}
		
		putOnModel(model, "podium", positionService.getPodium());
		putOnModel(model, "positions", positionService.getGlobalPositions());
		putOnModel(model, "positionsByCountry", positionService.getCountryPositions());
		putOnModel(model, "positionsBySector", positionService.getSectorPositions());
		
		return "secure/positions";
	}
	
	@RequestMapping(value = "/secure/positions_country", method = RequestMethod.GET)
	public String securePositionsCountry(HttpServletRequest request, HttpServletResponse response, Map<String, Object> model) {
		putCommon(request, response, model);
		
		if( PermissionsUtil.blockPage(model) ){
			return RedirectUtil.redirectBlock(model);
		}
		
		putOnModel(model, "podium", positionService.getPodium());
		putOnModel(model, "positionsByCountry", positionService.getCountryPositions());
		
		return "secure/positions_country";
	}
	
	@RequestMapping(value = "/secure/positions_sector", method = RequestMethod.GET)
	public String securePositionsSector(HttpServletRequest request, HttpServletResponse response, Map<String, Object> model) {
		putCommon(request, response, model);
		
		if( PermissionsUtil.blockPage(model) ){
			return RedirectUtil.redirectBlock(model);
		}
		
		putOnModel(model, "podium", positionService.getPodium());
		putOnModel(model, "positionsBySector", positionService.getSectorPositions());
		
		return "secure/positions_sector";
	}
	
	@RequestMapping(value="/secure/faq", method = RequestMethod.GET)
	public String faq(HttpServletRequest request, HttpServletResponse response, Map<String, Object> model) {
		putCommon(request, response, model);

		if( PermissionsUtil.blockPage(model) ){
			return RedirectUtil.redirectBlock(model);
		}


		return "faq";
	}
}