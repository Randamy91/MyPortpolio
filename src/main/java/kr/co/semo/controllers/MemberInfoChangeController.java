package kr.co.semo.controllers;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import kr.co.semo.helper.WebHelper;
import kr.co.semo.model.Co_member;
import kr.co.semo.model.Ge_member;
import kr.co.semo.service.Co_memberService;
import kr.co.semo.service.Ge_memberService;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class MemberInfoChangeController {
	
	@Autowired
	Ge_memberService ge_memberService;
	@Autowired
	Co_memberService co_memberService;	
	@Autowired
	WebHelper webHelper;
	
	@RequestMapping(value = "/ge_infochange")
	public ModelAndView ge_infochange (Model model, HttpServletResponse response, HttpServletRequest request) throws Exception {
		HttpSession session = request.getSession();
		int memberId = (int) session.getAttribute("userNum"); 
		int userType = (int) session.getAttribute("userType");
		Ge_member geInput = new Ge_member();
		Ge_member geOutput = new Ge_member();
		Co_member coInput = new Co_member();
		Co_member coOutput = new Co_member();
		//대표번호 나누기
		String telNum;
		String num1;
		String num2;
		String num3;
		//핸드폰 번호 나누기
		String phoneNum;
		String firstNum;
		String secondNum;
		String lastNum;
		
		geInput.setId(memberId);
		coInput.setId(memberId);
		try {
			if (userType == 1) {
				try {
					geOutput = ge_memberService.getGe_memberItem(geInput);
					phoneNum = geOutput.getTel_num();
					firstNum = phoneNum.substring(0,3);
					secondNum = phoneNum.substring(3,7);
					lastNum = phoneNum.substring(7);
					
					String[] numCombi = new String[]{firstNum, secondNum, lastNum};
					model.addAttribute("userinfo", geOutput);
					model.addAttribute("numCombi", numCombi);
					
					return new ModelAndView("Ge_infochange");
				}
				catch (Exception e) {
					e.getLocalizedMessage();
					return new ModelAndView("index");
			 	}
			} else {
				try {
					coOutput = co_memberService.getCo_memberItem(coInput);
					telNum = coOutput.getTel();
					num1 = telNum.substring(0,2);
					num2 = telNum.substring(2,5);
					num3 = telNum.substring(6);
					
					phoneNum = coOutput.getTel_num();
					firstNum = phoneNum.substring(0,3);
					secondNum = phoneNum.substring(3,7);
					lastNum = phoneNum.substring(7);
					
					String[] telCombi = new String[]{num1,num2,num3};
					String[] numCombi = new String[]{firstNum, secondNum, lastNum};
					
					String position = coOutput.getPosition();
					if (position == "A") {
						coOutput.setPosition("대표공인중개사"); 
					} else if (position == "B") {
						coOutput.setPosition("소속공인중개사");
					} else {
						coOutput.setPosition("중개보조원");
					}
					
					
					model.addAttribute("numCombi", numCombi);
					model.addAttribute("telCombi", telCombi);
					model.addAttribute("userinfo", coOutput);
					
					return new ModelAndView("Co_infochange");
				} catch (Exception e) {
					e.getLocalizedMessage();
					return new ModelAndView("index");
				}
			}
		} catch (Exception e) {
			e.getLocalizedMessage();
			return new ModelAndView("index");
		}
	}
	
	@RequestMapping(value = "/ge_infochange_ok")
	public ModelAndView ge_infochange_ok (Model model, HttpServletResponse response, HttpServletRequest request,
			@RequestParam(value="Npw") String user_pw,
			@RequestParam(value="user_name") String name  			
		) throws Exception {
		HttpSession session = request.getSession();
		int memberId = (int) session.getAttribute("userNum"); 
		int userType = (int) session.getAttribute("userType");
		Ge_member geInput = new Ge_member();
		
		geInput.setId(memberId);
		geInput.setUser_pw(user_pw);
		geInput.setName(name);
	
		
		try {
			ge_memberService.editGe_member(geInput);
			return new ModelAndView("index");
		} catch (Exception e) {
			e.getLocalizedMessage();
			return new ModelAndView("index");	
		}
	}
	
	@RequestMapping(value = "/co_infochange_ok")
	public ModelAndView co_infochange_ok (Model model, HttpServletResponse response, HttpServletRequest request,
			@RequestParam(value="Npw") String user_pw
		) throws Exception {
		HttpSession session = request.getSession();
		int memberId = (int) session.getAttribute("userNum"); 
		int userType = (int) session.getAttribute("userType");
		Co_member coInput = new Co_member();
		
		coInput.setId(memberId);
		coInput.setUser_pw(user_pw);
	
		
		try {
			co_memberService.getCo_memberItem(coInput);
			return new ModelAndView("index");
		} catch (Exception e) {
			e.getLocalizedMessage();
			return new ModelAndView("index");
		}
	}
}
