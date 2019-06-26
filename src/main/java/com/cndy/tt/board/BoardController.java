package com.cndy.tt.board;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.security.Principal;
import java.sql.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.mvc.annotation.ModelAndViewResolver;

import com.cndy.tt.file.PhotoService;
import com.cndy.tt.member.Member;
import com.cndy.tt.paging.PagingService;
import com.cndy.tt.paging.PagingVo;

@Controller
public class BoardController {
	@Resource(name="BoardService")
	private BoardService service;
	@Resource(name="pagingService")
	private PagingService pagingService;
	@Resource(name="photoService")
	private PhotoService photoService;
	
	@RequestMapping(value = "board/board.do")
	public ModelAndView board(@RequestParam("type") int type, HttpSession session) {
	
		ModelAndView mv = new ModelAndView("board/board_test");
		List<BoardDTO> list = service.listService(type);
		mv.addObject("list", list);
		session.setAttribute("type", type);

		return mv;	
	}
	
	@RequestMapping(value = "board/region.do", method = RequestMethod.GET)
	public String region(@RequestParam("type") int type, HttpSession session) {
    	session.setAttribute("type", type);
		return "board/region_select";
	}
    
    @RequestMapping(value = "board/test.do", method = RequestMethod.GET)
	public String test() {
		return "board/board_test";
	}
	
    @RequestMapping(value="board/search.do")
	@ResponseBody
	public JSONArray scrollSearch(HttpSession session, @RequestParam("page") long page,@RequestParam("type") int type,@RequestParam("keyword")String keyword,@RequestParam("searchOpt")String searchOpt) {
		if((Integer)type == null) {
			type = (int)session.getAttribute("type");
		}
		System.out.println("page : "+page+", type : "+type+", searchOpt: "+searchOpt+", keyword: "+keyword);

		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("page", page);
		map.put("type", type);
		map.put("keyword", keyword);
		map.put("searchOpt", searchOpt);
		
		List<BoardDTO> dto = service.pageServiceWithKeyword(map);

		JSONArray json = new JSONArray();
		JSONObject object = null;
		
		for(BoardDTO b : dto) {
			object = new JSONObject();
			object.put("data", b);
			json.add(object);
		}
		
		//System.out.println(json);
		return json;
	}
    //寃��깋
	@RequestMapping(value="board/searchBoard.do", method= {RequestMethod.POST, RequestMethod.GET})
	public String boardSearch(HttpServletRequest request, Model model, PagingVo pagingVo, HttpSession session,
								@RequestParam(value="searchOpt") String searchOpt,
								@RequestParam(value="keyword") String keyword,
								@RequestParam(value="type") long type) {
		List<BoardDTO> list = pagingService.selectAdminBoardSearchService(searchOpt, keyword, pagingVo);
		pagingVo.setTotal(pagingService.selectAdminTotalBoardSearchService(searchOpt, keyword));
		model.addAttribute("list", list);
		model.addAttribute("searchOpt", searchOpt);
		model.addAttribute("keyword", keyword);		
		model.addAttribute("type", type);
		session.setAttribute("pagingVo", pagingVo);
		//request.setAttribute("keyword", keyword);
		
		return "board/board_test";
	}
	@RequestMapping(value = "board/insert.do")
	public String board_insert(@RequestParam("region") String region,HttpSession session) {

		System.out.println(region);
		session.setAttribute("region", region);
		return "board/board_insert";	
	}

