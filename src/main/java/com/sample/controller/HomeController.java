package com.sample.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.scribe.up.profile.google2.Google2Profile;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.github.leleuj.ss.oauth.client.authentication.OAuthAuthenticationToken;
import com.sample.common.CommonModel;
import com.sample.util.redirectUtil;

@Controller
public class HomeController extends CommonModel{
	
	@RequestMapping(value = "/secure/index", method = RequestMethod.GET)
	public String secureHome(HttpServletRequest request, HttpServletResponse response, Map<String, Object> model) {
		putCommon(request, response, model);
		
		return redirectUtil.redirect("secure/index", model);
	}
	
	@RequestMapping(value = "/secure/registration", method = RequestMethod.GET)
	public String secureRegistration(HttpServletRequest request, HttpServletResponse response, Map<String, Object> model) {
		putCommon(request, response, model);
		
		return redirectUtil.redirect("secure/registration", model);
	}
	
	@RequestMapping(value = "/secure/profile", method = RequestMethod.GET)
	public String secureProfile(HttpServletRequest request, HttpServletResponse response, Map<String, Object> model) {
		putCommon(request, response, model);
		
		return redirectUtil.redirect("secure/profile", model);
	}
	
	@RequestMapping("/index")
    public ModelAndView homeHtml(HttpServletRequest request, HttpServletResponse response, Map<String, Object> model) {
		return new ModelAndView("redirect:/secure/index");
    }
}