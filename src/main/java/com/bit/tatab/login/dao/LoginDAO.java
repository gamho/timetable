package com.bit.tatab.login.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import com.bit.tatab.login.vo.LoginVO;
import com.bit.tatab.main.vo.CommentVO;
import com.bit.tatab.main.vo.MyPageVO;

public interface LoginDAO {

	// 로그인 info db에 존재하는지 확인(검색)
	public List<LoginVO> memberInfoFind(LoginVO loginVO);

	// 로그인 info db에  추가
	public void memberInfoInsert(LoginVO loginVO);
	
	// 코멘트 관련 info db에 존재하는지 확인(검색)
	public CommentVO mainCommentFind(LoginVO loginVO);
	
	// 코멘트 관련 로그인 info db에 추가
	public void mainCommentInsert(CommentVO commentVO);

	// 마이페이지 관련 info db에 존재하는지 확인(검색)
	public MyPageVO myPageInfoFind(LoginVO loginVO);

	// 마이페이지 관련 info db에 추가
	public void myPageInfoInsert(MyPageVO myPageVO);
	
}
