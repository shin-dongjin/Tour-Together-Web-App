package com.cndy.tt.member;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

@Service("memberService")
public class MemberServiceImpl implements MemberService {
	String tag = " [ MemberServiceImpl ] ";
	
	@Resource(name="memberDao")
	private MemberDao memberDao;
	
	@Autowired
	private BCryptPasswordEncoder passwordEncoder;
	
	@Override
	public boolean insertService(Member member) {
		// �씠�슜�옄�쓽 鍮꾨�踰덊샇瑜� bcrypt �븣怨좊━�벉�쑝濡� �븫�샇�솕�븯�뿬 DB�뿉 ���옣�븳�떎
		String encodedPassword = passwordEncoder.encode(member.getPassword());
		System.out.println(tag+ " encodedPassword: "+encodedPassword);
		member.setPassword(encodedPassword);

		System.out.println(tag+ " member : "+member.toString());
		
		if(memberDao.insert(member) && memberDao.insertAuthority(member.getId()))
			return true;
		else return false;
	}
	@Override
	public long checkIdService(Member member) {
		return memberDao.checkId(member);
	}
	@Override
	public Member profileContentService(String id) {
		return memberDao.profileContent(id);
	}
	@Override
	public long updateService(Member member) {
		return memberDao.profileUpdate(member);
	}

	@Override
	public String checkAuthorityService(String id) {
		return memberDao.checkAuthority(id);
	}
	
	@Override
	public boolean blockService(List<String> ids) {
		int check = 0;
		for(int i=0; i<ids.size(); i++) {
			check += memberDao.block(ids.get(i));
			System.out.println(tag+ " blockService: "+ ids.get(i));
			System.out.println(tag+ " check: "+ check);
		}
		if(ids.size() == check) return true;
		else return false;
	}
	
	@Override
	public boolean unblockService(List<String> ids) {
		int check = 0;
		for(int i=0; i<ids.size(); i++) {
			check += memberDao.unblock(ids.get(i));
			System.out.println(tag+ "unblockService: "+ ids.get(i));
			System.out.println(tag+ " check: "+ check);
		}
		if(ids.size() == check)	return true;
		else return false;
	}
}
