package com.CampusQuotient.POJO;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

@Document(collection="UserDat")
public class LoginRegisterationEntity {

@NotNull(message="Enter the Name")
@Pattern(regexp="A-Za-z", message="Enter the proper name")
private String name;
@NotNull(message="Enter the username")
@Id
private String Username;
private String Email;
private String Password;
private String Repassword;
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getUsername() {
	return Username;
}
public void setUsername(String Username) {
	this.Username = Username;
}
public String getEmail() {
	return Email;
}
public void setEmail(String Email) {
	this.Email = Email;
}
public String getPassword() {
	return Password;
}
public void setPassword(String Password) {
	this.Password = Password;
}
public String getRepassword() {
	return Repassword;
}
public void setRepassword(String Repassword) {
	this.Repassword = Repassword;
}

}
