package com.cndy.tt.member;

public class MemberAuthority{
	private String id;
	private String authority;
		
	public MemberAuthority(String id, String authority) {
		this.id = id;
		this.authority = authority;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getAuthority() {
		return authority;
	}
	public void setAuthority(String authority) {
		this.authority = authority;
	}
	
	@Override
	public String toString() {
		return "MemberAuthority [id=" + id + ", authority=" + authority + "]";
	}	
}
