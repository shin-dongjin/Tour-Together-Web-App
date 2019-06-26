package com.cndy.tt.file;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("photoDao")
public class PhotoDao {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	private String ns = "com.cndy.tt.mybatis.Photo.";
	
	public void insert(Photo photo) {
		sqlSession.insert(ns + "insert", photo);
	}
	
	public List<Photo> select(String email) {
		return sqlSession.selectList(ns + "select", email);
	}
	
	public String selectPath(long diary_no) {
		return sqlSession.selectOne(ns + "selectPath", diary_no);
	}
}
