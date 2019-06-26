package com.cndy.tt.comment;

import java.util.HashMap;
import java.util.List;

public interface CommentDao {
	List<Comment> list(long board_no);
	void insert(Comment comment);
	void insertReply(Comment comment);
	void updateLev(long comment_no);
	int maxStep(HashMap<String, Object> map);
	int countLev(HashMap<String, Object> map);
	void delete(long comment_no);
	List<Comment> replyList(HashMap<String, Object> map);
	void resetLev(long refer);
}
