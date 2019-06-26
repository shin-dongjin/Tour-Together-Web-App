package com.cndy.tt.admin;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.cndy.tt.board.BoardDTO;
import com.cndy.tt.board.BoardService;
import com.cndy.tt.diary.Diary;
import com.cndy.tt.member.Member;
import com.cndy.tt.member.MemberService;
import com.cndy.tt.paging.PagingService;
import com.cndy.tt.paging.PagingVo;

@Controller
@RequestMapping("/admin")
public class AdminController {
	
	@Resource(name="adminService")
	private AdminService adminService;
	
	@Resource(name="pagingService")
	private PagingService pagingService;
	
	@Resource(name="memberService")
	private MemberService memberService;
	
	@Resource(name="BoardService")
	private BoardService boardService;
	
	@RequestMapping(value="admin_mem.do", method= {RequestMethod.POST, RequestMethod.GET})
	public String memCont(Model model, PagingVo pagingVo, HttpSession session) {
		List<Member> list = pagingService.selectAdminPagingService(pagingVo);
		pagingVo.setTotal(pagingService.selectAdminTotalPagingService());
		model.addAttribute("list", list);
		session.setAttribute("pagingVo", pagingVo);
		
		return "admin/admin_mem";
	}
	
	@RequestMapping(value="searchMem.do", method= {RequestMethod.POST})
	public String memSearch(Model model, PagingVo pagingVo, HttpSession session,
								@RequestParam(value="searchOpt") String searchOpt,
								@RequestParam(value="inputText") String inputText) {
		List<Member> list = pagingService.selectAdminSearchPagingService(searchOpt, inputText, pagingVo);
		pagingVo.setTotal(pagingService.selectAdminSearchTotalPagingService(searchOpt, inputText));
		model.addAttribute("list", list);
		model.addAttribute("searchOpt", searchOpt);
		model.addAttribute("inputText", inputText);
		
		session.setAttribute("pagingVo", pagingVo);
		
		return "admin/admin_memSearch";
	}
	
	//게시글 관리
	@RequestMapping(value="admin_board.do", method= {RequestMethod.POST, RequestMethod.GET})
	public String controlBoard(Model model, PagingVo pagingVo, HttpSession session) {
		List<BoardDTO> list = pagingService.selectBoardPagingService(pagingVo);
		pagingVo.setTotal(pagingService.selectBoardTotalPagingService());
		model.addAttribute("list", list);
		session.setAttribute("pagingVo", pagingVo);
		
		return "admin/admin_board";
	}
	
	//게시물검색
	@RequestMapping(value="searchBoard.do", method= {RequestMethod.POST})
	public String boardSearch(Model model, PagingVo pagingVo, HttpSession session,
								@RequestParam(value="searchOpt") String searchOpt,
								@RequestParam(value="inputText") String inputText) {
		List<BoardDTO> list = pagingService.selectAdminBoardSearchService(searchOpt, inputText, pagingVo);
		pagingVo.setTotal(pagingService.selectAdminTotalBoardSearchService(searchOpt, inputText));
		model.addAttribute("list", list);
		model.addAttribute("searchOpt", searchOpt);
		model.addAttribute("inputText", inputText);		
		session.setAttribute("pagingVo", pagingVo);
		
		return "admin/admin_boardSearch";
	}
	
