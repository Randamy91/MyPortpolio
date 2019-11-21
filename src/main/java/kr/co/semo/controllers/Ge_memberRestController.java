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
	
	@RequestMapping(value="/semo", method = RequestMethod.POST, produces="text/plain;charset=UTF-8")
	public Map<String, Object> adduser(
			@RequestParam(value="name") String name,
			@RequestParam(value="email_id") String email_id,
			@RequestParam(value="user_pw") String user_pw,
			@RequestParam(value="tel_num") String tel_num,
			@RequestParam(value="reg_date") String reg_date,
			@RequestParam(value="recent_date") String recent_date
			) {
		
		System.out.println("111111111111111----31242342352435234wefdwqefsadf1435rf34f34f" );
		Ge_member input = new Ge_member();
		input.setName(name);
		input.setEmail_id(email_id);
		input.setUser_pw(user_pw);
		input.setTel_num(tel_num);
		input.setReg_date(reg_date);
		input.setRecent_date(recent_date);
		
		Map<String, Object> data = new HashMap<String, Object>();
		
		try {
			ge_memberService.addGe_member(input);
			data.put("item", input);
			return data;
		} catch (Exception e) {
			return webHelper.getJsonError(e.getLocalizedMessage());
		}
		
	}
}
