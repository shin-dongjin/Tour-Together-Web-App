package com.cndy.tt.admin;

import java.util.Date;
import java.util.List;

import com.cndy.tt.member.Member;

public interface AdminDao {
	List<String> initDateList();
	List<Integer> initNumList();
	List<String> newDateList(int startYear, int startMonth, int endYear, int endMonth);
	List<Integer> newCountList(int startYear, int startMonth, int endYear, int endMonth);
	int chartGenFList();
	int chartGenMList();
	int chartClsAList();
	int chartClsPList();
	boolean insertNotice(Notice notice);
	void deleteNotice(long notice_no);
	List<Member> selectCountry();
	List<Integer> selectCountryCount();
	List<Notice> selectNoticeContent(long notice_no);
	boolean editNotice(Notice notice);
	Notice selectNoticeAll();
}
