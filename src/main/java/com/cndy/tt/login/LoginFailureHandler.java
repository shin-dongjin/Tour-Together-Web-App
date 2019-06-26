package com.cndy.tt.login;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.web.authentication.AuthenticationFailureHandler;

public class LoginFailureHandler implements AuthenticationFailureHandler {

	@Override
	public void onAuthenticationFailure(HttpServletRequest request, HttpServletResponse response,
			AuthenticationException exception) throws IOException, ServletException {
		
		if(exception instanceof UsernameNotFoundException){
			response.sendRedirect(request.getContextPath() + "/login/login.do?error");
		}
		
		if(exception instanceof BadCredentialsException){
			response.sendRedirect(request.getContextPath() + "/login/login.do?error");
		}
		
		if(exception instanceof RuntimeException){
			response.sendRedirect(request.getContextPath() + "/login/login.do?error");
		}
	}
}
