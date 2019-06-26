package com.cndy.tt.paging;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.cndy.tt.member.Member;
import com.cndy.tt.admin.Notice;
import com.cndy.tt.board.BoardDTO;
import com.cndy.tt.diary.Diary;

@Repository("pagingDao")
public class PagingDaoImpl implements PagingDao {
	
	private Logger logger = LoggerFactory.getLogger(PagingDaoImpl.class);
	private final String NS = "com.cndy.tt.mybatis.Paging.";
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public List<Diary> selectPaging(PagingVo pagingVo) {
		logger.info("selectPaging() : " + pagingVo);
		return sqlSession.selectList(NS+"selectPaging", pagingVo);
	}
	

	@Override
	public int selectTotalPaging() {
		logger.info("selectTotalPaging()");
		return sqlSession.selectOne(NS+"selectTotalPaging");
	}

	
	@Override
	public boolean insert(Diary diary) {
		logger.info("insert() : " + diary);
		return sqlSession.insert(NS+"insert", diary)==1 ? true : false;
	}
	@Override
	public boolean deleteAll() {
		logger.info("deleteAll()");
		return sqlSession.delete(NS+"deleteAll")==0 ? true : false;
	}

	@Override
	public List<Diary> selectDiarySearchPaging(String keyword, PagingVo pagingVo) {
		logger.info("selectDiarySearchPaging()");
		HashMap<String, Object> map = new HashMap<String, Object>();
		System.out.println("keyword: "+keyword);
		System.out.println("pagingVo: "+pagingVo);
		map.put("keyword", keyword);
		map.put("pagingVo", pagingVo);
		return sqlSession.selectList(NS+"selectDiarySearchPaging", map);
	}

	@Override
	public int selectDiarySearchTotalPaging(String keyword) {
		logger.info("selectDiarySearchTotalPaging()");
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("keyword", keyword);
		int total =  sqlSession.selectOne(NS+"selectDiarySearchTotalPaging", map);
		//System.out.println("total: "+total);
		return total;
	}

	@Override
	public List<Member> selectAdminPaging(PagingVo pagingVo) {
		logger.info("selectPaging() : " + pagingVo);
		return sqlSession.selectList(NS+"selectAdminPaging", pagingVo);
	}
	
	@Override
	public int selectAdminTotalPaging() {
		logger.info("selectTotalPaging()");
		return sqlSession.selectOne(NS+"selectAdminTotalPaging");
	}

	@Override
	public List<Member> selectAdminSearchPaging(String searchOpt, String inputText, PagingVo pagingVo) {
		logger.info("selectAdminSearchPaging()");
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("searchOpt", searchOpt);
		map.put("inputText", inputText);
		map.put("pagingVo", pagingVo);
		return sqlSession.selectList(NS+"selectAdminSearchPaging", map);
	}

	@Override
	public int selectAdminSearchTotalPaging(String searchOpt, String inputText) {
		logger.info("selectAdminSearchTotalPaging()");
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("searchOpt", searchOpt);
		map.put("inputText", inputText);
		return sqlSession.selectOne(NS+"selectAdminSearchTotalPaging", map);
	}


	@Override
	public List<Notice> selectNoticePaging(PagingVo pagingVo) {
		logger.info("selectPaging() : " + pagingVo);
		return sqlSession.selectList(NS+"selectNoticePaging", pagingVo);
	}


	@Override
	public int selectNoticeTotalPaging() {
		logger.info("selectNoticeTotalPaging()");
		return sqlSession.selectOne(NS+"selectNoticeTotalPaging");
	}


	@Override
	public List<BoardDTO> selectAdminBoardPaging(PagingVo pagingVo) {
		logger.info("selectAdminBoardPaging()");
		return sqlSession.selectList(NS+"selectBoardPaging", pagingVo);
	}


	@Override
	public int selectAdminTotalPagingService() {
		logger.info("selectAdminTotalPagingService()");
		return sqlSession.selectOne(NS+"selectBoardTotalPaging");
	}


	@Override
	public List<BoardDTO> selectBoardSearchPaging(String searchOpt, String inputText, PagingVo pagingVo) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("searchOpt", searchOpt);
		map.put("inputText", inputText);
		map.put("pagingVo", pagingVo);
		return sqlSession.selectList(NS+"selectBoardSearchPaging", map);
	}

	@Override
	public int selectBoardSearchTotalPaging(String searchOpt, String inputText) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("searchOpt", searchOpt);
		map.put("inputText", inputText);
		return sqlSession.selectOne(NS+"selectBoardSearchTotalPaging", map);
	}

}
