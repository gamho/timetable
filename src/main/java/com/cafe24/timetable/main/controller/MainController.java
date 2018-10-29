package com.cafe24.timetable.main.controller;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.cafe24.timetable.main.service.MainService;
import com.cafe24.timetable.main.vo.SubjectVO;
import com.cafe24.timetable.main.vo.TimeTableVO;


@Controller
public class MainController {

	@Inject
	MainService mainService;
	
	// POST 방식으로 호출되는 과목 리스트 - 추후에 조건 적용함에 따라 get으로 바뀔 수도 있으니, 참고할 것.
	@RequestMapping(value="/selection.do", method=RequestMethod.POST)
	public ModelAndView selection(HttpServletRequest request, HttpServletResponse response) throws Exception {		
		
		System.out.println("selection.do 컨트롤러 시작");
		
        // db에 있는 과목들 가져오기 - SubjectVO
 		List<SubjectVO> subjectList = mainService.selectAllSubjects();
	
 		// 세션에 받아온 객체 추가 - redirect 대응
 		HttpSession session = request.getSession();
 		session.setAttribute("subjectList", subjectList);
 		
		ModelAndView mav = new ModelAndView("redirect:/index.jsp");
		
		mav.addObject("subjectList", subjectList);
		
		System.out.println("넘어온 과목 리스트 ");
	
		return mav;
		
	}
	
	// POST 방식을 호출되는 시간표 제작
		@RequestMapping(value="/createTable.do", method=RequestMethod.POST)
		public ModelAndView createTable(HttpServletRequest request, HttpServletResponse response, int[] checkbox) throws Exception{
			
			
			System.out.println("createTable.do 컨트롤러 시작");
			
			// 넘어온 체크박스 값 확인
			for(int i=0; i<checkbox.length; i++) {
				System.out.println("체크박스 값 : " + checkbox[i]);
			}
			
			// 체크박스 값들 해쉬맵에 삽입
			HashMap hm = new HashMap();
			hm.put("checkbox", checkbox);
			
			// db에 있는 해당 과목들 가져오기 - SubjectVO
			List<SubjectVO> subjectList = (List<SubjectVO>)mainService.selectSubjects(hm);
			System.out.println("가져온 선택과목 리스트 : " + subjectList.toString());
			
			for(SubjectVO vo : subjectList) {
				System.out.println(vo);
			}
			
			
//			------------------여기까지 되는 부분---------------------
			
			// 해쉬맵에 삽입
			HashMap<String, List<SubjectVO>> hm2 = new HashMap<>();
			hm2.put("subjectList", subjectList);
			
			// 가져온 과목 리스트 db에 저장하기 - TimeTableVO
			mainService.insertSubjects(hm2);
			System.out.println("db 저장 완료");
			
			ModelAndView mav = new ModelAndView("redirect:/index.jsp");
			return mav;
		}
	
	/*
	// POST 방식으로 호출되는 userMain 페이지
	@RequestMapping(value="/userMain.do", method=RequestMethod.POST)
	public ModelAndView userMain(HttpServletRequest request, HttpServletResponse response, @RequestBody LoginVO loginvo) throws Exception{
	
		System.out.println("@@@@@");
		ModelAndView mav = new ModelAndView("userMain");
		return mav;
		
	}

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
		
	}*/
}
