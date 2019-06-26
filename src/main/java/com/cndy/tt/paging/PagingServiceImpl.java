package com.cndy.tt.paging;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cndy.tt.member.Member;
import com.cndy.tt.admin.Notice;
import com.cndy.tt.board.BoardDTO;
import com.cndy.tt.diary.Diary;


@Service("pagingService")
public class PagingServiceImpl implements PagingService {
	
	@Autowired
	private PagingDao dao;
	
	@Override
	public List<Diary> selectPagingService(PagingVo pagingVo) {
		return dao.selectPaging(pagingVo);
	}
	@Override
	public int selectTotalPagingService() {
		return dao.selectTotalPaging();
	}

	@Override
	public boolean insertService(Diary diary) {
		return dao.insert(diary);
	}
	@Override
	public boolean deleteAllService() {
		return dao.deleteAll();
	}

	@Override
	public List<Diary> selectDiarySearchPagingService(String keyword, PagingVo pagingVo) {
		return dao.selectDiarySearchPaging(keyword, pagingVo);
	} 
	@Override
	public int selectDiarySearchTotalPagingService(String keyword) {
		return dao.selectDiarySearchTotalPaging(keyword);
	}
	
	@Override
	public List<Member> selectAdminPagingService(PagingVo pagingVo) {
		return dao.selectAdminPaging(pagingVo);
	}
	@Override
	public int selectAdminTotalPagingService() {
		return dao.selectAdminTotalPaging();
	}
	@Override
	public List<Member> selectAdminSearchPagingService(String searchOpt, String inputText, PagingVo pagingVo) {
		return dao.selectAdminSearchPaging(searchOpt, inputText, pagingVo);
	}
	@Override
	public int selectAdminSearchTotalPagingService(String searchOpt, String inputText) {
		return dao.selectAdminSearchTotalPaging(searchOpt, inputText);
	}
	@Override
	public List<Notice> selectNoticePagingService(PagingVo pagingVo) {
		return dao.selectNoticePaging(pagingVo);
	}
	@Override
	public int selectNoticeTotalPagingService() {
		return dao.selectNoticeTotalPaging();
	}
	@Override
	public List<BoardDTO> selectBoardPagingService(PagingVo pagingVo) {		
		return dao.selectAdminBoardPaging(pagingVo);
	}
	@Override
	public int selectBoardTotalPagingService() {
		return dao.selectAdminTotalPagingService();
	}
	@Override
	public List<BoardDTO> selectAdminBoardSearchService(String searchOpt, String inputText, PagingVo pagingVo) {
		return dao.selectBoardSearchPaging(searchOpt, inputText, pagingVo);
	}
	@Override
	public int selectAdminTotalBoardSearchService(String searchOpt, String inputText) {
		return dao.selectBoardSearchTotalPaging(searchOpt, inputText);
	}
	
}
