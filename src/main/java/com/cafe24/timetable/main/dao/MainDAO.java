package com.cafe24.timetable.main.dao;

import java.util.HashMap;
import java.util.List;

import com.cafe24.timetable.main.vo.CommentVO;
import com.cafe24.timetable.main.vo.ProjectVO;
import com.cafe24.timetable.main.vo.SubjectVO;
import com.cafe24.timetable.main.vo.TimeTableVO;

public interface MainDAO {
	
	/*// 해당 id가 속한 프로젝트 리스트 불러오기
	public List<String> selectAllProject(String login_email);*/

	// 과목 리스트 가져오기
	public List<SubjectVO> selectAllSubjects();

	// 선택한 과목 리스트 가져오기
	public List<SubjectVO> selectSubjects(HashMap hm);

	// 선택한 과목 리스트 삽입하기
	public List<SubjectVO> insertSubjects(HashMap hm2);
	
	
}
