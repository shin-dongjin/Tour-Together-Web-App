package com.cndy.tt.comment;

import java.sql.Date;

public class Comment {
	private long comment_no;
	private String email;
	private long board_no;
	private String board_type;
	private String comment_content;
	private Date comment_date;
	private long refer;
	private int lev;
	private int step;
	
	public Comment() {}

	public Comment(long comment_no, String email, long board_no, String board_type, String comment_content,
			Date comment_date, long refer, int lev, int step) {
		super();
		this.comment_no = comment_no;
		this.email = email;
		this.board_no = board_no;
		this.board_type = board_type;
		this.comment_content = comment_content;
		this.comment_date = comment_date;
		this.refer = refer;
		this.lev = lev;
		this.step = step;
	}

	public long getComment_no() {
		return comment_no;
	}

	public void setComment_no(long comment_no) {
		this.comment_no = comment_no;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public long getBoard_no() {
		return board_no;
	}

	public void setBoard_no(long board_no) {
		this.board_no = board_no;
	}

	public String getBoard_type() {
		return board_type;
	}

	public void setBoard_type(String board_type) {
		this.board_type = board_type;
	}

	public String getComment_content() {
		return comment_content;
	}

	public void setComment_content(String comment_content) {
		this.comment_content = comment_content;
	}

	public Date getComment_date() {
		return comment_date;
	}

	public void setComment_date(Date comment_date) {
		this.comment_date = comment_date;
	}

	public long getRefer() {
		return refer;
	}

	public void setRefer(long refer) {
		this.refer = refer;
	}

	public int getLev() {
		return lev;
	}

	public void setLev(int lev) {
		this.lev = lev;
	}

	public int getStep() {
		return step;
	}

	public void setStep(int step) {
		this.step = step;
	}
	
}
