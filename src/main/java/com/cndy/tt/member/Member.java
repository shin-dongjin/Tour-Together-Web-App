package com.cndy.tt.member;

import java.sql.Date;

import java.util.Collection;

import org.springframework.security.core.GrantedAuthority;

import org.springframework.security.core.userdetails.UserDetails;

public class Member implements UserDetails {
	String tag= " [ Member ] ";

	private static final long serialVersionUID = -4706278953076779762L;
	
	private String id;
	private String password;
	private int enabled;
	private String first_name;
	private String last_name;
	private long member_class;
	private Date join_date;
	private Date use_date;
	private String intro;
	private String country;
	private String gender;
	private String birthday;
	private String email;
	private String telephone;
	private long login_type;
	private Collection<? extends GrantedAuthority> authorities;
	
	public Member() {}
	
	public Member(String id, String password, String email, Collection<? extends GrantedAuthority> authorities){
		this.id = id;
		this.password = password;
		this.email = email;
		this.authorities = authorities;
	}
	
	public Member(String id, String password, int enabled, String first_name, String last_name,
			long member_class, Date join_date, Date use_date, String intro, String country, String gender,
			String birthday, String email, String telephone, long login_type) {
		this.id = id;
		this.password = password;
		this.enabled = enabled;
		this.first_name = first_name;
		this.last_name = last_name;
		this.member_class = member_class;
		this.join_date = join_date;
		this.use_date = use_date;
		this.intro = intro;
		this.country = country;
		this.gender = gender;
		this.birthday = birthday;
		this.email = email;
		this.telephone = telephone;
		this.login_type = login_type;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public int getEnabled() {
		return enabled;
	}

	public void setEnabled(int enabled) {
		this.enabled = enabled;
	}

	public String getFirst_name() {
		return first_name;
	}

	public void setFirst_name(String first_name) {
		this.first_name = first_name;
	}

	public String getLast_name() {
		return last_name;
	}

	public void setLast_name(String last_name) {
		this.last_name = last_name;
	}

	public long getMember_class() {
		return member_class;
	}

	public void setMember_class(long member_class) {
		this.member_class = member_class;
	}

	public Date getJoin_date() {
		return join_date;
	}

	public void setJoin_date(Date join_date) {
		this.join_date = join_date;
	}

	public Date getUse_date() {
		return use_date;
	}

	public void setUse_date(Date use_date) {
		this.use_date = use_date;
	}

	public String getIntro() {
		return intro;
	}

	public void setIntro(String intro) {
		this.intro = intro;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getBirthday() {
		return birthday;
	}

	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getTelephone() {
		return telephone;
	}

	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}
	
	public long getLogin_type() {
		return login_type;
	}

	public void setLogin_type(long login_type) {
		this.login_type = login_type;
	}
	

	public void setPassword(String password) {
		this.password = password;
	}

	@Override
	public Collection<? extends GrantedAuthority> getAuthorities() {
		System.out.println(tag+" getAuthorities()");
		return authorities;
	}
	
	public void setAuthorities(Collection<? extends GrantedAuthority> authorities) {
		System.out.println(tag+" setAuthorities()");
		this.authorities = authorities;
	}

	@Override
	public String getPassword() {
		// TODO Auto-generated method stub
		return password;
	}

	@Override
	public String getUsername() {
		// TODO Auto-generated method stub
		return id;
	}

	@Override
	public boolean isAccountNonExpired() {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean isAccountNonLocked() {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean isCredentialsNonExpired() {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean isEnabled() {
		// TODO Auto-generated method stub
		if(enabled == 0) {
			return false;
		}else {
			return true;
		}
	}

	@Override
	public String toString() {
		return "Member [id=" + id + ", password=" + password + ", enabled=" + enabled + ", first_name=" + first_name
				+ ", last_name=" + last_name + ", member_class=" + member_class
				+ ", join_date=" + join_date + ", use_date=" + use_date + ", intro=" + intro + ", country=" + country
				+ ", gender=" + gender + ", birthday=" + birthday + ", email=" + email + ", telephone=" + telephone
				+ ", login_type=" + login_type + ", authorities=" + authorities +"]";
	}
}
