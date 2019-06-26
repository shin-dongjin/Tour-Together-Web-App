package com.cndy.tt.paging;

import java.util.List;


import com.cndy.tt.member.Member;
import com.cndy.tt.admin.Notice;
import com.cndy.tt.board.BoardDTO;
import com.cndy.tt.diary.Diary;

public interface PagingService {
	
	public List<Diary> selectPagingService(PagingVo pagingVo);
	public int selectTotalPagingService();

	public boolean insertService(Diary diary);
	public boolean deleteAllService();
	
	public List<Diary> selectDiarySearchPagingService(String keyword, PagingVo pagingVo);
	public int selectDiarySearchTotalPagingService(String keyword);
	
	public List<Member> selectAdminPagingService(PagingVo pagingVo);
	public int selectAdminTotalPagingService();
	
	public List<Member> selectAdminSearchPagingService(String searchOpt, String inputText, PagingVo pagingVo);
	public int selectAdminSearchTotalPagingService(String searchOpt, String inputText);
	
	public List<Notice> selectNoticePagingService(PagingVo pagingVo);
	public int selectNoticeTotalPagingService();
	
	public List<BoardDTO> selectBoardPagingService(PagingVo pagingVo);
	public int selectBoardTotalPagingService();
	
	public List<BoardDTO> selectAdminBoardSearchService(String searchOpt, String inputText, PagingVo pagingVo);
	public int selectAdminTotalBoardSearchService(String searchOpt, String inputText);
}
