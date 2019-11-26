package kr.co.semo.controllers;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.semo.model.Ge_member;


@Controller
public class LoginController {
	

	
	@Autowired
	HttpSession session;
	
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String loginGet(Model model, HttpServletResponse response, HttpServletRequest request,
			@RequestParam(value="userId") String userId,
			@RequestParam(value="userPw") String userPw
	) throws Exception {
		Ge_member input = new Ge_member();
		input.setEmail_id(userId);
		input.setUser_pw(userPw);
		
		session.setMaxInactiveInterval(60);
		
		if (userId != null && !userId.equals("") && userPw != null && !userPw.equals("")) {
			session.setAttribute("usersession", userId);
			
		} else {
			System.out.println("--- id, pw 값 없음 ---");;
		}
		return "index.do";
	}
	
}
