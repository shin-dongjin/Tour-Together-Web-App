package com.cndy.tt.board;

import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

@Service("BoardService")
public class BoardService {
	@Resource(name="boardDao")
	private BoardDAO dao;
	public List<BoardDTO> listService(int type){
		return dao.list(type);
	}
	
	public List<BoardDTO> pageService(HashMap map){
		return dao.pageList(map);
	}
	public List<BoardDTO> pageServiceWithKeyword(HashMap map){
		return dao.pageListWithKeyword(map);
	}
	public void insert(BoardDTO dto,HttpSession session){
		dao.insert(dto,session);
	}
	public HashMap<String, String> chat_service(String chating_email1,String chating_email2){
		return dao.chat_make(chating_email1, chating_email2);
	}
	public BoardDTO content(long board_no){
		return dao.content(board_no);
	}
	public String content_photo(String id){
		return dao.content_photo(id);
	}
	public List<HashMap<String,String>> location(long board_no){
		return dao.content_location(board_no);
	}
	public List<HashMap<String,String>> chating(String id){
		return dao.chat_list(id);
	}
	public void delete(long board_no){
		dao.delete(board_no);
	}
	
	public HashMap<String, Integer> indexService(){
		HashMap<String, Integer> board = new HashMap<String, Integer>();
		board.put("touristCount", dao.touristCount());
		board.put("guideCount", dao.guideCount());
		board.put("boardThisMonth", dao.thisMonth());
		board.put("boardThisWeek", dao.thisWeek());

		return board;
	}
	//new
	public boolean blockService(List<String> ids) {
		int check = 0;
		for(int i=0; i<ids.size(); i++) {
			check += dao.block(ids.get(i));
		}
		if(ids.size() == check) return true;
		else return false;
	}
}
