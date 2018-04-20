package com.CampusQuotient.liveDemo.EntityClass;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;

import org.hibernate.validator.constraints.Email;
import org.springframework.data.mongodb.core.mapping.Document;

@Document(collection="UserDat")
public class LoginPOJO {
	@NotNull(message="Enter the username")
	@Pattern(regexp="a-zA-Z0-9",message="Invalid username")
	private String username;
	@NotNull(message="Enter the email")
	@Email(message="Enter the valid email")
	private String email;
	@NotNull(message="Enter the password")
	@Pattern(regexp="a-zA-Z0-9",message="Enter a valid password")
	private String password;
	@NotNull(message="Enter the repassword")
	private String confirm;
	@NotNull(message="Enter the username")
	
	private String name;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getConfirm() {
		return confirm;
	}
	public void setConfirm(String confirm) {
		this.confirm = confirm;
	}

}
