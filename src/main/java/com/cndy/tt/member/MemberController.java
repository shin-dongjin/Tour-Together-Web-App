package com.cndy.tt.member;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.Locale;

import javax.annotation.Resource;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONArray;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.cndy.tt.login.CustomAuthenticationProvider;

@Controller
@RequestMapping("/member")
public class MemberController {
	@Autowired
	MemberDao memberDao;
	
	@Resource(name="memberService")
	private MemberService memberService;
	
	@Resource(name="customAuthenticationProvider")
	CustomAuthenticationProvider authenticationProvider;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String index() {
		return "index";
	}
	
    @RequestMapping(value = "/add03", method = RequestMethod.POST)
    @ResponseBody//占쌘뱄옙 占쏙옙체占쏙옙 HTTP 占쏙옙청占쏙옙 body 占쏙옙占쏙옙占쏙옙占쏙옙 占쏙옙占쏙옙占싹댐옙 占쏙옙占쏙옙
    public void addFacebookMember(@ModelAttribute Member member, HttpSession session) {//��ü������ �����ǰ� ��� MemberŸ�� ��ü�� �˾Ƽ� �������? http://springmvc.egloos.com/535572
        System.out.println("MemberController - addFacebookMember()");
  
        long checkIdNum = memberService.checkIdService(member);//�ش� id�� �� ���� count�� ������������ list�ؼ� �������°� ���� ��? ���� �ӵ��� �హ���� �������°� ��������?
        member.setEnabled(1);
        member.setLogin_type(2);
        
        if(checkIdNum < 1) {//페이스북에서 넘어온 id값이 db에 없을 때만 db에 저장
           member.setPassword("face_book_login");//페북사용자 임의 비밀번호 지정
           memberService.insertService(member);
        }
        session.setAttribute("member", member);
        System.out.println("member: "+member);
    }
    
    @RequestMapping(value = "/addGoogleMember", method = RequestMethod.POST)
    @ResponseBody//占쌘뱄옙 占쏙옙체占쏙옙 HTTP 占쏙옙청占쏙옙 body 占쏙옙占쏙옙占쏙옙占쏙옙 占쏙옙占쏙옙占싹댐옙 占쏙옙占쏙옙
    public void addGoogleMember(@ModelAttribute Member member, HttpSession session) {//��ü������ �����ǰ� ��� MemberŸ�� ��ü�� �˾Ƽ� �������? http://springmvc.egloos.com/535572
        System.out.println("MemberController - addGoogleMember()");
  
        long checkIdNum = memberService.checkIdService(member);//�ش� id�� �� ���� count�� ������������ list�ؼ� �������°� ���� ��? ���� �ӵ��� �హ���� �������°� ��������?
        member.setEnabled(1);
        member.setLogin_type(3);        
        System.out.println("member: "+member);
        System.out.println("member id: "+member.getId());
        System.out.println("checkIdNum: "+checkIdNum);
        if(checkIdNum < 1) {//페이스북에서 넘어온 id값이 db에 없을 때만 db에 저장
        	System.out.println("google user DB 저장");
           member.setPassword("google_login");//페북사용자 임의 비밀번호 지정
           memberService.insertService(member);
        }
        session.setAttribute("member", member);
        System.out.println("member: "+member);
    }
    
    @RequestMapping(value = "/sessionoff", method = RequestMethod.POST)
    public void sessionOff(HttpSession session) {
    	System.out.println("MemberController - sessionOff()");
    	session.invalidate();
    	//session.removeAttribute("member");
    }
    
