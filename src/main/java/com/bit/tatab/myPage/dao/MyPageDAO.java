package com.bit.tatab.myPage.dao;

import com.bit.tatab.main.vo.MyPageVO;

public interface MyPageDAO {
	
	// 새 코멘트 info db에 추가
	public void modifyMyPage(MyPageVO myPageVO);
	
}
