package com.prode.common;

import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.scribe.up.profile.google2.Google2Profile;

import com.prode.model.entities.Person;
import com.prode.repo.PersonRepository;
import com.prode.util.ActiveUserUtil;

public class CommonModel {
	
	@Resource
	PersonRepository personRepo;
	
	public void putCommon(HttpServletRequest request, HttpServletResponse response, Map<String, Object> model){
		Google2Profile google = ActiveUserUtil.getActiveGoogleUser();
		Person person;
		Boolean blocked = false;
		Boolean register = false;
		Boolean login = false;
		
		//Block by domain
		if( !google.getEmail().toLowerCase().endsWith("@openenglish.com") ){
			blocked = true;
		}else{
			person = personRepo.findByEmail(google.getEmail());
			
			//Block by register or not
			if( person != null && person.isRegister() ){
				register = true;
			}
			
			login = true;
			
			model.put("name", google.getDisplayName());
			model.put("email", google.getEmail());
			model.put("profilePicture", google.getPictureUrl());
		}
		
		model.put("login", login);
		model.put("blocked", blocked);
		model.put("register", register);
	}
}