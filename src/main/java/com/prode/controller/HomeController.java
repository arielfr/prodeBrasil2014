package com.prode.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.prode.common.CommonModel;

@Controller
public class HomeController extends CommonModel{
	
	@RequestMapping("/index")
    public String homeHtml(HttpServletRequest request, HttpServletResponse response, Map<String, Object> model) {
		//Redirect to the secure index login in the application
		return "redirect:/secure/index";
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
	
	@RequestMapping(value = "/block", method = RequestMethod.GET)
	public String block(HttpServletRequest request, HttpServletResponse response, Map<String, Object> model) {
		return "block";
	}
}