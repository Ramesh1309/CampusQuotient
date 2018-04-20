package com.CampusQuotient.liveDemo.EntityClass;

import org.springframework.data.mongodb.core.mapping.Document;

@Document
public class UserData {
	private String username;
	private String password;
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}

}