	@RequestMapping(value="board/detail.do")
	@ResponseBody
	public String board_detail(@RequestParam("position") String position,HttpSession session) {
		
		JSONParser jsParser = new JSONParser();
		Object ob = null;
		
		//System.out.println(session.getAttribute("position"));
		
		try {
			ob = jsParser.parse(position);
		}catch(ParseException pe){
			System.out.println(pe);
		}
		JSONArray json = (JSONArray)ob;
		//System.out.println(json);
		
		session.setAttribute("position", json);
		System.out.println(session.getAttribute("position"));
		
		return "";
	}
	@RequestMapping(value="/board/content_in.do")
	public String content_insert() {
		return "board/board_form";
	}
	@RequestMapping(value="/board/all_insert.do")
	public String all_insert(HttpSession session,
			@RequestParam("title") String title, @RequestParam("start_date") java.util.Date start_dateU,@RequestParam("end_date") java.util.Date end_dateU,
			@RequestParam("budget") int budget,@RequestParam("company") int company,
			@RequestParam("board_content") String board_content,@RequestParam("tour_time") int tour_time, @RequestParam String photo_path){
		
		//System.out.println(session.getAttribute("position"));
		Member id = (Member)session.getAttribute("userInfo") ;
		System.out.println("id : "+id.getId());
		Date start_date = new Date(start_dateU.getTime());
		Date end_date = new Date(end_dateU.getTime());
		String region = (String)session.getAttribute("region");
		int type = (Integer)session.getAttribute("type");
		session.removeAttribute("region");
		session.removeAttribute("type");
		BoardDTO dto = new BoardDTO(title,id.getId(),start_date,end_date,budget,company,type,board_content,tour_time,region,photo_path);
		service.insert(dto, session);
		
		return "redirect:board.do?type="+type;
	}

	@RequestMapping(value = "/board/form_board.do")
	public String form_dd() {
		System.out.println("form_dd");
		return "board/board_form";
	}
	@RequestMapping(value = "/board/form_content.do")
	public String form_content() {
		
		return "board/board_content";
	}
	@RequestMapping(value = "board/doA", method = RequestMethod.GET)
    public ModelAndView doA(@RequestParam("id") String id, HttpSession session){
        Member my_id = null;
        if(session.getAttribute("userInfo")==null) {
        	my_id = (Member)session.getAttribute("member") ;
        }else {
        	my_id = (Member)session.getAttribute("userInfo") ;
        }
        System.out.println("id : "+my_id.getId());
        System.out.println("chat  : "+id);
        
        HashMap<String, String> chat = service.chat_service(my_id.getId(),id);
        
        String path = chat.get("chating_content").replace("\\", "/");
        System.out.println("Controller : "+ chat.get("chating_content"));
        System.out.println("Controller path : "+path);
        chat.put("chating_content", path);
        
        ModelAndView mv = new ModelAndView("chat/chatting");
        mv.addObject("chat", chat);
        
        return mv;
    }
	@RequestMapping(value="/board/content.do")
	public ModelAndView board_content(@RequestParam("no") long board_no) {
		System.out.println(board_no);
		BoardDTO dto = service.content(board_no);
		ModelAndView mv = new ModelAndView("board/board_content");
		String id = dto.getId();
		System.out.println("id : "+id);
		String photo = service.content_photo(id);
		System.out.println("photo : "+ photo );
		mv.addObject("con", dto);
		mv.addObject("photo",photo);
		return mv;
	}
	@RequestMapping(value="/board/location.do")
	@ResponseBody
	public JSONArray content_location(@RequestParam("no") long board_no) {
		
		System.out.println(board_no);
		JSONArray json = new JSONArray();
		JSONObject object = null;
		
		List<HashMap<String,String>> list = service.location(board_no);
		
		for(HashMap<String,String> loc : list) {
			object = new JSONObject();
			object.put("data", loc);
			json.add(object);
		}
		
		System.out.println(json);
		return json;
	}
	@RequestMapping(value = "/board/chat_list.do")
	@ResponseBody
	public JSONArray chat_list(@RequestParam("id") String id) {
		
		System.out.println(id);
		JSONArray json = new JSONArray();
		JSONObject object = null;
		
		List<HashMap<String,String>> user_id = service.chating(id);
		
		for(HashMap<String,String> loc : user_id) {
			object = new JSONObject();
			object.put("data", loc);
			json.add(object);
		}
		
		System.out.println(json);
		
		return json;
		
	}
	@RequestMapping(value = "/board/chating.do")
	public String chating(@RequestParam("id") String id) {
		
		List<HashMap<String,String>> user_id = service.chating(id);
		if(user_id.size()>0){
			System.out.println("아이디가 존재함");
			return "redirect:doA?id="+user_id.get(0).get("user_id");
		}
		System.out.println("notChat");
		return "notChat";
	}
	
	@RequestMapping(value = "/board/delete.do")
	public String delete(@RequestParam("no") long board_no,@RequestParam("type") int type) {
		service.delete(board_no);
		return "redirect:board.do?type="+type;
	}
	@RequestMapping(value = "/board/join.do")
	public String join_test() {
		
		return "join/join";
	}
	
}
