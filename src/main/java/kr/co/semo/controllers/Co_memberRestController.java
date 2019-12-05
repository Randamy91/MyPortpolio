package kr.co.semo.controllers;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import kr.co.semo.helper.UploadItem;
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
	
	@RequestMapping(value="/addCo_member", method=RequestMethod.POST, consumes = MediaType.MULTIPART_FORM_DATA_VALUE)
	private String adduser(
				@RequestParam("getfile") MultipartFile getfile
			) throws IOException {
		
		System.out.println("!11111111111111111111111111111111111111121jhfdcljsdhioj23459045948356243512354425345356466346");
		
		System.out.println(getfile.getName());
		System.out.println(getfile.getSize());
		System.out.println(getfile.getOriginalFilename());
		byte[] data = getfile.getBytes();
		System.out.println(data);
		
		/*
		// 텍스트 데이터 추출
		Map<String, String> paramMap = webHelper.getParamMap();
		String co_name = paramMap.get("co_name");
		String broker_num = paramMap.get("broker_num");
		String office_num = paramMap.get("office_num");
		String office_addr = paramMap.get("office_addr");
		String boss_name = paramMap.get("boss_name");
		String tel = paramMap.get("tel");
		String tel_num = paramMap.get("tel_num");
		String assi_name = paramMap.get("assi_name");
		String position = paramMap.get("position");
		String email_id = paramMap.get("email_id");
		String user_pw = paramMap.get("user_pw");
		String reg_date = paramMap.get("reg_date");
		String recent_date = paramMap.get("recent_date");
		String approval = paramMap.get("approval");
		*/
		/*
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
		input.setApproval(approval);
		input.setReg_date(reg_date);
		input.setRecent_date(recent_date);
		*/
		//파일 정보 추출
		/*
		List<UploadItem> fileList = webHelper.getFileList();
		System.out.println(fileList);
		
		Map<String, Object> output = new HashMap<String, Object>();
		output.put("item", input);
		*/
		/*
		try {
			co_memberService.addCo_member(input);
		} catch (Exception e) {
			System.out.println(e.getLocalizedMessage());
		}
		*/
		return "success";
	}
}