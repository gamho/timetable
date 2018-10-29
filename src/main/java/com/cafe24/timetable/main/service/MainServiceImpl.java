package com.cafe24.timetable.main.service;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.cafe24.timetable.main.dao.MainDAO;
import com.cafe24.timetable.main.vo.SubjectVO;



@Service
public class MainServiceImpl implements MainService{

	@Inject
	private MainDAO mainDAO;

	@Override
	public List<SubjectVO> selectAllSubjects() {
		List<SubjectVO> subjectList = mainDAO.selectAllSubjects();
		return subjectList;
	}

	@Override
	public List<SubjectVO> selectSubjects(HashMap hm) {
		List<SubjectVO> subjectList = mainDAO.selectSubjects(hm);
		return subjectList;
	}

	@Override
	public List<SubjectVO> insertSubjects(HashMap hm2) {
		List<SubjectVO> list3 = mainDAO.insertSubjects(hm2);
		return list3;
		
	}

	
	
	/*// 해당 id가 속한 프로젝트 리스트 불러오기
	@Override
	public List<String> selectAllProject(String login_email) {
		List<String> projectList = mainDao.selectAllProject(login_email);
		return projectList;
	}*/

	
 
	
	
}
