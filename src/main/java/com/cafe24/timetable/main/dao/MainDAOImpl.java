package com.cafe24.timetable.main.dao;


import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.cafe24.timetable.main.vo.SubjectVO;


@Repository
public class MainDAOImpl implements MainDAO {

	@Inject
	private SqlSession sqlSession;

	@Override
	public List<SubjectVO> selectAllSubjects() {
		List<SubjectVO> subjectList = sqlSession.selectList("selectAllSubjects");
		return subjectList;
	}

	@Override
	public List<SubjectVO> selectSubjects(HashMap hm) {
		List<SubjectVO> subjectList = sqlSession.selectList("selectSubjects", hm);
		return subjectList;
	}

	@Override
	public void insertSubjects(HashMap hm2) {

		List<SubjectVO> list = (List<SubjectVO>)hm2.get("subjectList");
		System.out.println("삽입할 리스트 값들 : " + list.toString()); // 잘 넘어오는 것 확인됨.
		/*for(SubjectVO vo : list) {
		
		}*/
		
		
		sqlSession.insert("insertSubjects", list);
	}
	
	

	
	
	/*@Override
	public List<String> selectAllProject(String login_email) {
		
		Map<String, Object> param = new HashMap<String, Object>();
		param.put("login_email", login_email);
		
		List<ProjectVO> projectList = sqlSession.selectList("selectAllProject", param);
		List<String> projectNameList = new ArrayList<String>();
		
		for(int i=0; i<projectList.size(); i++) {
			projectNameList.add( projectList.get(i).getProject_name());
		}
		
		System.out.println("dao selectAllProject()" + projectNameList);
		return projectNameList;
	}
*/
	
	

}
