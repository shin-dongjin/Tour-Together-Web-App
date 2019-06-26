package com.cndy.tt.login;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import org.springframework.stereotype.Service;

import com.cndy.tt.member.Member;
import com.cndy.tt.member.MemberServiceImpl;

@Service("customUserDetailsService")
public class CustomUserDetailsServiceImpl implements UserDetailsService {
	String tag = " [ UserService ] ";

	@Resource(name="memberService")
	MemberServiceImpl memberService;
	
	@Override
	public Member loadUserByUsername(String username) throws UsernameNotFoundException {
		System.out.println(tag+ " 입력한 username: "+username);
		
		Member member = memberService.profileContentService(username);
		if(member != null) {
			System.out.println(tag + " id: "+member.getId()+" password: "+member.getPassword()
			+" email: "+member.getEmail());
			
			String authority = memberService.checkAuthorityService(username);
			System.out.println(tag+ " authority: "+authority);
			
			List<GrantedAuthority> auth = new ArrayList<>();
			auth.add(new SimpleGrantedAuthority(authority));
			System.out.println(tag+ " auth: "+ auth.toString());
			member.setAuthorities(auth);
			
		}else {
			System.out.println(tag+" member is null");
			throw new UsernameNotFoundException("접속자 정보를 찾을 수 없습니다.");
		}
		
		return member;
	}
}
