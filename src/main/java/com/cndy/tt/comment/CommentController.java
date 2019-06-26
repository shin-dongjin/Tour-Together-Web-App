package com.cndy.tt.comment;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cndy.tt.file.Photo;
import com.cndy.tt.file.PhotoService;
import com.cndy.tt.member.Member;

@Controller
public class CommentController {

	@Resource(name="commentService")
	private CommentService commentService;
	
	@Resource(name="photoService")
	private PhotoService photoService;
	
	@RequestMapping(value="diary/insertComment.do", method=RequestMethod.POST)
	public String insert(Comment comment, HttpSession session) {
		String email = null;
		if(session.getAttribute("member") != null) {
			email = ((Member)session.getAttribute("member")).getEmail();
			System.out.println("email1: "+email);
		}else {
			Authentication auth = SecurityContextHolder.getContext().getAuthentication();
			Member user = (Member)auth.getDetails();
			email = user.getEmail();
			System.out.println("email2: "+email);
		}
		comment.setEmail(email);
		
		//comment.setEmail("eogh4535@naver.com");//임시방편@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
		
		commentService.insertService(comment);
		long diary_no = comment.getBoard_no();
		return "redirect:/diary/content.do?diary_no="+diary_no;
	}
	
	@RequestMapping(value="diary/deleteComment.do")
	public String delete(Comment comment) {
		//由ы뵆 �엳�뒗 �뙎湲� 吏��슦湲� 諛⑹� 泥섎━�븯�젮硫� lev 諛쏆븘���꽌
		long comment_no = comment.getComment_no();
		long board_no = comment.getBoard_no();
		long refer = comment.getRefer();
		commentService.deleteService(comment_no, refer);
		return "redirect:/diary/content.do?diary_no="+ board_no;
	}
	
	   @ResponseBody
	   @RequestMapping(value="diary/loadReply.do")
	   public List<Object> selectReply(@RequestParam("board_no")long board_no, @RequestParam("refer")long refer){
	      HashMap<String, Object> map = new HashMap<String, Object>();
	      map.put("board_no", board_no);
	      map.put("refer", refer);
	      List<Comment> replies = commentService.replyListService(map);
	      
	      List<Object> data = new ArrayList<Object>();
	      data.add(replies);
	      
	      List<Photo> profiles = new ArrayList<>();
	      if(replies != null) {
	         String comment_email = "";
	         for(int i=0; i<replies.size(); i++) {
	            String writer = replies.get(i).getEmail();
	            if(!comment_email.equals(writer)) {
	               comment_email = writer;
	               Photo photo =  photoService.selectService(comment_email).get(0);
	               photo.setEmail(comment_email);
	               System.out.println(" photo: "+ photo.toString());
	               profiles.add(photo);
	            }
	            System.out.println(" i : "+i+" email : "+comment_email);
	         }
	         data.add(profiles);
	      }
	      return data;
	   }
}
