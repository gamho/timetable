package com.bit.tatab.main.vo;

public class CommentVO {
	
	private int no;
	private String login_email;
	private String main_title;
	private String sub_title;
	private String sub_comment;
	public CommentVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public CommentVO(int no, String login_email, String main_title, String sub_title, String sub_comment) {
		super();
		this.no = no;
		this.login_email = login_email;
		this.main_title = main_title;
		this.sub_title = sub_title;
		this.sub_comment = sub_comment;
	}
	public CommentVO(String login_email, String main_title, String sub_title, String sub_comment) {
		super();
		this.login_email = login_email;
		this.main_title = main_title;
		this.sub_title = sub_title;
		this.sub_comment = sub_comment;
	}
	
	public CommentVO(String login_email) {
		super();
		this.login_email = login_email;
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getLogin_email() {
		return login_email;
	}
	public void setLogin_email(String login_email) {
		this.login_email = login_email;
	}
	public String getMain_title() {
		return main_title;
	}
	public void setMain_title(String main_title) {
		this.main_title = main_title;
	}
	public String getSub_title() {
		return sub_title;
	}
	public void setSub_title(String sub_title) {
		this.sub_title = sub_title;
	}
	public String getSub_comment() {
		return sub_comment;
	}
	public void setSub_comment(String sub_comment) {
		this.sub_comment = sub_comment;
	}
	@Override
	public String toString() {
		return "CommentVO [no=" + no + ", login_email=" + login_email + ", main_title=" + main_title + ", sub_title="
				+ sub_title + ", sub_comment=" + sub_comment + "]";
	}
	
	
	
	
}
