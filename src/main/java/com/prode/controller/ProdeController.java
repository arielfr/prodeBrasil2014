package com.prode.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.AbstractController;

import com.prode.dto.UISaveFixtureDTO;
import com.prode.model.entities.Group;

@Controller
@RequestMapping(value = "/prode", produces = "application/json")
public class ProdeController extends AbstractController {

	@Override
	protected ModelAndView handleRequestInternal(HttpServletRequest arg0, HttpServletResponse arg1) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

    @RequestMapping(value = "/save", method = RequestMethod.POST, produces="application/json")
    @ResponseBody
    public void saveProde(@RequestBody List<UISaveFixtureDTO> fixtureDTO) {
    	for(UISaveFixtureDTO groups : fixtureDTO){
    		
    	}
    }
}
