package kr.co.semo.controllers;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import kr.co.semo.helper.UploadItem;
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
	
	@RequestMapping(value = "/ge_infochange_ok", method=RequestMethod.POST)
	public ModelAndView ge_infochange_ok (Model model, HttpServletResponse response, HttpServletRequest request,
			@RequestParam(value="Npw") String user_pw,
			@RequestParam(value="user_name") String name  			
		) throws Exception {
		HttpSession session = request.getSession();
		int memberId = (int) session.getAttribute("userNum"); 
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
	
	@RequestMapping(value = "/co_infochange_ok", method=RequestMethod.POST)
	public ModelAndView co_infochange_ok (Model model, HttpServletResponse response, HttpServletRequest request)
	{
		try {
			webHelper.upload();
		} catch (Exception e) {
			e.printStackTrace();
			webHelper.redirect(null, "업로드에 실패했습니다.");
		}
		/** 업로든 된 정보 추출 */
		// 텍스트 데이터 추출
		Map<String, String> paramMap = webHelper.getParamMap();
		String co_name = paramMap.get("co_name");
		String broker_num = paramMap.get("broker_num");
		String office_num = paramMap.get("office_num");
		String office_addr = paramMap.get("office_addr");
		String boss_name = paramMap.get("boss_name");
		String tel_num1 = paramMap.get("tel_num1");
		String tel_num2 = paramMap.get("tel_num2");
		String tel_num3 = paramMap.get("tel_num3");
		String nowco_pw = paramMap.get("nowco_pw");
		String newco_pw = paramMap.get("newco_pw");
		String phoneNumber1 = paramMap.get("phoneNumber1");
		String phoneNumber2 = paramMap.get("phoneNumber2");
		String phoneNumber3 = paramMap.get("phoneNumber3");
		String phonecombi;
		String telCombi;
		
		
		//파일 정보 추출
		List<UploadItem> fileList = webHelper.getFileList();
		
		HttpSession session = request.getSession();
		
		
		int memberId = (int) session.getAttribute("userNum"); 
		Co_member coInput = new Co_member();
		
		coInput.setId(memberId);
	
		
		try {
			return new ModelAndView("index");
		} catch (Exception e) {
			e.getLocalizedMessage();
			return new ModelAndView("index");
		}
	}
}
