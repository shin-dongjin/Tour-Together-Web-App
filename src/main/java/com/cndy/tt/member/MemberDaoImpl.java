package com.cndy.tt.member;

import java.util.List;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.beans.factory.annotation.Autowired;

@Repository("memberDao")
public class MemberDaoImpl implements MemberDao {
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	private String ns = "com.cndy.tt.mybatis.Member";
	private String ns_au = "com.cndy.tt.mybatis.Authority.";

	@Override
	public boolean insert(Member member) {
        System.out.println("MemberDaoImpl - insert()");
        
		int i = sqlSession.insert(ns + ".memberInsert", member);
		
		if(i>0) return true;
		else return false;
	}

	@Override
	public long checkId(Member member) {
		System.out.println("MemberDaoImpl - checkId()");
		return sqlSession.selectOne(ns + ".checkIdSelect", member);
	}

	@Override
	public Member profileContent(String id) {
		System.out.println("MemberDaoImpl - profileContent()");

		return sqlSession.selectOne(ns + ".profileSelect", id);//selectOne->select�ϸ� �־ȵɱ�
	}

	@Override
	public long profileUpdate(Member member) {
		System.out.println("MemberDaoImpl - profileUpdate()");
		return sqlSession.update(ns + ".profileUpdate", member);
	}
	
	@Override
	public List<Member> autoComplete(String b) {
		System.out.println("MemberDaoImpl - autoComplete()");
		return sqlSession.selectList(ns+".autoComplete", b);
	}

	@Override
	public String checkAuthority(String id) {
		System.out.println("MemberDaoImpl - checkAuthority()");
		return sqlSession.selectOne(ns_au + "checkAuthority", id);
	}

	@Override
	public boolean insertAuthority(String id) {
		System.out.println("MemberDaoImpl - insertAuthority()");
		
		int i = sqlSession.insert(ns_au + "insertAuthority", id);

		if(i>0) return true;
		else return false;
	}
	
	@Override
	public int block(String id) {
		int i = sqlSession.update(ns+ ".blockUser", id);
		return i;
	}

	@Override
	public int unblock(String id) {
		int i = sqlSession.update(ns + ".unblockUser", id);
		return i;
	}
}
