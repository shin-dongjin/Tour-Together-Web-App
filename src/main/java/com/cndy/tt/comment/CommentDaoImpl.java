package com.cndy.tt.comment;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("commentDao")
public class CommentDaoImpl implements CommentDao {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	private String ns = "com.cndy.tt.mybatis.Comment.";
	
	@Override
	public List<Comment> list(long board_no) {
		List<Comment> comments = sqlSession.selectList(ns + "commentSelectList", board_no);
		return comments;
	}

	@Override
	public void insert(Comment comment) {
		sqlSession.insert(ns + "commentInsert", comment);
	}

	@Override
	public void updateLev(long comment_no) {
		System.out.println(" CommentDaoImpl comment_no: "+comment_no);
		sqlSession.update(ns + "updateLev", comment_no);
	}

	@Override
	public void insertReply(Comment comment) {
		sqlSession.insert(ns + "replyInsert", comment);
	}

	@Override
	public int maxStep(HashMap<String, Object> map) {
		int maxStep = sqlSession.selectOne(ns + "commentSelectMaxStep", map);
		return maxStep;
	}

	@Override
	public int countLev(HashMap<String, Object> map) {
		return sqlSession.selectOne(ns + "countLev", map);
	}

	@Override
	public void delete(long comment_no) {
		sqlSession.delete(ns + "commentDelete", comment_no);
		
	}

	@Override
	public List<Comment> replyList(HashMap<String, Object> map) {
		List<Comment> replies = sqlSession.selectList(ns + "selectReply", map);
		return replies;
	}

	@Override
	public void resetLev(long refer) {
		sqlSession.update(ns + "resetLev", refer);

	}

}
