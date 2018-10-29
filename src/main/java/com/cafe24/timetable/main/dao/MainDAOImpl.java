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
	public List<SubjectVO> selectAllSubjects(SubjectVO department) {
		List<SubjectVO> subjectList = sqlSession.selectList("selectAllSubjects", department);
		return subjectList;
	}

	@Override
	public List<SubjectVO> selectSubjects(HashMap hm) {
		List<SubjectVO> subjectList = sqlSession.selectList("selectSubjects", hm);
		return subjectList;
	}

	@Override
	public List<SubjectVO> insertSubjects(HashMap hm2) {

		List<SubjectVO> list = (List<SubjectVO>) hm2.get("subjectList");

		int last_num = 1;
		try {
			last_num = sqlSession.selectOne("selectLastNo");
			last_num = last_num + 1;
		} catch (NullPointerException e) {
		}

		SubjectVO.setLast_num(last_num);

		sqlSession.insert("insertSubjects", list);
		List<SubjectVO> list3 = sqlSession.selectList("selectAllTimeTables");
		return list3;
	}

}
