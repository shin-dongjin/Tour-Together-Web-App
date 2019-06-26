package com.cndy.tt.diary;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("diaryDao")
public class DiaryDaoImpl implements DiaryDao {
	
	@Autowired 
	private SqlSessionTemplate sqlSession;
	private String ns = "com.cndy.tt.mybatis.Diary.";

	@Override
	public List<Diary> list() {
		List<Diary> diaryList = sqlSession.selectList(ns + "diarySelectAll");
		return diaryList;
	}

	@Override
	public boolean insert(Diary diary) {
		int i = sqlSession.insert(ns + "diaryInsert", diary);
		if(i>0) return true;
		else return false;
	}

	@Override
	public void delete(long diary_no) {
		sqlSession.delete(ns + "diaryDelete", diary_no);
	}

	@Override
	public void edit(Diary diary) {
		sqlSession.update(ns + "diaryEdit", diary);
	}

	@Override
	public List<Diary> content(long diary_no) {
		List<Diary> content = sqlSession.selectList(ns + "diaryContent", diary_no); 
		return content;
	}

	@Override
	public void updateCountRead(long diary_no) {
		sqlSession.update(ns + "diaryCountRead", diary_no);		
	}

	@Override
	public int thisMonth() {
		return sqlSession.selectOne(ns+ "diaryThisMonth");
	}

	@Override
	public int thisWeek() {
		return sqlSession.selectOne(ns + "diaryThisWeek");
	}

	@Override
	public void userLike(long diary_no) {
		sqlSession.update(ns+ "userLike", diary_no);
	}
	
}
