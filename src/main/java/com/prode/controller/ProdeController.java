package com.prode.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.scribe.up.profile.google2.Google2Profile;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.AbstractController;

import com.github.leleuj.ss.oauth.client.authentication.OAuthAuthenticationToken;
import com.prode.dto.UISaveFixtureDTO;
import com.prode.util.ActiveUserUtil;

@Controller
@RequestMapping(value = "/prode", produces = "application/json")
public class ProdeController extends AbstractController {

	@Override
	protected ModelAndView handleRequestInternal(HttpServletRequest arg0, HttpServletResponse arg1) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

    @RequestMapping(value = "/save/{country}/{sector}", method = RequestMethod.POST, produces="application/json")
    @ResponseBody
    public void saveProde(@PathVariable("country") String country, @PathVariable("sector") String sector, @RequestBody List<UISaveFixtureDTO> fixtureDTO) {
    	Google2Profile google = ActiveUserUtil.getActiveGoogleUser();
		
		System.out.println(google.getDisplayName());
		System.out.println(google.getEmail());
		System.out.println(google.getPictureUrl());
    	System.out.println(country);
    	System.out.println(sector);
    	
    	for(UISaveFixtureDTO groups : fixtureDTO){
    		
    	}
    }
}
