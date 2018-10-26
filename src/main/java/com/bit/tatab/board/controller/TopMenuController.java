package com.bit.tatab.board.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bit.tatab.main.service.MainService;


@Controller
public class TopMenuController {
	
	@Inject
	MainService mainService;
	
	// ajax 통신해서 list뽑아와 return
	@ResponseBody
	@RequestMapping(value="boardProjectList.do", method=RequestMethod.POST)
	public List<String> ajaxView(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		HttpSession session = request.getSession();
        String login_email = session.getAttribute("login_email").toString();
		
		List<String> projectList = mainService.selectAllProject(login_email);
		System.out.println("ajax : "  + projectList);
		return  projectList;
		
	}
}
