package com.cndy.tt.member;

import java.util.List;

public interface MemberService {
	boolean insertService(Member member);
	long checkIdService(Member member);
	Member profileContentService(String id);
	long updateService(Member member);
	String checkAuthorityService(String id);
	boolean blockService(List<String> ids);
	boolean unblockService(List<String> ids);
}
