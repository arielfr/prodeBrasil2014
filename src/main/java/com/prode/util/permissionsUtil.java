package com.prode.util;

import java.util.Map;

import org.springframework.security.core.context.SecurityContextHolder;

public class permissionsUtil {
	public static boolean blockPage(Map<String, Object> model){
		Boolean blocked = (Boolean) model.get("blocked");
		Boolean register = (Boolean) model.get("register");
		
		if( blocked || !register ){
			return true;
		}
		
		return false;
	}
	
	public static boolean blockPageRegistration(Map<String, Object> model){
		Boolean blocked = (Boolean) model.get("blocked");
		
		if( blocked ){
			return true;
		}
		
		return false;
	}
}