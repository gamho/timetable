package com.bit.tatab.myPage.dao;


import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.bit.tatab.main.vo.MyPageVO;


@Repository
public class MyPageDAOImpl implements MyPageDAO {

	@Inject
	private SqlSession sqlSession;

	@Override
	public void modifyMyPage(MyPageVO myPageVO) {
		sqlSession.update("modifyMyPage", myPageVO);
	}
	
	

}
