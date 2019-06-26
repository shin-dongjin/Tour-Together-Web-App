package com.cndy.tt.member;

import java.util.List;

public interface MemberDao {
	boolean insert(Member member);
	long checkId(Member member); 
	Member profileContent(String id);
	long profileUpdate(Member member); 
	String checkAuthority(String id);
	boolean insertAuthority(String id);
	List<Member> autoComplete(String b);
	int block(String id);
	int unblock(String id);
}
