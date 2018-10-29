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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.cafe24.timetable.main.service.MainService;
import com.cafe24.timetable.main.vo.SubjectVO;

@Controller
public class MainController {

	@Inject
	MainService mainService;

	// POST 방식으로 호출되는 과목 리스트
	@RequestMapping(value = "/selection.do", method = RequestMethod.POST)
	public ModelAndView selection(HttpServletRequest request, HttpServletResponse response,
			@RequestParam SubjectVO department) throws Exception {

		List<SubjectVO> subjectList = mainService.selectAllSubjects(department);

		HttpSession session = request.getSession();
		session.setAttribute("subjectList", subjectList);

		ModelAndView mav = new ModelAndView("redirect:/index.jsp");
		mav.addObject("subjectList", subjectList);

		return mav;

	}

	// POST 방식을 호출되는 시간표 제작
	@RequestMapping(value = "/createTable.do", method = RequestMethod.POST)
	public ModelAndView createTable(HttpServletRequest request, HttpServletResponse response, int[] checkbox)
			throws Exception {

		HashMap hm = new HashMap();
		hm.put("checkbox", checkbox);

		List<SubjectVO> subjectList = (List<SubjectVO>) mainService.selectSubjects(hm);

		HashMap<String, List<SubjectVO>> hm2 = new HashMap<>();
		hm2.put("subjectList", subjectList);

		List<SubjectVO> list3 = mainService.insertSubjects(hm2);

		HttpSession session = request.getSession();
		session.setAttribute("list3", list3);
		session.setAttribute("last_num", SubjectVO.getLast_num());

		ModelAndView mav = new ModelAndView("redirect:/index.jsp");

		return mav;
	}

}
