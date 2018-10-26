package com.bit.tatab.login.vo;

public class LoginVO {

	private String login_email;
	private String login_name;
	
	public LoginVO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public LoginVO(String login_email, String login_name) {
		super();
		this.login_email = login_email;
		this.login_name = login_name;
	}

	public String getLoginEmail() {
		return login_email;
	}

	public void setLoginEmail(String login_email) {
		this.login_email = login_email;
	}

	public String getLoginName() {
		return login_name;
	}

	public void setLoginName(String login_name) {
		this.login_name = login_name;
	}

	@Override
	public String toString() {
		return "LoginVO [login_email=" + login_email + ", login_name=" + login_name + "]";
	}
	
	
	
}
