package com.cndy.tt.diary;

import java.sql.Date;

// Model

public class Diary {
	private long diary_no;
	private String email;
	private String title;
	private String region;
	private Date start_date;
	private Date end_date;
	private String diary_content;
	private String company;
	private Date write_date;
	private int count_read;
	private int user_like;
	
	public Diary() {}

	public Diary(long diary_no, String email, String title, String region, Date start_date, Date end_date,
			String diary_content, String company, Date write_date, int count_read, int user_like) {
		this.diary_no = diary_no;
		this.email = email;
		this.title = title;
		this.region = region;
		this.start_date = start_date;
		this.end_date = end_date;
		this.diary_content = diary_content;
		this.company = company;
		this.write_date = write_date;
		this.count_read = count_read;
		this.user_like = user_like;
	}

	public long getDiary_no() {
		return diary_no;
	}

	public void setDiary_no(long diary_no) {
		this.diary_no = diary_no;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getRegion() {
		return region;
	}

	public void setRegion(String region) {
		this.region = region;
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

	public String getDiary_content() {
		return diary_content;
	}

	public void setDiary_content(String diary_content) {
		this.diary_content = diary_content;
	}

	public String getCompany() {
		return company;
	}

	public void setCompany(String company) {
		this.company = company;
	}

	public Date getWrite_date() {
		return write_date;
	}

	public void setWrite_date(Date write_date) {
		this.write_date = write_date;
	}

	public int getCount_read() {
		return count_read;
	}

	public void setCount_read(int count_read) {
		this.count_read = count_read;
	}

	public int getUser_like() {
		return user_like;
	}

	public void setUser_like(int user_like) {
		this.user_like = user_like;
	}


}

