package com.cndy.tt.login;

import java.util.Collection;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.GrantedAuthority;

import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.cndy.tt.member.Member;

@Service("customAuthenticationProvider")
public class CustomAuthenticationProvider implements AuthenticationProvider{
	String tag= " [ CustomAuthenticationProvider ] ";
	
	@Resource(name="customUserDetailsService")
	private CustomUserDetailsServiceImpl userService;
	
	@Autowired
	private BCryptPasswordEncoder passwordEncoder;
	
	public Authentication authenticate(Authentication authentication) throws AuthenticationException{			
		System.out.println(tag+" authentication: "+authentication);
		
		//사용자가 입력한 정보
		String username = authentication.getName();
		String password = (String)authentication.getCredentials();
		
		System.out.println(tag+" username: "+username);
		System.out.println(tag+" rawPassword: "+password);
		
		Member member = null;
		Collection<? extends GrantedAuthority> authorities = null;
		
		try {
			member = userService.loadUserByUsername(username); // DB에서의 사용자의 정보
			String encodedPassword = member.getPassword();
			System.out.println(tag+" encodedPassword: "+ encodedPassword);
			
			if(!passwordEncoder.matches(password, encodedPassword)) {
				System.out.println(tag+" 비밀번호 불일치");
				throw new BadCredentialsException("비밀번호 불일치");
			}
			
			authorities = member.getAuthorities();
			System.out.println(tag+" authorities"+authorities.toString());
			
		}catch(UsernameNotFoundException e) {
			e.printStackTrace();
			throw new UsernameNotFoundException(e.getMessage());
		}catch(BadCredentialsException e) {
			e.printStackTrace();
			throw new BadCredentialsException(e.getMessage());
		}catch(Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e.getMessage());
		}

		UsernamePasswordAuthenticationToken user =  new UsernamePasswordAuthenticationToken(username, password, authorities);		
		user.setDetails(member);
		
		return user;
	}
	
	public Authentication authenticate(String username) throws AuthenticationException{			
		//username = authentication.getName();
		//String password = (String)authentication.getCredentials();
		
		System.out.println(tag+" username: "+username);
		//System.out.println(tag+" rawPassword: "+password);
		
		Member member = null;
		String password = null;
		Collection<? extends GrantedAuthority> authorities = null;
		
		try {
			member = userService.loadUserByUsername(username); // DB�뿉�꽌�쓽 �궗�슜�옄�쓽 �젙蹂�
			password = member.getPassword();
			//String encodedPassword = member.getPassword();
			//System.out.println(tag+" encodedPassword: "+ encodedPassword);
			
			/*if(!passwordEncoder.matches(password, encodedPassword)) {
				System.out.println(tag+" 鍮꾨�踰덊샇 遺덉씪移�");
				throw new BadCredentialsException("鍮꾨�踰덊샇 遺덉씪移�");
			}*/
			
			authorities = member.getAuthorities();
			System.out.println(tag+" authorities"+authorities.toString());
			
		}catch(UsernameNotFoundException e) {
			e.printStackTrace();
			throw new UsernameNotFoundException(e.getMessage());
		}catch(BadCredentialsException e) {
			e.printStackTrace();
			throw new BadCredentialsException(e.getMessage());
		}catch(Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e.getMessage());
		}

		UsernamePasswordAuthenticationToken user =  new UsernamePasswordAuthenticationToken(username, password, authorities);		
		user.setDetails(member);
		
		return user;
	}

	@Override
	public boolean supports(Class<?> authentication) {
		// TODO Auto-generated method stub
		return true;
	}
}