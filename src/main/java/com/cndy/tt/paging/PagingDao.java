package com.cndy.tt.paging;

import java.util.List;

import com.cndy.tt.member.Member;
import com.cndy.tt.admin.Notice;
import com.cndy.tt.board.BoardDTO;
import com.cndy.tt.diary.Diary;

public interface PagingDao {

	public List<Diary> selectPaging(PagingVo pagingVo);
	public int selectTotalPaging();
	
	public boolean insert(Diary diary);
	public boolean deleteAll();
	
	public List<Diary> selectDiarySearchPaging(String keyword, PagingVo pagingVo);
	public int selectDiarySearchTotalPaging(String keyword);
	
	public List<Member> selectAdminPaging(PagingVo pagingVo);
	public int selectAdminTotalPaging();
	
	public List<Member> selectAdminSearchPaging(String searchOpt, String inputText, PagingVo pagingVo);
	public int selectAdminSearchTotalPaging(String searchOpt, String inputText);
	
	public List<Notice> selectNoticePaging(PagingVo pagingVo);
	public int selectNoticeTotalPaging();
	
	public List<BoardDTO> selectAdminBoardPaging(PagingVo pagingVo);
	public int selectAdminTotalPagingService();
	
	public List<BoardDTO> selectBoardSearchPaging(String searchOpt, String inputText, PagingVo pagingVo);
	public int selectBoardSearchTotalPaging(String searchOpt, String inputText);
}
