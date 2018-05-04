package com.CampusQuotient.liveDemo.EntityClass;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

@Document(collection="CQFORMS")
public class StudentRegisteration {
	@Id
	private String F_Name;
	private String L_Name;
	private String Email;
	private String Phn_Num;
	private String Reg_Num;
	private String University;
	private String Branch;
	private int YOP;
	public String getF_Name() {
		return F_Name;
	}
	public void setF_Name(String f_Name) {
		F_Name = f_Name;
	}
	public String getL_Name() {
		return L_Name;
	}
	public void setL_Name(String l_Name) {
		L_Name = l_Name;
	}
	public String getEmail() {
		return Email;
	}
	public void setEmail(String email) {
		Email = email;
	}
	public String getPhn_Num() {
		return Phn_Num;
	}
	public void setPhn_Num(String phn_Num) {
		Phn_Num = phn_Num;
	}
	public String getReg_Num() {
		return Reg_Num;
	}
	public void setReg_Num(String reg_Num) {
		Reg_Num = reg_Num;
	}
	public String getUniversity() {
		return University;
	}
	public void setUniversity(String university) {
		University = university;
	}
	public String getBranch() {
		return Branch;
	}
	public void setBranch(String branch) {
		Branch = branch;
	}
	public int getYOP() {
		return YOP;
	}
	public void setYOP(int yOP) {
		YOP = yOP;
	}
	

}
