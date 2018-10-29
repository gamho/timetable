package com.cafe24.timetable.main.dao;

import java.util.HashMap;
import java.util.List;

import com.cafe24.timetable.main.vo.SubjectVO;

public interface MainDAO {

	// 과목 리스트 가져오기
	public List<SubjectVO> selectAllSubjects(SubjectVO department);

	// 선택한 과목 리스트 가져오기
	public List<SubjectVO> selectSubjects(HashMap hm);

	// 선택한 과목 리스트 삽입하기
	public List<SubjectVO> insertSubjects(HashMap hm2);

}
