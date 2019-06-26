package com.cndy.tt.admin;

import java.sql.Date;

public class Notice {

	private int notice_no;
	private String admin_id;
	private String title;
	private String content;
	private Date postdate;
	
	public Notice() {}
	public Notice(int notice_no, String admin_id, String title, String content, Date postdate) {
		super();
		this.notice_no = notice_no;
		this.admin_id = admin_id;
		this.title = title;
		this.content = content;
		this.postdate = postdate;
	}
	public int getNotice_no() {
		return notice_no;
	}
	public String getAdmin_id() {
		return admin_id;
	}
	public String getTitle() {
		return title;
	}
	public String getContent() {
		return content;
	}
	public Date getPostdate() {
		return postdate;
	}
	public void setNotice_no(int notice_no) {
		this.notice_no = notice_no;
	}
	public void setAdmin_id(String admin_id) {
		this.admin_id = admin_id;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public void setPostdate(Date postdate) {
		this.postdate = postdate;
	};
	
	




}
