package com.cndy.tt.board;

import java.sql.Date;

public class BoardDTO {
	int board_no;
	String id;
	String title;
	int board_type;
	String board_content;
	Date start_date;
	Date end_date;
	int tour_time;
	String region;
	int budget;
	int company;
	Date write_date;
	int read_count;
	String photo_path;
	
	public BoardDTO(){}
	
	public BoardDTO(String title, String id, Date start_date, Date end_date, int budget, int company,
			int board_type,String board_content,int tour_time, String region,String photo_path) {
		this.title = title;
		this.id = id;
		this.start_date = start_date;
		this.end_date = end_date;
		this.budget = budget;
		this.company = company;
		this.board_type = board_type;
		this.board_content = board_content;
		this.tour_time = tour_time;
		this.region = region;
		this.photo_path = photo_path;
	}
	
	public BoardDTO(int board_no, String id, String title, int board_type, String board_content, Date start_date,
			Date end_date, int tour_time, String region, int budget, int company, Date write_date, int read_count,
			String photo_path) {
		this.board_no = board_no;
		this.id = id;
		this.title = title;
		this.board_type = board_type;
		this.board_content = board_content;
		this.start_date = start_date;
		this.end_date = end_date;
		this.tour_time = tour_time;
		this.region = region;
		this.budget = budget;
		this.company = company;
		this.write_date = write_date;
		this.read_count = read_count;
		this.photo_path = photo_path;
	}
	
	public int getBoard_no() {
		return board_no;
	}
	public void setBoard_no(int board_no) {
		this.board_no = board_no;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public int getBoard_type() {
		return board_type;
	}
	public void setBoard_type(int board_type) {
		this.board_type = board_type;
	}
	public String getBoard_content() {
		return board_content;
	}
	public void setBoard_content(String board_content) {
		this.board_content = board_content;
	}
	public Date getStart_date() {
		return start_date;
	}
	public void setStart_date(Date start_date) {
		this.start_date = start_date;
	}
	public Date getEnd_date() {
		return end_date;
	}
	public void setEnd_date(Date end_date) {
		this.end_date = end_date;
	}
	public int getTour_time() {
		return tour_time;
	}
	public void setTour_time(int tour_time) {
		this.tour_time = tour_time;
	}
	public String getRegion() {
		return region;
	}
	public void setRegion(String region) {
		this.region = region;
	}
	public int getBudget() {
		return budget;
	}
	public void setBudget(int budget) {
		this.budget = budget;
	}
	public int getCompany() {
		return company;
	}
	public void setCompany(int company) {
		this.company = company;
	}
	public Date getWrite_date() {
		return write_date;
	}
	public void setWrite_date(Date write_date) {
		this.write_date = write_date;
	}
	public int getRead_count() {
		return read_count;
	}
	public void setRead_count(int read_count) {
		this.read_count = read_count;
	}
	public String getPhoto_path() {
		return photo_path;
	}
	public void setPhoto_path(String photo_path) {
		this.photo_path = photo_path;
	}

}