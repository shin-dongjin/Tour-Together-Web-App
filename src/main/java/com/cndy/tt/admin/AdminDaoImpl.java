package com.cndy.tt.admin;

import java.util.Date;
import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.cndy.tt.member.Member;

@Repository("adminDao")
public class AdminDaoImpl implements AdminDao{
	
	@Autowired //
	private SqlSessionTemplate sqlSession;
	private String ns = "com.cndy.tt.mybatis.Member.";
	private String ns2 = "com.cndy.tt.mybatis.Notice.";
	
	@Override
	public List<String> initDateList() {
		List<String> chart = sqlSession.selectList(ns + "initDateSelectAll");
		return chart;
	}
	
	@Override
	public List<Integer> initNumList() {
		List<Integer> chart = sqlSession.selectList(ns + "initCountSelectAll");
		return chart;
	}

	@Override
	public List<String> newDateList(int startYear, int startMonth, int endYear, int endMonth) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		String endDate = null;
		
		String startDate = (startYear+"-"+"0"+startMonth+"-01");
		if(endMonth == 1 || endMonth == 3 || endMonth == 5 || endMonth == 7 || endMonth == 8 || endMonth == 10 || endMonth == 12) {
			endDate = (endYear+"-"+endMonth+"-31");
		}else if(endMonth == 2){
			endDate = (endYear+"-"+endMonth+"-28");
		}else {
			endDate = (endYear+"-"+endMonth+"-30");
		}
		
		map.put("startDate", startDate);
		map.put("endDate", endDate);
		
		List<String> newChart = sqlSession.selectList(ns + "newDateList", map);
		return newChart;
	}
	
	@Override
	public List<Integer> newCountList(int startYear, int startMonth, int endYear, int endMonth) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		String endDate = null;
		
		String startDate = (startYear+"-"+"0"+startMonth+"-01");
		if(endMonth == 1 || endMonth == 3 || endMonth == 5 || endMonth == 7 || endMonth == 8 || endMonth == 10 || endMonth == 12) {
			endDate = (endYear+"-"+endMonth+"-31");
		}else if(endMonth == 2){
			endDate = (endYear+"-"+endMonth+"-28");
		}else {
			endDate = (endYear+"-"+endMonth+"-30");
		}
		
		map.put("startDate", startDate);
		map.put("endDate", endDate);
		
		List<Integer> newChart = sqlSession.selectList(ns + "newCountList", map);
		return newChart;
	}

	@Override
	public int chartGenFList() {
		int chartF = sqlSession.selectOne(ns + "chartF");
		return chartF;
	}

	@Override
	public int chartGenMList() {
		int chartM = sqlSession.selectOne(ns + "chartM");
		return chartM;
	}

	@Override
	public int chartClsAList() {
		int chartClsA = sqlSession.selectOne(ns + "chartClsA");
		return chartClsA;
	}

	@Override
	public int chartClsPList() {
		int chartClsP = sqlSession.selectOne(ns + "chartClsP");
		return chartClsP;
	}

	@Override
	public boolean insertNotice(Notice notice) {
		int i = sqlSession.insert(ns2 + "insertNotice", notice);
		if(i>0) return true;
		else return false;
	}

	@Override
	public void deleteNotice(long notice_no) {
		sqlSession.delete(ns2 + "deleteNotice", notice_no);
	}

	@Override
	public List<Member> selectCountry() {
		List<Member> chartCountry = sqlSession.selectList(ns + "chartCountry");
		return chartCountry;
	}

	@Override
	public List<Integer> selectCountryCount() {
		List<Integer> chartCountryCount = sqlSession.selectList(ns + "chartCountryCount");
		return chartCountryCount;
	}

	@Override
	public List<Notice> selectNoticeContent(long notice_no) {
		List<Notice> selectNoticeContent = sqlSession.selectList(ns2 + "selectNotice", notice_no);
		return selectNoticeContent;
	}

	@Override
	public boolean editNotice(Notice notice) {
		int i = sqlSession.update(ns2 + "updateNotice", notice);
		if(i>0) return true;
		else return false;
	}
	
   @Override
   public Notice selectNoticeAll() {
      Notice selectNoticeAll = sqlSession.selectOne(ns2 + "selectAllNotice");
      return selectNoticeAll;
   }
}
