package com.cndy.tt.file;

public class Photo {
	private String email;
	private String photo_path;
	
	public Photo() {}

	public Photo( String email, String photo_path) {
		this.email = email;
		this.photo_path = photo_path;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhoto_path() {
		return photo_path;
	}

	public void setPhoto_path(String photo_path) {
		this.photo_path = photo_path;
	}

	@Override
	public String toString() {
		return "Photo [email=" + email + ", photo_path=" + photo_path + "]";
	}
	
}
