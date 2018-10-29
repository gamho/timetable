package com.cafe24.timetable.main.vo;

public class TimeTableVO {

	private int no;
	private String sub_name;
	private String class_time;
	private String prof;
	private String classroom;

	public TimeTableVO() {
		super();
	}

	public TimeTableVO(int no, String sub_name, String class_time, String prof, String classroom) {
		super();
		this.no = no;
		this.sub_name = sub_name;
		this.class_time = class_time;
		this.prof = prof;
		this.classroom = classroom;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getSub_name() {
		return sub_name;
	}

	public void setSub_name(String sub_name) {
		this.sub_name = sub_name;
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

	@Override
	public String toString() {
		return "TimeTableVO [no=" + no + ", sub_name=" + sub_name + ", class_time=" + class_time + ", prof=" + prof
				+ ", classroom=" + classroom + "]";
	}

}
