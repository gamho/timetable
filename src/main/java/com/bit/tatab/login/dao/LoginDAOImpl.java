package com.bit.tatab.login.dao;


import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.bit.tatab.login.vo.LoginVO;
import com.bit.tatab.main.vo.CommentVO;
import com.bit.tatab.main.vo.MyPageVO;

@Repository
public class LoginDAOImpl implements LoginDAO {

	@Inject
	private SqlSession sqlSession;

	// 로그인 info db에 존재하는지 확인(검색)
	@Override
	public List<LoginVO> memberInfoFind(LoginVO loginVO) {
		return sqlSession.selectList("loginInfoFind", loginVO);
	}

	// 로그인 info db에  추가
	@Override
	public void memberInfoInsert(LoginVO loginVO) {
		System.out.println("dao에서 확인! " + loginVO.getLoginEmail() + ", " + loginVO.getLoginName());
		sqlSession.insert("loginInfoInsert", loginVO);
	}

	// 코멘트 관련 info db에 존재하는지 확인(검색)
	@Override
	public CommentVO mainCommentFind(LoginVO loginVO) {
		CommentVO comment = sqlSession.selectOne("mainCommentFind", loginVO);
		return comment;
	}

	// 코멘트 관련 info db에 추가
	@Override
	public void mainCommentInsert(CommentVO commentVO) {
		sqlSession.insert("mainCommentInsert", commentVO);
	}

	// 마이페이지 관련 info db에 존재하는지 확인(검색)
	@Override
	public MyPageVO myPageInfoFind(LoginVO loginVO) {
		MyPageVO myPage = sqlSession.selectOne("myPageInfoFind", loginVO);
		return myPage;
	}

	// 마이페이지 관련 info db에 추가
	@Override
	public void myPageInfoInsert(MyPageVO myPageVO) {
		sqlSession.insert("myPageInfoInsert", myPageVO);
	}
	
	
	


}
