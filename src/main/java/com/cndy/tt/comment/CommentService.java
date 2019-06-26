package com.cndy.tt.comment;

import java.util.HashMap;
import java.util.List;

public interface CommentService {
	List<Comment> listService(long board_no);
	void insertService(Comment comment);
	void deleteService(long comment_no, long refer);
	List<Comment> replyListService(HashMap<String, Object> map);
}
