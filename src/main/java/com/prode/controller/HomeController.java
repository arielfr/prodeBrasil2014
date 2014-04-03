package com.prode.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.prode.common.CommonModel;
import com.prode.model.entities.Group;
import com.prode.model.entities.Match;
import com.prode.repo.GroupRepository;
import com.prode.repo.MatchRepository;
import com.prode.util.redirectUtil;

@Controller
public class HomeController extends CommonModel{
	
	@Resource
	MatchRepository matchRepo;
	
	@Resource
	GroupRepository groupRepo;
	
	@RequestMapping(value = "/secure/index", method = RequestMethod.GET)
	public String secureHome(HttpServletRequest request, HttpServletResponse response, Map<String, Object> model) {
		putCommon(request, response, model);
		
		return redirectUtil.redirect("secure/index", model);
	}
	
	@RequestMapping(value = "/secure/registration", method = RequestMethod.GET)
	public String secureRegistration(HttpServletRequest request, HttpServletResponse response, Map<String, Object> model) {
		putCommon(request, response, model);
		
		HashMap<Group, List<Match>> matchesByGroup = null;
		
		List<Group> allGroups = groupRepo.findAll(sortById());
		
		for(Group group : allGroups){
			List<Match> groupMatches = matchRepo.findByGroup(group.getId());
			
			if(!(groupMatches != null)){
				matchesByGroup.put(group, groupMatches);
			}
		}
		
		return redirectUtil.redirect("secure/registration", model);
	}
	
	private Sort sortById() {
        return new Sort(Sort.Direction.ASC, "id");
    }
	
	@RequestMapping("/index")
    public ModelAndView homeHtml(HttpServletRequest request, HttpServletResponse response, Map<String, Object> model) {
		return new ModelAndView("redirect:/secure/index");
    }
}