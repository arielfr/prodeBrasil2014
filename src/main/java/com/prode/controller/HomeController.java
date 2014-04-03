package com.prode.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.prode.common.CommonModel;
import com.prode.model.entities.Group;
import com.prode.model.entities.Match;
import com.prode.services.impl.DBMatchService;
import com.prode.util.permissionsUtil;
import com.prode.util.redirectUtil;

@Controller
public class HomeController extends CommonModel{
	
	@Resource
	DBMatchService matchService;
	
	@RequestMapping(value = "/secure/index", method = RequestMethod.GET)
	public String secureHome(HttpServletRequest request, HttpServletResponse response, Map<String, Object> model) {
		putCommon(request, response, model);
		
		if( permissionsUtil.blockPage(model) ){
			return redirectUtil.redirectBlock(model);
		}
		
		return redirectUtil.redirect("secure/index", model);
	}
	
	@RequestMapping(value = "/secure/registration", method = RequestMethod.GET)
	public String secureRegistration(HttpServletRequest request, HttpServletResponse response, Map<String, Object> model) {
		putCommon(request, response, model);

		if( permissionsUtil.blockPageRegistration(model) ){
			return redirectUtil.redirectBlock(model);
		}
		
		HashMap<Group, List<Match>> matchesByGroup = matchService.getFixture();
		
		model.put("fixture", matchesByGroup);
		
		return redirectUtil.redirect("secure/registration", model);
	}
	
	@RequestMapping(value = "/domain-error", method = RequestMethod.GET)
	public String domainError(HttpServletRequest request, HttpServletResponse response, Map<String, Object> model) {
		return "domain-error";
	}
	
	@RequestMapping("/index")
    public ModelAndView homeHtml(HttpServletRequest request, HttpServletResponse response, Map<String, Object> model) {
		return new ModelAndView("redirect:/secure/index");
    }
}