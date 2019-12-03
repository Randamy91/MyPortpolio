package kr.co.semo.controllers;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.sun.media.jfxmedia.logging.Logger;

import kr.co.semo.helper.WebHelper;
import kr.co.semo.model.Co_member;
import kr.co.semo.model.Ge_member;
import kr.co.semo.service.Co_memberService;
import kr.co.semo.service.Ge_memberService;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class LoginController {
	
	
	@Autowired
	Ge_memberService ge_memberService;
	@Autowired
	Co_memberService co_memberService;	
	@Autowired
	WebHelper webHelper;
	
	
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public ModelAndView loginGet(Model model,HttpServletResponse response, HttpServletRequest request,
			@RequestParam(value="userId", defaultValue="") String userId,
			@RequestParam(value="userPw", defaultValue="") String userPw
	) throws Exception {
		
		//일반회원 저장 beans
		Ge_member ge_input = new Ge_member();
		ge_input.setEmail_id(userId);
		ge_input.setUser_pw(userPw);
		int geId;
		String geName;
		
		//중개사회원 저장 beans
		Co_member co_input = new Co_member();
		co_input.setEmail_id(userId);
		co_input.setUser_pw(userPw);
		String coName;
		
		Ge_member ge_output;
		Co_member co_output;
		
		try {
			try {
				ge_output = ge_memberService.getLoginuser_item(ge_input);
				geId = ge_output.getId();
				geName = ge_output.getName();
				HttpSession session = request.getSession();
				session.setMaxInactiveInterval(60*60);
				System.out.println(geId);
				System.out.println(userId);
				if (geId == 1) {
					session.setAttribute("userType", 0);
					session.setAttribute("userId", userId);
					session.setAttribute("userName", geName);
					System.out.println("-------------- admin ------------");
				} else {
					session.setAttribute("userType", 1);
					session.setAttribute("userId", userId);
					session.setAttribute("userName", geName);
					System.out.println("---------	----- user ------------");
				}
				return new ModelAndView("index");
			} catch (Exception e) {
				e.getLocalizedMessage();
			}
			try {
				co_output = co_memberService.getLoginuser_item(co_input);
				coName = co_output.getCo_name();
				HttpSession session = request.getSession();
				session.setMaxInactiveInterval(60*60);
				session.setAttribute("usersession", userId);
				session.setAttribute("userName", coName);
				session.setAttribute("userType", 2);
				return new ModelAndView("index");
			} catch (Exception e) {
				e.getLocalizedMessage();
				return webHelper.redirect("index.do", "아이디 및 비밀번호를 확인해 주세요.");
			}
			
		} catch (Exception e) {
			e.getLocalizedMessage();
			return webHelper.redirect("Login.do", "아이디 및 비밀번호를 확인해 주세요.");			
		}
	}
	/**
	@RequestMapping(value = "/ModalLogin", method = RequestMethod.POST)
	public ModelAndView ModalLogin(Model model,HttpServletResponse response, HttpServletRequest request,
			@RequestParam(value="userId", defaultValue="") String userId,
			@RequestParam(value="userPw", defaultValue="") String userPw
	) throws Exception {
		
		//일반회원 저장 beans
		Ge_member ge_input = new Ge_member();
		ge_input.setEmail_id(userId);
		ge_input.setUser_pw(userPw);
		String geName;
		
		//중개사회원 저장 beans
		Co_member co_input = new Co_member();
		co_input.setEmail_id(userId);
		co_input.setUser_pw(userPw);
		String coName;
		
		Ge_member ge_output;
		Co_member co_output;
		
		try {
			try {
				ge_output = ge_memberService.getLoginuser_item(ge_input);
				geName = ge_output.getName();
				HttpSession session = request.getSession();
				session.setAttribute("usersession", userId);
				session.setAttribute("userName", geName);
				return new ModelAndView("index");
			} catch (Exception e) {
				e.getLocalizedMessage();
			}
			try {
				co_output = co_memberService.getLoginuser_item(co_input);
				coName = co_output.getCo_name();
				HttpSession session = request.getSession();
				session.setAttribute("usersession", userId);
				session.setAttribute("userName", coName);
				return new ModelAndView("index");
			} catch (Exception e) {
				e.getLocalizedMessage();
				return webHelper.redirect("index.do", "아이디 및 비밀번호를 확인해 주세요.");
			}
			
		} catch (Exception e) {
			e.getLocalizedMessage();
			return webHelper.redirect("index.do", "아이디 및 비밀번호를 확인해 주세요.");			
		}
	}
	*/
}
