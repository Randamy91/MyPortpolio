package kr.co.semo.controllers;

import java.util.HashMap;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import kr.co.semo.helper.WebHelper;
import kr.co.semo.model.Co_member;
import kr.co.semo.model.Ge_member;
import kr.co.semo.service.Co_memberService;
import kr.co.semo.service.Ge_memberService;

@RestController
public class Co_memberRestController {
	
	private static final Logger logger = LoggerFactory.getLogger(Co_memberRestController.class);
	
	@Autowired WebHelper webHelper;
	@Autowired Co_memberService co_memberService;
	
	@Value("#{servletContext.contextPath}")
	String contextPath;
	
	@RequestMapping(value="/addCo_member", method = RequestMethod.POST)
	public Map<String, Object> adduser(
			@RequestParam(value="co_name") String co_name,
			@RequestParam(value="co_number") String broker_num,
			@RequestParam(value="coe_number") String office_num,
			@RequestParam(value="office_addr") String office_addr,
			@RequestParam(value="tel_num") String tel_num,
			@RequestParam(value="coe_name") String boss_name,
			@RequestParam(value="tel") String tel,
			@RequestParam(value="P_name") String assi_name,
			@RequestParam(value="position2") String position,
			@RequestParam(value="user_email") String email_id,
			@RequestParam(value="co_pw") String user_pw,
			@RequestParam(value="reg_date") String reg_date,
			@RequestParam(value="broker_img") String broker_img,
			@RequestParam(value="filebox_1") String member_file_office,
			@RequestParam(value="fileBox_2") String member_file_lice
			) {
		
		Co_member input = new Co_member();
		input.setCo_name(co_name);
		input.setBroker_num(broker_num);
		input.setOffice_num(office_num);
		input.setOffice_addr(office_addr);
		input.setTel_num(tel_num);
		input.setBoss_name(boss_name);
		input.setTel(tel);
		input.setAssi_name(assi_name);
		input.setPosition(position);
		input.setEmail_id(email_id);
		input.setUser_pw(user_pw);
		input.setReg_date(reg_date);
		input.setBroker_img(broker_img);
		
		Map<String, Object> output = new HashMap<String, Object>();
		
		output.put("message", 1);
		
		try {
			co_memberService.addCo_member(input);
		} catch (Exception e) {
			System.out.println(e.getLocalizedMessage());
		}
		
		return output;
	}
}