    @RequestMapping(value = "/profile", method = RequestMethod.GET)
    //@ResponseBody
    public String profile(Model model, HttpServletRequest request) {
    	System.out.println("MemberController - profile()");
    	HttpSession session = request.getSession();
    	Member user = (Member)session.getAttribute("userInfo");
    	System.out.println("id: "+user.getId());
    	Member member = memberService.profileContentService(user.getId());//占쏙옙占쏙옙 占쏙옙占쏙옙占쏙옙 占쌕쏙옙 占싸깍옙占쏙옙占싹몌옙占�-占쏙옙占실몌옙占쏙옙퓬占� id占쏙옙占쏙옙 null占싸듸옙

        model.addAttribute("member", member);
    	model.addAttribute("firstname", member.getFirst_name());
    	model.addAttribute("lastname", member.getLast_name());
    	model.addAttribute("gender", member.getGender());
    	model.addAttribute("birthday", member.getBirthday());
    	model.addAttribute("email", member.getEmail());
    	
    	//"https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=107653436827534&height=50&width=50&ext=1532586109&hash=AeRTJwySruGrzWKS"
    	
    	//File fStore = new File(Path.FILE_STORE+"20180613063200aae0f291-4828-46da-a39e-524101ae7322.jpg");
/*		if(!fStore.exists()) fStore.mkdirs();

        File files[] = fStore.listFiles();
        if(files.length == 0){
        }else{
	        for(File f: files){
	        	
	        }
        }*/
        
    	/*  response.setContentType( "image/gif" ); 
    	  ServletOutputStream os;
		try {
			os = response.getOutputStream();
			 String imgpath = null;
			  File f = new File(Path.FILE_STORE+"20180613063200aae0f291-4828-46da-a39e-524101ae7322.jpg");
			  if(f.exists()){
				  imgpath = Path.FILE_STORE+"20180613063200aae0f291-4828-46da-a39e-524101ae7322.jpg"; 
				  
			  } 
	    	  FileInputStream fis = new FileInputStream(imgpath);  
	    	  int length; 
	    	  byte[] buffer = new byte[10];
	    	  while ( ( length = fis.read( buffer ) ) != -1 ) 
	    	  os.write( buffer, 0, length );   

		} catch (IOException e) {
			e.printStackTrace();
		}
    	 */
    	  //model.addAttribute("img", f);
    	return "member/profile";
    }
    
    @RequestMapping("/userpic")
    public String listAttach(HttpSession session, HttpServletResponse response) {
    	  response.setContentType( "image/gif" ); 
    	  ServletOutputStream os;
    	  FileInputStream fis = null;
		try {
			os = response.getOutputStream();
			 String imgpath = null;
			  File f = new File(Path.FILE_STORE+"20180613063200aae0f291-4828-46da-a39e-524101ae7322.jpg");
			  if(f.exists()){
				  imgpath = Path.FILE_STORE+"20180613063200aae0f291-4828-46da-a39e-524101ae7322.jpg"; 
			  } 
	    	  fis = new FileInputStream(imgpath);  
	    	  int length; 
	    	  byte[] buffer = new byte[10];
	    	  while ( ( length = fis.read( buffer ) ) != -1 ) 
	    	  os.write( buffer, 0, length );   
	    	  return null;

		} catch (IOException e) {
			e.printStackTrace();
			return null;
		}finally {
			try {
				fis.close();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
    }

	@RequestMapping(value="update", method=RequestMethod.POST)
	public String update(@ModelAttribute Member member, HttpSession session) {
		System.out.println("MemberController - update()");
		System.out.println("intro : "+member.getIntro());
		member.setId((String)session.getAttribute("id"));
		long count = memberService.updateService(member);
		if(count>0) {
			System.out.println("update completed..");
		}else {
			System.out.println("nothing completes..");
		}
		return "redirect:/member/profile";
	}

	@RequestMapping(value = "autocomplete", method = RequestMethod.POST)
	public void AutoTest(Locale locale, Model model, HttpServletRequest request,
			HttpServletResponse resp, Member member) throws IOException {
		System.out.println("MemberController - AutoTest()");

		String result = request.getParameter("term");//
		System.out.println(result);
		List<Member> list = memberDao.autoComplete(result); //result값이 포함되어 있는 emp테이블의 네임을 리턴
		System.out.println("111111");
		JSONArray ja = new JSONArray();
		if(list != null) {
			System.out.println("list is not null");
			for (int i = 0; i < list.size(); i++) {
				ja.add(list.get(i).getEmail());
			}
			System.out.println("222222222");
		}
		System.out.println("4444444444");
		PrintWriter out = resp.getWriter();
		System.out.println("333333333");
		out.print(ja.toString());
		System.out.println("333333333");
	}
}
