package com.cndy.tt.paging;

import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cndy.tt.diary.Diary;
import com.cndy.tt.member.Member;

@Controller
public class PagingController {
	@Resource(name="pagingService")
	private PagingService pagingService;
	

}
