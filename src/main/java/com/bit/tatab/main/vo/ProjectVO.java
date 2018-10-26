package com.bit.tatab.main.vo;

public class ProjectVO {

   private int project_no;
   private String project_name;
   private String project_comment;
   
   public ProjectVO() {
      super();
      // TODO Auto-generated constructor stub
   }

   public ProjectVO(int project_no, String project_name, String project_comment) {
      super();
      this.project_no = project_no;
      this.project_name = project_name;
      this.project_comment = project_comment;
   }

   public ProjectVO(String project_name, String project_comment) {
      super();
      this.project_name = project_name;
      this.project_comment = project_comment;
   }

   public int getProject_no() {
      return project_no;
   }

   public void setProject_no(int project_no) {
      this.project_no = project_no;
   }

   public String getProject_name() {
      return project_name;
   }

   public void setProject_name(String project_name) {
      this.project_name = project_name;
   }

   public String getProject_comment() {
      return project_comment;
   }

   public void setProject_comment(String project_comment) {
      this.project_comment = project_comment;
   }

   @Override
   public String toString() {
      return "ProjectVO [project_no=" + project_no + ", project_name=" + project_name + ", project_comment="
            + project_comment + "]";
   }
   
   
   
   
   
}