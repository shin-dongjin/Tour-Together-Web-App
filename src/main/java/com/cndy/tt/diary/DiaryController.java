package com.cndy.tt.diary;
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
import org.springframework.web.servlet.ModelAndView;

import com.cndy.tt.comment.Comment;
import com.cndy.tt.comment.CommentService;
import com.cndy.tt.file.Photo;
import com.cndy.tt.file.PhotoService;
import com.cndy.tt.member.Member;
import com.cndy.tt.paging.PagingService;
import com.cndy.tt.paging.PagingVo;

@Controller
@RequestMapping("/diary")
public class DiaryController {
	
	@Resource(name="diaryService")
	private DiaryService diaryService;
	
	@Resource(name="commentService")
	private CommentService commentService;
	
	@Resource(name="pagingService")
	private PagingService pagingService;
	
	@Resource(name="photoService")
	private PhotoService photoService;
	
	@RequestMapping(value="/list.do", method= {RequestMethod.POST, RequestMethod.GET})
	public String paging(Model model, PagingVo pagingVo, HttpSession session) {
		System.out.println("PagingController: paging()"+pagingVo);
		List<Diary> list = pagingService.selectPagingService(pagingVo);
		pagingVo.setTotal(pagingService.selectTotalPagingService());
		
		model.addAttribute("list", list);

		session.setAttribute("pagingVo", pagingVo);
		
		return "diary/diary_list";
	}
	
	@RequestMapping(value="/list2.do", method= {RequestMethod.POST, RequestMethod.GET})
	public @ResponseBody HashMap<String, Object> paging2(@RequestParam("keyword")String keyword, Model model, PagingVo pagingVo, HttpSession session) {
		List<Diary> list = pagingService.selectDiarySearchPagingService(keyword, pagingVo);
		pagingVo.setTotal(pagingService.selectDiarySearchTotalPagingService(keyword));
		System.out.println("keyword: "+keyword);
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		
		map.put("keyword", keyword);
		map.put("list", list);
		map.put("pagingVo", pagingVo);
		
		session.setAttribute("pagingVo", pagingVo);//�꽭�뀡�쓣 �뿬湲곗꽌 �닔�젙�빐�룄 �솕硫대떒�뿉�꽌�뒗 pagingVo媛� �씠 媛믪쑝濡� �븷�떦�릺�뼱�엳吏� �븡�쓬(洹몃옒�꽌 map�쑝濡� �꽆寃⑥쨲)  
		System.out.println("PagingController: paging2()- "+pagingVo);		
		return map;
	}
	@RequestMapping(value="/paging.do", method= {RequestMethod.POST, RequestMethod.GET})
	public String paging3(@RequestParam("keyword")String keyword, Model model, PagingVo pagingVo, HttpSession session) {
		List<Diary> list = pagingService.selectDiarySearchPagingService(keyword, pagingVo);
		pagingVo.setTotal(pagingService.selectDiarySearchTotalPagingService(keyword));
		System.out.println("PagingController: paging3()- "+pagingVo);
		System.out.println("keyword: "+keyword);
		for(int i=0 ; i<list.size() ; i++) {
			System.out.println("list: "+list.get(i));
		}
		model.addAttribute("list", list);
		session.setAttribute("pagingVo", pagingVo);
		
		return "diary/diary_list";
	}
	
	@RequestMapping(value="content.do", method= {RequestMethod.GET})
	   public ModelAndView content(@RequestParam("diary_no") long diary_no) {
	      
	      List<Diary> content = diaryService.contentService(diary_no);
	      
	      String view = "diary/diary_content";
	      ModelAndView mv = new ModelAndView(view, "diary", content);
	      
	      String content_profile = photoService.selectPathService(diary_no);
	      if(content_profile != null) {
	         mv.addObject("content_profile", content_profile);
	      }
	      
	      List<Comment> comments = commentService.listService(diary_no);
	      List<Photo> profiles = new ArrayList<>();
	      if(comments != null) {
	         String comment_email = "";
	         for(int i=0; i<comments.size(); i++) {
	            System.out.println(" i : "+i+" email : "+comment_email);
	            String writer = comments.get(i).getEmail();
	            System.out.println(" writer : "+ writer);
	            if(!comment_email.equals(writer)) {
	               comment_email = writer;
	               if(photoService.selectService(comment_email).size() != 0) {
		               Photo photo =  photoService.selectService(comment_email).get(0);
		               photo.setEmail(comment_email);
		               System.out.println(" photo: "+ photo.toString());
		               profiles.add(photo);
	               }
	            }
	         }
	         mv.addObject("comments", comments);
	         mv.addObject("profiles", profiles);
	      }
	      
	      return mv;
	   }
	
	@RequestMapping(value="write.do", method=RequestMethod.GET)
	public String write() {
		return "diary/diary_write";
	}	
	
	@RequestMapping(value="write.do", method=RequestMethod.POST)
	public ModelAndView write(Diary diary, HttpSession session) {
		String email = null;
		if(session.getAttribute("member") != null) {
			email = ((Member)session.getAttribute("member")).getEmail();
		}else {
			Authentication auth = SecurityContextHolder.getContext().getAuthentication();
			Member user = (Member)auth.getDetails();
			email = user.getEmail();
		}
		diary.setEmail(email);
		System.out.println("debug1");
		ModelAndView mv = new ModelAndView();
		boolean flag = diaryService.insertService(diary);
		System.out.println("debug2");
		if(flag) {
			mv.addObject("result", true);
			System.out.println("debug3");
		}else {
			mv.addObject("result", false);
			System.out.println("debug4");
		}
		System.out.println("debug5");
		mv.setViewName("diary/result_msg");
		System.out.println("debug6");
		return mv;
	}
	
	@RequestMapping(value="delete.do")
	public String delete(@RequestParam("diary_no") long diary_no) {
		
		diaryService.deleteService(diary_no);
		return "redirect:/diary/list.do";
	}
	
	@RequestMapping(value="edit.do", method=RequestMethod.GET)
	public ModelAndView edit(@RequestParam("diary_no") long diary_no) {
		
		List<Diary> content = diaryService.contentService(diary_no);
		System.out.println("content "+content.get(0).getDiary_no());
		String view = "diary/diary_edit";
		ModelAndView mv = new ModelAndView(view, "diary", content);
		return mv;
	}
	
	@RequestMapping(value="edit.do", method=RequestMethod.POST)
	public String update(Diary diary) {
		
		System.out.println("DiaryController update: diary_no "+diary.getDiary_no()+" title "
				+diary.getTitle()+" email: "+ diary.getEmail()+" region: "+diary.getRegion()
				+diary.getCompany()+ " content "+diary.getDiary_content());
		diaryService.editService(diary);
		long diary_no = diary.getDiary_no();
		return "redirect:/diary/content.do?diary_no="+diary_no;
	}
	
	@RequestMapping(value="like.do")
	public String like(@RequestParam("diary_no") long diary_no) {
		diaryService.userLikeService(diary_no);
		
		return "redirect:/diary/content.do?diary_no="+diary_no;
	}
}
