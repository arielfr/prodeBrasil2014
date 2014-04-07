package com.prode.util;

import java.util.Map;

import org.springframework.security.core.context.SecurityContextHolder;

public class RedirectUtil {
	public static String redirectBlock(Map<String, Object> model){
		//Force to check Google authentication all the time
		SecurityContextHolder.getContext().setAuthentication(null);
		
		Boolean blocked = (Boolean) model.get("blocked");
		Boolean register = (Boolean) model.get("register");
		
		if( blocked ){
			model.clear();
			
			return "redirect:/domain-error";
		}else{
			if(!register){
				model.clear();
				
				return "redirect:/secure/registration";
			}
		}
		
		return "";
	}
}
