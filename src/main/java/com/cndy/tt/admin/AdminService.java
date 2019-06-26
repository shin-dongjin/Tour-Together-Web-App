package com.cndy.tt.admin;

import java.util.Date;
import java.util.List;

import com.cndy.tt.member.Member;

public interface AdminService {
	List<String> chartDateService();
	List<Integer> chartNumService();
	List<String> newChartDateService(int startYear, int startMonth, int endYear, int endMonth);
	List<Integer> newChartCountService(int startYear, int startMonth, int endYear, int endMonth);
	int chartGenFService();
	int chartGenMService();
	int chartClsAService();
	int chartClsPService();
	boolean insertNoticeService(Notice notice);
	void deleteNoticeService(long notice_no);
	List<Member> chartCountryService();
	List<Integer> chartCountryCountService();
	List<Notice> selectNoticeContent(long notice_no);
	boolean editNotice(Notice notice);
	Notice selectAllNotice();
}
