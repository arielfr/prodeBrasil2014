package com.prode.util;

import java.util.Map;

import org.scribe.up.profile.google2.Google2Profile;
import org.springframework.security.core.context.SecurityContextHolder;

import com.github.leleuj.ss.oauth.client.authentication.OAuthAuthenticationToken;

public class ActiveUserUtil {
	public static Google2Profile getActiveGoogleUser(){
		OAuthAuthenticationToken token = (OAuthAuthenticationToken) SecurityContextHolder.getContext().getAuthentication();
		Google2Profile google = (Google2Profile) token.getUserProfile();
		
		return google;
	}
}
