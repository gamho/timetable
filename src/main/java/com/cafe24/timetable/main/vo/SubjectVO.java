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
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((class_time == null) ? 0 : class_time.hashCode());
		result = prime * result + ((classroom == null) ? 0 : classroom.hashCode());
		result = prime * result + ((prof == null) ? 0 : prof.hashCode());
		result = prime * result + ((sub_name == null) ? 0 : sub_name.hashCode());
		return result;
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		SubjectVO other = (SubjectVO) obj;
		if (class_time == null) {
			if (other.class_time != null)
				return false;
		} else if (!class_time.equals(other.class_time))
			return false;
		if (classroom == null) {
			if (other.classroom != null)
				return false;
		} else if (!classroom.equals(other.classroom))
			return false;
		if (prof == null) {
			if (other.prof != null)
				return false;
		} else if (!prof.equals(other.prof))
			return false;
		if (sub_name == null) {
			if (other.sub_name != null)
				return false;
		} else if (!sub_name.equals(other.sub_name))
			return false;
		return true;
	}
	
	

	
}
