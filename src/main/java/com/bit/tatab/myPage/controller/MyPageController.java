package com.bit.tatab.myPage.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.bit.tatab.main.vo.MyPageVO;
import com.bit.tatab.myPage.service.MyPageService;


@Controller
public class MyPageController {

	@Inject
	MyPageService myPageService;
	
	// GET 방식으로 호출되는 myPage 페이지
	@RequestMapping(value="/myPage.do", method=RequestMethod.GET)
	public ModelAndView userMain(HttpServletRequest request, HttpServletResponse response) throws Exception {		
		
		ModelAndView mav = new ModelAndView("myPage");
		
		return mav;
		
	}
	
	// 수정된 코멘트 info db에 업데이트
		@RequestMapping(value="/modifyMyPage.do", method=RequestMethod.POST)
		public ModelAndView modifyMyPage(HttpServletRequest request, HttpServletResponse response) throws Exception {
			
			System.out.println("마이페이지 수정 POST로 넘기기 - controller 시작");
			
			// 세션객체 얻어오기
	        HttpSession session = request.getSession();
	        String login_email = session.getAttribute("login_email").toString();
	        String login_name = session.getAttribute("login_name").toString();
			
			// 코멘트 프론트에서 가져오기  - 별명, 모토, 학과/부서, 생년월일, 집주소, 전화번호
			String nickname = request.getParameter("nickname");
			String dob = request.getParameter("dob");
			String motto = request.getParameter("motto");
			String department = request.getParameter("department");
			String gender = "성별";
			String address = request.getParameter("address");
			String phone_number = request.getParameter("phone_number");
			
			MyPageVO myPageVO = new MyPageVO(login_email, login_name, nickname, dob, motto, department, gender, address, phone_number);
			
			// 코멘트 세션에 추가 - 이메일, 이름, 별명, 모토, 학과/부서, 생년월일, 집주소, 전화번호
			session.setAttribute("myPageVO", myPageVO);
			
			// 코멘트 기입 내용 db에 추가
			myPageService.modifyMyPage(myPageVO);
			
			System.out.println("db 등록 완료!");
			
			ModelAndView mav = new ModelAndView("redirect:/userMain.do");
			mav.addObject("myPageVO", myPageVO); // mav 형식으로 공유영역에 올리는 방법!
			
			return mav;
	
}
}
