package kr.co.semo.controllers;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import kr.co.semo.helper.WebHelper;
import kr.co.semo.model.Co_member;
import kr.co.semo.model.Ge_member;
import kr.co.semo.service.Co_memberService;
import kr.co.semo.service.Ge_memberService;

@RestController
public class Co_memberRestController {
	
	private static final Logger logger = LoggerFactory.getLogger(Co_memberRestController.class);
	private static final String UPLOAD_PATH = "D:\\workspace\\semoproject\\img";
	@Autowired WebHelper webHelper;
	@Autowired Co_memberService co_memberService;
	
	@RequestMapping(value="/addCo_member", method=RequestMethod.POST)
	public Map<String, Object> adduser(
			@RequestParam(value="co_name") String co_name,
			@RequestParam(value="broker_num") String broker_num,
			@RequestParam(value="office_num") String office_num,
			@RequestParam(value="office_addr") String office_addr,
			@RequestParam(value="boss_name") String boss_name,
			@RequestParam(value="tel") String tel,
			@RequestParam(value="tel_num") String tel_num,
			@RequestParam(value="assi_name") String assi_name,
			@RequestParam(value="position") String position,
			@RequestParam(value="email_id") String email_id,
			@RequestParam(value="user_pw") String user_pw,
			@RequestParam(value="reg_date") String reg_date,
			@RequestParam(value="broker_img") String broker_img,
			@RequestParam(value="recent_date") String recent_date,
			@RequestParam(value="approval") String approval
			) {
		//String co_name = webHelper.getString("co_name");
		System.out.println("---- controller 도착 ----");
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
		input.setBroker_img(broker_img);
		input.setRecent_date(recent_date);
		
		Map<String, Object> output = new HashMap<String, Object>();
		output.put("item", input);
		
		try {
			co_memberService.addCo_member(input);
		} catch (Exception e) {
			System.out.println(e.getLocalizedMessage());
		}
		return output;
	}
	
	@RequestMapping(value = "/fileupload", method = RequestMethod.POST)
	public void uploaod(MultipartFile uploadfile, Model model) {
		logger.info("upload() POST 호출");
	    logger.info("파일 이름: {}", uploadfile.getOriginalFilename());
	    logger.info("파일 크기: {}", uploadfile.getSize());
	    
	    saveFile(uploadfile);
	    
	    String result = saveFile(uploadfile);
	    if(result !=null){ // 파일 저장 성공
	        model.addAttribute("result", result);
	    } else { // 파일 저장 실패
	        model.addAttribute("result","fail");
	    }
	}
	private String saveFile(MultipartFile file){
	    // 파일 이름 변경
	    UUID uuid = UUID.randomUUID();
	    String saveName = uuid + "_" + file.getOriginalFilename();

	    logger.info("saveName: {}",saveName);

	    // 저장할 File 객체를 생성(껍데기 파일)
	    File saveFile = new File(UPLOAD_PATH,saveName); // 저장할 폴더 이름, 저장할 파일 이름

	    
	    try {
	        file.transferTo(saveFile); // 업로드 파일에 saveFile이라는 껍데기 입힘
	    } catch (IOException e) {
	        e.printStackTrace();
	        return null;
	    }

	    return saveName;
	} // end saveFile(
}