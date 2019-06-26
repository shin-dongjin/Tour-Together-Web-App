package com.cndy.tourtogether;

import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.cndy.tt.admin.AdminService;
import com.cndy.tt.admin.Notice;
import com.cndy.tt.board.BoardService;
import com.cndy.tt.diary.DiaryService;
import com.cndy.tt.file.Photo;
import com.cndy.tt.file.PhotoService;
import com.cndy.tt.member.Member;

@Controller
public class IndexController {
	
	@Resource(name="BoardService")
	BoardService boardService;
	
	@Resource(name="diaryService")
	DiaryService diaryService;
	
	@Resource(name="adminService")
	AdminService adminService;
	
	@Resource(name="photoService")
	private PhotoService photoService;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String index2() {
		return "redirect:/home.do";
	}

	@RequestMapping(value = "/tour_together", method = RequestMethod.GET)
	public String index() {
		return "redirect:/home.do";
	}

	@RequestMapping(value = "/start", method = RequestMethod.POST, consumes = "application/json")
	//consumes �ϴ� ���´� application/json �����̴�.
	@ResponseBody //json �����͸� �ޱ����� @ResponseBody �ֳ����̼�
	public String startApp(@RequestBody String body) {
		System.out.println(body);
		return "redirect:/home.do";		
	}
	
	@RequestMapping(value = "/home.do", method = RequestMethod.GET)
	public String home(Model model, HttpSession session) {
		HashMap<String, Integer> countInfo = new HashMap<String, Integer>();
		HashMap<String, Integer> board = boardService.indexService();
		HashMap<String, Integer> diary = diaryService.indexService();
		
		countInfo.put("touristCount", board.get("touristCount"));
		countInfo.put("guideCount", board.get("guideCount"));
		countInfo.put("thisMonthCount", board.get("boardThisMonth")+diary.get("diaryThisMonth"));
		countInfo.put("thisWeekCount", board.get("boardThisWeek")+diary.get("diaryThisWeek"));
		model.addAttribute("countInfo", countInfo);
		
        Notice notice = adminService.selectAllNotice();
        model.addAttribute("notice", notice);
        
        Member member = null;
        
        if(session.getAttribute("member") != null) 
        	member = (Member)session.getAttribute("member");
        else if(session.getAttribute("userInfo") != null)
        	member = (Member)session.getAttribute("userInfo");
        
        Photo photo = null;
        if(member != null) {
        	System.out.println(member.getEmail());
        	if(photoService.selectService(member.getEmail()).size() != 0) {
	        	photo =  photoService.selectService(member.getEmail()).get(0);
	        	photo.setEmail(member.getEmail());
	        	System.out.println(" photo: "+ photo.toString());
        	}
        }
        model.addAttribute("photo", photo);
		return "index";
	}
	
   @RequestMapping(value = "/popupNotice.do")
   public ModelAndView popupNotice() {
      Notice notice = adminService.selectAllNotice();
      ModelAndView mv = new ModelAndView();
      mv.addObject(notice);
      mv.setViewName("notice");
      if(notice == null){
         return null;
      }else {
         return mv;
      }      
   }
}
