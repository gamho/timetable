package com.bit.tatab.main.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.bit.tatab.main.dao.MainDAO;
import com.bit.tatab.main.vo.CommentVO;
import com.bit.tatab.main.vo.ProjectVO;



@Service
public class MainServiceImpl implements MainService{

	@Inject
	private MainDAO mainDao;

	// 프로젝트 생성
	@Override
	public void insert(ProjectVO project, String login_email) {
		mainDao.insert(project, login_email);
	}

	// 해당 id가 속한 프로젝트 리스트 불러오기
	@Override
	public List<String> selectAllProject(String login_email) {
		List<String> projectList = mainDao.selectAllProject(login_email);
		return projectList;
	}

	@Override
	public void modifyComment(CommentVO commentVO) {
		// TODO Auto-generated method stub
		mainDao.modifyComment(commentVO);
	}
 
	

 
	
	
}
