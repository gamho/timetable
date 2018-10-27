package com.cafe24.timetable.main.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.cafe24.timetable.main.service.MainService;
import com.cafe24.timetable.main.vo.CommentVO;
import com.cafe24.timetable.main.vo.ProjectVO;


@Controller
public class MainController {

	@Inject
	MainService mainService;
	
	// GET 방식으로 호출되는 userMain 페이지
	@RequestMapping(value="/index", method=RequestMethod.GET)
	public ModelAndView userMain(HttpServletRequest request, HttpServletResponse response) throws Exception {		
		
		System.out.println("!!!!!");
		
		// 세션객체 얻어오기 - 이메일
        HttpSession session = request.getSession();
        String login_email = session.getAttribute("login_email").toString();
        
        // db에 있는 코멘트들 가져오기
 		String mainTitle = session.getAttribute("main_title").toString();
 		String subTitle = session.getAttribute("sub_title").toString();
 		String subComment = session.getAttribute("sub_comment").toString();
 		CommentVO commentVO = new CommentVO(login_email, mainTitle, subTitle, subComment);
        
		ModelAndView mav = new ModelAndView("userMain");
		
		// project list 불러오기
		List<String> projectList = mainService.selectAllProject(login_email);
	
		mav.addObject("projectList", projectList);
		mav.addObject("commentVO", commentVO);
		
		return mav;
		
	}
	
	
	// POST 방식으로 호출되는 userMain 페이지
	/*@RequestMapping(value="/userMain.do", method=RequestMethod.POST)
	public ModelAndView userMain(HttpServletRequest request, HttpServletResponse response, @RequestBody LoginVO loginvo) throws Exception{
	
		System.out.println("@@@@@");
		ModelAndView mav = new ModelAndView("userMain");
		return mav;
		
	}*/

	// 새 프로젝트 db에 추가
	@RequestMapping(value = "/register.do", method = RequestMethod.POST)
	public String register(HttpServletRequest request, HttpServletResponse resopnse, @Valid ProjectVO projectVO) {

		HttpSession session = request.getSession();
		String login_email = session.getAttribute("login_email").toString();

		mainService.insert(projectVO, login_email);
		return "redirect:/userMain.do";
	}

	
	// 수정된 코멘트 info db에 업데이트
	@RequestMapping(value="/modifyComment.do", method=RequestMethod.POST)
	public ModelAndView modifyComment(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		System.out.println("메인 코멘트 POST로 넘기기 - controller 시작");
		
		// 세션객체 얻어오기
        HttpSession session = request.getSession();
        String login_email = session.getAttribute("login_email").toString();
		
		// 코멘트 프론트에서 가져오기
		String mainTitle = request.getParameter("mainTitle");
		String subTitle = request.getParameter("subTitle");
		String subComment = request.getParameter("subComment");
		
		CommentVO commentVO = new CommentVO(login_email, mainTitle, subTitle, subComment);
		
		// 코멘트 세션에 추가
		session.setAttribute("main_title", commentVO.getMain_title());
		session.setAttribute("sub_title", commentVO.getSub_title());
		session.setAttribute("sub_comment", commentVO.getSub_comment());
		
		// 코멘트 기입 내용 db에 추가
		mainService.modifyComment(commentVO);
		
		System.out.println("db 등록 완료!");
		
		ModelAndView mav = new ModelAndView("redirect:/userMain.do");
		mav.addObject("commentVO", commentVO); // mav 형식으로 공유영역에 올리는 방법!
		
		return mav;
		
	}
}
