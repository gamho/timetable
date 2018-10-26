package com.bit.tatab.main.vo;

public class MyPageVO {

	private String login_email;
	private String login_name;
	private String nickname;
	private String dob;
	private String motto;
	private String department;
	private String gender;
	private String address;
	private String phone_number;
	public MyPageVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public MyPageVO(String login_email, String login_name, String nickname, String dob, String motto, String department,
			String gender, String address, String phone_number) {
		super();
		this.login_email = login_email;
		this.login_name = login_name;
		this.nickname = nickname;
		this.dob = dob;
		this.motto = motto;
		this.department = department;
		this.gender = gender;
		this.address = address;
		this.phone_number = phone_number;
	}
	public MyPageVO(String login_email, String login_name, String nickname, String dob, String motto, String department,
			String address, String phone_number) {
		super();
		this.login_email = login_email;
		this.login_name = login_name;
		this.nickname = nickname;
		this.dob = dob;
		this.motto = motto;
		this.department = department;
		this.address = address;
		this.phone_number = phone_number;
	}
	public MyPageVO(String login_email, String login_name, String nickname, String dob, String motto) {
		super();
		this.login_email = login_email;
		this.login_name = login_name;
		this.nickname = nickname;
		this.dob = dob;
		this.motto = motto;
	}
	public MyPageVO(String login_email, String login_name) {
		super();
		this.login_email = login_email;
		this.login_name = login_name;
	}
	public String getLogin_email() {
		return login_email;
	}
	public void setLogin_email(String login_email) {
		this.login_email = login_email;
	}
	public String getLogin_name() {
		return login_name;
	}
	public void setLogin_name(String login_name) {
		this.login_name = login_name;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getDob() {
		return dob;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
	public String getMotto() {
		return motto;
	}
	public void setMotto(String motto) {
		this.motto = motto;
	}
	public String getDepartment() {
		return department;
	}
	public void setDepartment(String department) {
		this.department = department;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPhone_number() {
		return phone_number;
	}
	public void setPhone_number(String phone_number) {
		this.phone_number = phone_number;
	}
	@Override
	public String toString() {
		return "MyPageVO [login_email=" + login_email + ", login_name=" + login_name + ", nickname=" + nickname
				+ ", dob=" + dob + ", motto=" + motto + ", department=" + department + ", gender=" + gender
				+ ", address=" + address + ", phone_number=" + phone_number + "]";
	}
	
   
   
   
   
}