package kr.co.semo.controllers;


import java.util.HashMap;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import kr.co.semo.service.Ge_memberService;
import kr.co.semo.helper.WebHelper;
import kr.co.semo.model.Ge_member;

@RestController
public class Ge_memberRestController {
	
	private static final Logger logger = LoggerFactory.getLogger(Ge_memberRestController.class);
	
	@Autowired WebHelper webHelper;
	@Autowired Ge_memberService ge_memberService;
	
	@Value("#{servletContext.contextPath}")
	String contextPath;
	
	@RequestMapping(value="/addGe_member", method = RequestMethod.POST)
	public Map<String, Object> adduser(
			@RequestParam(value="name") String name,
			@RequestParam(value="email_id") String email_id,
			@RequestParam(value="user_pw") String user_pw,
			@RequestParam(value="tel_num") String tel_num,
			@RequestParam(value="reg_date") String reg_date,
			@RequestParam(value="recent_date") String recent_date
			) {
		Ge_member input = new Ge_member();
		input.setName(name);
		input.setEmail_id(email_id);
		input.setUser_pw(user_pw);
		input.setTel_num(tel_num);
		input.setReg_date(reg_date);
		input.setRecent_date(recent_date);
		
		Map<String, Object> output = new HashMap<String, Object>();
		
		
		
		try {
			ge_memberService.addGe_member(input);
		} catch (Exception e) {
			return webHelper.getJsonError(e.getLocalizedMessage());
		}
		return output;
	}	
}
