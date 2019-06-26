package com.cndy.tt.admin;

import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.cndy.tt.member.Member;

@Service("adminService")
public class AdminServiceImpl implements AdminService{
	@Resource(name="adminDao")
	private AdminDao adminDao;
	
	@Override
	public List<String> chartDateService() {
		List<String> chart = adminDao.initDateList();		
		return chart;
	}
	

	@Override
	public List<Integer> chartNumService() {
		List<Integer> chart = adminDao.initNumList();		
		return chart;
	}	
	

	@Override
	public List<String> newChartDateService(int startYear, int startMonth, int endYear, int endMonth) {
		List<String> newChart = adminDao.newDateList(startYear, startMonth, endYear, endMonth);		
		return newChart;
	}
	
	@Override
	public List<Integer> newChartCountService(int startYear, int startMonth, int endYear, int endMonth) {
		List<Integer> newChart = adminDao.newCountList(startYear, startMonth, endYear, endMonth);
		return newChart;
	}


	@Override
	public int chartGenFService() {
		int chartGenF = adminDao.chartGenFList();
		return chartGenF;
	}


	@Override
	public int chartGenMService() {
		int chartGenM = adminDao.chartGenMList();
		return chartGenM;
	}


	@Override
	public int chartClsAService() {
		int chartClsA = adminDao.chartClsAList();
		return chartClsA;
	}


	@Override
	public int chartClsPService() {
		int chartClsP = adminDao.chartClsPList();
		return chartClsP;
	}


	@Override
	public boolean insertNoticeService(Notice notice) {
		return adminDao.insertNotice(notice);
	}


	@Override
	public void deleteNoticeService(long notice_no) {
		// TODO Auto-generated method stub
		adminDao.deleteNotice(notice_no);
	}


	@Override
	public List<Member> chartCountryService() {
		return adminDao.selectCountry();
	}


	@Override
	public List<Integer> chartCountryCountService() {
		return adminDao.selectCountryCount();
	}


	@Override
	public List<Notice> selectNoticeContent(long notice_no) {
		return adminDao.selectNoticeContent(notice_no);
	}


	@Override
	public boolean editNotice(Notice notice) {
		return adminDao.editNotice(notice);		
	}
	
   @Override
   public Notice selectAllNotice() {
      return adminDao.selectNoticeAll();
   }

}
