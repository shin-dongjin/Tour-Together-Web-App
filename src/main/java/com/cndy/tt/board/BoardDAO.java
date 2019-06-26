package com.cndy.tt.board;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.cndy.tt.file.HandlerFile;

@Repository("boardDao")
public class BoardDAO {
	@Autowired
	private SqlSession sqlSession;
	private final String ns = "com.spring.mybatis.BoardDTO";
	
	private static final String CHATING = "file/chating/";
	
	@Autowired
	ServletContext servletContext;
	
	public List<BoardDTO> list(int type){
		System.out.println("list get");
		List<BoardDTO> list = sqlSession.selectList(ns+".boardSelectAll",type);
		System.out.println("list : "+list);
		return list;
	}
	public List<BoardDTO> pageList(HashMap map){
		List<BoardDTO> list = sqlSession.selectList(ns+".pageSelectAll",map);
		System.out.println("DAO - No Keyword");
		return list;
	}
	public List<BoardDTO> pageListWithKeyword(HashMap map){
		List<BoardDTO> list = sqlSession.selectList(ns+".pageSelectAllWithKeyword", map);
		System.out.println("DAO - WithKeyword");
		return list;
	}
	public void insert(BoardDTO dto,HttpSession session) {
		
		HashMap<String,Object> location = new HashMap<String,Object>();
		JSONArray loc = (JSONArray)session.getAttribute("position");
		String region = (String)session.getAttribute("region");
		System.out.println(region+" : "+loc);
		int board_no = sqlSession.insert(ns+".boardInsert", dto);
		System.out.println(board_no);
		board_no = dto.getBoard_no();
		System.out.println(board_no);
		location.put("board_no", board_no);
		for(int i=0;i<loc.size();i++){
			JSONObject obj = (JSONObject)loc.get(i);
			location.put("jb", obj.get("jb"));
			location.put("ib", obj.get("ib"));
			sqlSession.insert(ns+".locationInsert",location);
			System.out.println("location insert");
		}
		
	}
	public HashMap<String,String> chat_make(String chating_id1,String chating_id2){
		HashMap<String,String> email = new HashMap<String,String>();
		HashMap<String,String> result_chat = new HashMap<String,String>();
		if(!chating_id1.equals(chating_id2)) {
			email.put("chating_member",chating_id1);
			email.put("user_member",chating_id2);
		}
		
		System.out.println(email);
		int num = sqlSession.selectOne(ns+".Chating_search", email);
		if(num>0){
			//Integer chating_room = sqlSession.selectOne(ns+".Chating_select", email);
			result_chat = sqlSession.selectOne(ns+".Chating_select", email);
			System.out.println("chat room_num : "+result_chat.get("room_num"));
			System.out.println("chating_member : "+result_chat.get("chating_member"));
			System.out.println("user_member : "+result_chat.get("user_member"));
			System.out.println("chating_content : "+result_chat.get("chating_content"));
			result_chat.put("chating_member", chating_id1);
			result_chat.put("user_member", chating_id2);
			String photo = sqlSession.selectOne(ns+".boardPhoto",chating_id2);
			result_chat.put("user_photo", photo);
			return result_chat;
		}else{
			String webappRoot = servletContext.getRealPath("/");
			System.out.println(webappRoot);
			String filePath = webappRoot+CHATING;
			//Map<String, String> fileNames = new HandlerFile("D",webappRoot+CHATING).getUploadFileName();
			System.out.println("-----------");
			boolean bool = file_make(filePath,chating_id1+"-"+chating_id2+".txt");
			System.out.println(bool);
			if(bool) {
				email.put("chating_content", filePath+chating_id1+"-"+chating_id2+".txt");
				System.out.println("insert ----- ");
				int no = sqlSession.insert(ns+".chating_insert",email);
				String chat_no = email.get("chat_no");
				System.out.println("chat_no : "+chat_no);
				String photo = sqlSession.selectOne(ns+".boardPhoto",chating_id2);
				email.put("room_num", chat_no);
				email.put("user_photo", photo);
			}else{
				System.out.println("chat room create fail");
			}
		}
		return email;
	}
	boolean file_make(String filePath,String filename){
		System.out.println("filePath : "+filePath);
		File file = new File(filePath);
		FileWriter writer = null;
		if(!file.exists()){
			file.mkdirs();
			System.out.println("created directory successfully!");
			file = new File(filePath+filename);
			System.out.println(file);
		}else{
			file = new File(filePath+filename);
			System.out.println(file);
		}
		try{
			writer = new FileWriter(file);
			System.out.println("DONE");
		}catch(IOException e){
			e.printStackTrace();
			return false;
		}finally {
			try {
				if(writer != null) writer.close();
			}catch(IOException e) {
				e.printStackTrace();
				return false;
			}
		}
		return true;
	}
	public BoardDTO content(long board_no) {
		return sqlSession.selectOne(ns+".contentSelect",board_no);
	}
	public String content_photo(String id){
		return sqlSession.selectOne(ns+".boardPhoto", id);
		}
	public List<HashMap<String,String>> content_location(long board_no) {
		List<HashMap<String,String>> list = sqlSession.selectList(ns+".locationSelect",board_no);
		System.out.println(list);
		return list;
	}
	public List<HashMap<String,String>> chat_list(String id){
		int i = 0;
		List<HashMap<String,String>> list = sqlSession.selectList(ns+".chatingSelect",id);
		List<HashMap<String,String>> chat_photo = new ArrayList<HashMap<String,String>>();
		HashMap<String,String> chat_p = new HashMap<String,String>();
		System.out.println("chatlist : "+list);
		List<String> user_id = new ArrayList<String>();
		System.out.println("maybe this?");
		for(HashMap<String,String> c : list){
			System.out.println(c);
			if(c.get("user_member").equals(id)){
				System.out.println(i+c.get("chating_member"));
				String photo = sqlSession.selectOne(ns+".boardPhoto", c.get("chating_member"));
				System.out.println(chat_p);
				chat_photo.add(i,new HashMap<String,String>(){{
					put("user_id",c.get("chating_member"));
					put("user_photo",photo);
				}});
				System.out.println(chat_photo+"chat");
				i++;
			}else {
				System.out.println(i+c.get("user_member")+"else");
				String photo = sqlSession.selectOne(ns+".boardPhoto", c.get("user_member"));
				chat_photo.add(i,new HashMap<String,String>(){{
					put("user_id",c.get("user_member"));
					put("user_photo",photo);
				}});
				i++;
			}
		}
		System.out.println(user_id);
		return chat_photo;
	}
	
	public void delete(long board_no) {
		System.out.println(board_no+" delete");
		sqlSession.delete(ns+".diaryDelete",board_no);
	}
	
	public int touristCount() {
		return sqlSession.selectOne(ns + ".touristCount");
	}
	
	public int guideCount() {
		return sqlSession.selectOne(ns + ".guideCount");
	}
	
	public int thisMonth() {
		return sqlSession.selectOne(ns + ".boardThisMonth");
	}
	
	public int thisWeek() {
		return sqlSession.selectOne(ns + ".boardThisWeek");
	}
	
	public int block(String id) {
		int i = sqlSession.update(ns + ".blockContent", id);
		return i;
	}
}
