package com.cafe24.timetable.main.vo;

public class SubjectVO {
	
	private int no;
	private String department;
	private int sub_no;
	private String sub_name;
	private String kind;
	private String stu_no;
	private int stu_limit;
	private String class_time;
	private String prof;
	private String classroom;
	private String remarks;
	public SubjectVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public SubjectVO(int no, String department, int sub_no, String sub_name, String kind, String stu_no, int stu_limit,
			String class_time, String prof, String classroom, String remarks) {
		super();
		this.no = no;
		this.department = department;
		this.sub_no = sub_no;
		this.sub_name = sub_name;
		this.kind = kind;
		this.stu_no = stu_no;
		this.stu_limit = stu_limit;
		this.class_time = class_time;
		this.prof = prof;
		this.classroom = classroom;
		this.remarks = remarks;
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getDepartment() {
		return department;
	}
	public void setDepartment(String department) {
		this.department = department;
	}
	public int getSub_no() {
		return sub_no;
	}
	public void setSub_no(int sub_no) {
		this.sub_no = sub_no;
	}
	public String getSub_name() {
		return sub_name;
	}
	public void setSub_name(String sub_name) {
		this.sub_name = sub_name;
	}
	public String getKind() {
		return kind;
	}
	public void setKind(String kind) {
		this.kind = kind;
	}
	public String getStu_no() {
		return stu_no;
	}
	public void setStu_no(String stu_no) {
		this.stu_no = stu_no;
	}
	public int getStu_limit() {
		return stu_limit;
	}
	public void setStu_limit(int stu_limit) {
		this.stu_limit = stu_limit;
	}
	public String getClass_time() {
		return class_time;
	}
	public void setClass_time(String class_time) {
		this.class_time = class_time;
	}
	public String getProf() {
		return prof;
	}
	public void setProf(String prof) {
		this.prof = prof;
	}
	public String getClassroom() {
		return classroom;
	}
	public void setClassroom(String classroom) {
		this.classroom = classroom;
	}
	public String getRemarks() {
		return remarks;
	}
	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}
	@Override
	public String toString() {
		return "SubjectVO [no=" + no + ", department=" + department + ", sub_no=" + sub_no + ", sub_name=" + sub_name
				+ ", kind=" + kind + ", stu_no=" + stu_no + ", stu_limit=" + stu_limit + ", class_time=" + class_time
				+ ", prof=" + prof + ", classroom=" + classroom + ", remarks=" + remarks + "]";
	}

	
}
