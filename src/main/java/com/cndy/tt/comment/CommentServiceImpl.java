package com.cndy.tt.comment;

import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.cndy.tt.file.Photo;
import com.cndy.tt.file.PhotoService;

@Service("commentService")
public class CommentServiceImpl implements CommentService {

	@Resource(name="commentDao")
	private CommentDao commentDao;
	
	@Override
	public List<Comment> listService(long board_no) {
		List<Comment> comments = commentDao.list(board_no);
		return comments;
	}

	@Override
	public void insertService(Comment comment) {
		System.out.println("CommentServiceImpl 넘어온 comment : comment_no: "+comment.getComment_no()
		+" refer: "+ comment.getRefer() + " lev : "+ comment.getLev()+ " step: "+ comment.getStep()
		+" comment_content: "+comment.getComment_content());
		
		long refer = comment.getRefer();
		
		if(refer == 0) {		
			/* 댓글일 경우  넘어온 refer, lev, step 의 값은 0 */			
			commentDao.insert(comment);
		}else {		
			/* 댓댓글일 경우. 넘어온 refer, lev, step 은  부모댓글의 값  */
			HashMap<String, Object> map = new HashMap<String, Object>();
			map.put("board_no", comment.getBoard_no());
			map.put("refer", refer);
			int step = commentDao.maxStep(map) +1; // step: 최대값  +1
			System.out.println("step: "+step);
			comment.setStep(step);
			long comment_no = comment.getComment_no();
			System.out.println(" CommentServiceImpl comment_no: "+comment_no);
			commentDao.updateLev(comment_no);  // 댓댓글이 달릴 때 마다 부모 댓글의 레벨  +1
			
			System.out.println("CommentServiceImpl 셋팅된 comment : "
					+" refer: "+ comment.getRefer() + " lev : "+ comment.getLev()+ " step: "+ comment.getStep());
			commentDao.insertReply(comment);
		}	
	}

	@Override
	public void deleteService(long comment_no, long refer) {
		commentDao.delete(comment_no);
		commentDao.resetLev(refer); // 부모 lev 값 -1
	}

	@Override
	public List<Comment> replyListService(HashMap<String, Object> map) {
		List<Comment> replies = commentDao.replyList(map);
		for(int i=0; i<replies.size(); i++) {
			System.out.println("replies comment_no: "+replies.get(i).getComment_no());
			System.out.println("        lev: "+replies.get(i).getLev());
			System.out.println("        step: "+replies.get(i).getStep());
		}
		return replies;
	}

}
