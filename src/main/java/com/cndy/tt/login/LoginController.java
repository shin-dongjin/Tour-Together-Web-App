package com.cndy.tt.login;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.cndy.tt.file.Photo;
import com.cndy.tt.file.PhotoService;
import com.cndy.tt.member.Member;
import com.cndy.tt.member.MemberServiceImpl;

@Controller
@RequestMapping("/login")
public class LoginController {
	String tag= "[ LoginController ] ";
	
	@Resource(name="memberService")
	private MemberServiceImpl memberService;
	
	@Resource(name="photoService")
	private PhotoService photoService;
	
	@RequestMapping(value = "/login.do", method = RequestMethod.GET)
	public String login() {	
		System.out.println(tag+ " login()");
		return "login/loginForm";
	}
	
	@RequestMapping(value = "/join.do", method = RequestMethod.GET)
	public String join() {	
		System.out.println(tag+ " join()");
		return "login/join";
	}
	
	@RequestMapping(value="/insert.do", method=RequestMethod.POST)
	public ModelAndView insert(Member member) {
		System.out.println(tag+ " insert()");
		System.out.println(tag+ " member : "+member.toString());
		
		boolean result = memberService.insertService(member);
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("result", result);
		mv.setViewName("login/result_msg");
		
		return mv;
	}
	
	@RequestMapping(value="/login_success.do")
	public String login_success(HttpSession session) {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		Member user = (Member)auth.getDetails();
		System.out.println(tag+ " user id: "+ user.getId()+ " email: "+ user.getEmail() +" enabled: "+ user.getEnabled());
		
		List<Photo> photo = photoService.selectService(user.getEmail());
		if(photo.size() > 0) {
			String profile_path = photo.get(0).getPhoto_path();
			System.out.println("profile:  "+profile_path);
			session.setAttribute("profile_path", profile_path);
		}

		session.setAttribute("userInfo", user);		

		return "redirect:/home.do";
	}
	
	@RequestMapping(value="logout.do", method=RequestMethod.POST)
	public String logout(HttpSession session) {
		session.invalidate();
		System.out.println(tag+" logout");
		return "redirect:/home.do";
	}
	@RequestMapping(value="fblogout.do", method=RequestMethod.POST)
	public String facebookLogout(HttpSession session) {
		session.invalidate();
		System.out.println(tag+" facebook logout");
		return "123";
	}
}
