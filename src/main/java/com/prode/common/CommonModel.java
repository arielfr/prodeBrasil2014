package com.prode.common;

import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.scribe.up.profile.google2.Google2Profile;

import com.prode.model.entities.Country;
import com.prode.model.entities.Person;
import com.prode.repo.CountryRepository;
import com.prode.repo.PersonRepository;
import com.prode.util.ActiveUserUtil;

public class CommonModel {

	@Resource
	PersonRepository personRepo;

	@Resource
	CountryRepository countryRepo;

	public void putCommon(HttpServletRequest request, HttpServletResponse response, Map<String, Object> model){
		Google2Profile google = ActiveUserUtil.getActiveGoogleUser();
		Person person;
		Boolean blocked = false;
		Boolean register = false;
		Boolean login = false;

		//Block by domain
		if( !google.getEmail().toLowerCase().endsWith("@mercadolibre.com") ){
			blocked = true;
		}else{
			person = personRepo.findByEmail(google.getEmail());

			//Block by register or not
			if( person != null && person.isRegister() ){
				register = true;
			}

			if( person != null ){
				putOnModel(model, "personSector", person.getSector());
				putOnModel(model, "personCountry", person.getCountry());

				//Set the user timezone
				Country country = countryRepo.findOne(person.getCountry().getId());

				putOnModel(model, "personTimezone", country.getTimezone());
			}

			login = true;

			putOnModel(model, "name", google.getDisplayName());
			putOnModel(model, "email", google.getEmail());
			putOnModel(model, "profilePicture", google.getPictureUrl());
		}

		putOnModel(model, "login", login);
		putOnModel(model, "blocked", blocked);
		putOnModel(model, "register", register);
	}

	public void putOnModel(Map<String, Object> model, String key, Object element){
		model.put(key, element);
	}
}
