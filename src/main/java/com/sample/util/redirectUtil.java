package com.sample.util;

import java.util.Map;

import org.springframework.security.core.context.SecurityContextHolder;

public class redirectUtil {
	public static String redirect(String redirect, Map<String, Object> model){
		//Force to check Google authentication all the time
		SecurityContextHolder.getContext().setAuthentication(null);
		
		Boolean blocked = (Boolean) model.get("blocked");
		Boolean register = (Boolean) model.get("register");
		
		if( blocked ){
			return "domain-error";
		}else{
			if( register ){
				return redirect;
			}else{
				return "secure/registration";
			}
		}
	}
}
