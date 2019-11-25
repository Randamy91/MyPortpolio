package kr.co.semo.controllers;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.semo.model.Member;

@Controller
public class LoginController {
	
	@Autowired
	Member member;
	
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String loginGet(Model model, HttpServletResponse response, HttpServletRequest request
			@RequestParam(value="")
	) throws Exception {
		
		member.setUserId(userId);
		
		return null;
	}
	
}
