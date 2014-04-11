package com.prode.services.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import com.prode.model.entities.Country;
import com.prode.repo.CountryRepository;
import com.prode.services.CountryService;

@Service
public class DBCountryService implements CountryService {

	@Resource
	CountryRepository countryRepository;
	
	public List<Country> getCountries(){
		List<Country> countries = countryRepository.findAll(sortByName());
		
		return countries;
	}
	
	public Sort sortByName() {
        return new Sort(Sort.Direction.ASC, "name");
    }
}