	@RequestMapping(value="admin_stat_join.do", method= {RequestMethod.POST, RequestMethod.GET})
	public ModelAndView chartJoin(Model model) {
		List<String> chartDate = adminService.chartDateService();
		List<Integer> chartNum = adminService.chartNumService();
		List<Date> joinDate = new ArrayList<Date>();
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
		Date date = null;		
		for(String strDate : chartDate) {
			try {
				date = formatter.parse(strDate);
				java.sql.Date sqlDate = new java.sql.Date(date.getTime());
				joinDate.add(sqlDate);
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}			
		model.addAttribute("chartCount", chartNum);
		String view = "admin/admin_stat_join";
		ModelAndView mv = new ModelAndView(view, "chart", joinDate);
		return mv;
	}
	
	//회원가입자 통계 날짜 검색
	@RequestMapping(value="changeChart.do")
	@ResponseBody
	public JSONArray buttonSearch(@RequestParam("startYear") int startYear,
								@RequestParam("startMonth") int startMonth,
								@RequestParam("endYear") int endYear,
								@RequestParam("endMonth") int endMonth) {
		
		JSONArray json = new JSONArray();
		JSONObject object = null;

		List<String> newChartDate = adminService.newChartDateService(startYear, startMonth, endYear, endMonth);
		List<Integer> newChartCount = adminService.newChartCountService(startYear, startMonth, endYear, endMonth);
		
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		for(String date : newChartDate) {
			object = new JSONObject();
			//Date dateStr;
			try {
				Date dateStr = dateFormat.parse(date);
				java.sql.Date sqlDate = new java.sql.Date(dateStr.getTime());
				object.put("Date", sqlDate);
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}			
			json.add(object);			
		}
		for(Integer i : newChartCount) {
			object = new JSONObject();			
			object.put("CountData", i);
			json.add(object);
		}
		return json;
	}
	
	//성별
	@RequestMapping(value="admin_stat_gen.do", method= {RequestMethod.POST, RequestMethod.GET})
	public ModelAndView chartGend(Model model) {
		int chartGenF = adminService.chartGenFService();
		int chartGenM = adminService.chartGenMService();
		int chartClsA = adminService.chartClsAService();
		int chartClsP = adminService.chartClsPService();
		model.addAttribute("chartGenF", chartGenF);
		model.addAttribute("chartClsA", chartClsA);
		model.addAttribute("chartClsP", chartClsP);
		String view = "admin/admin_stat_genNcls";
		ModelAndView mv = new ModelAndView(view, "chartGenM", chartGenM);
		return mv;
	}
	
	
	//가입자 나라 통계
	@RequestMapping(value="admin_stat_country.do", method= {RequestMethod.POST, RequestMethod.GET})
	public ModelAndView chartCountry(Model model) {
		List<Member> chartCountry = adminService.chartCountryService();
		List<Integer> chartCount = adminService.chartCountryCountService();
		model.addAttribute("chartCount", chartCount);
		String view = "admin/admin_stat_country";
		ModelAndView mv = new ModelAndView(view, "chart", chartCountry);
		return mv;
	}
	
	//공지사항 리스팅
	@RequestMapping(value="admin_notice.do", method= {RequestMethod.POST, RequestMethod.GET})
	public String adminBoard(Model model, PagingVo pagingVo, HttpSession session) {	
		System.out.println("공지사항 컨트롤러");
		List<Notice> list = pagingService.selectNoticePagingService(pagingVo);
		pagingVo.setTotal(pagingService.selectNoticeTotalPagingService());
		model.addAttribute("list", list);
		session.setAttribute("pagingVo", pagingVo);
		
		return "admin/admin_notice";
	}
	
	//공지사항 글쓰기
	@RequestMapping(value="noticeWrite.do", method=RequestMethod.POST)
	public ModelAndView write(Notice notice) {		
		ModelAndView mv = new ModelAndView();
		boolean flag = adminService.insertNoticeService(notice);
		if(flag) {
			mv.addObject("result", true);
		}else {
			mv.addObject("result", false);
		}
		mv.setViewName("admin/result_msg");
		return mv;
	}
	
	//공지사항 삭제
	@RequestMapping(value="deleteNotice.do")
	public String delete(@RequestParam("notice_no") long notice_no) {		
		adminService.deleteNoticeService(notice_no);
		return "redirect:/admin/admin_notice.do";
	}
	
	//공지사항 수정 페이지로 넘기기
	@RequestMapping(value="showEditPage.do")
	public ModelAndView showEditPage(@RequestParam("notice_no") long notice_no) {
		ModelAndView mv = new ModelAndView();
		List<Notice> notice = adminService.selectNoticeContent(notice_no);
		mv.addObject("notice", notice);
		mv.addObject("notice_no", notice_no);
		mv.setViewName("admin/admin_editPage");

		return mv;
	}
	//공지사항 수정
	@RequestMapping(value="editNotice.do")
	public ModelAndView editPage(Notice notice) {
		ModelAndView mv = new ModelAndView();
		boolean flag = adminService.editNotice(notice);
		if(flag) {
			mv.addObject("result", true);
		}else {
			mv.addObject("result", false);
		}
		mv.setViewName("admin/result_msg");
		return mv;
	}
	
	@ResponseBody
	@RequestMapping(value="block.do", method=RequestMethod.POST)
	public boolean block(@RequestParam(value="ids")List<String> ids) {
		boolean result = memberService.blockService(ids);
		return result;
	}
	
	@ResponseBody
	@RequestMapping(value="unblock.do", method=RequestMethod.POST)
	public boolean unblock(@RequestParam(value="ids")List<String> ids) {
		boolean result = memberService.unblockService(ids);		
		return result;
	}
	
	@ResponseBody
	@RequestMapping(value="blockContent.do", method=RequestMethod.POST)
	public boolean blockContent(@RequestParam(value="ids")List<String> ids) {
		boolean result = boardService.blockService(ids);
		return result;
	}
} 
