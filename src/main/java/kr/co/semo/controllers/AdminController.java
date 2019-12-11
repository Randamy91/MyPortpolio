package kr.co.semo.controllers;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import kr.co.semo.helper.PageData;
import kr.co.semo.helper.RegexHelper;
import kr.co.semo.helper.WebHelper;
/**import kr.co.semo.model.Co_member;*/
import kr.co.semo.model.Ge_member;
import kr.co.semo.service.Co_memberService;
/**import kr.co.semo.service.Co_memberService;*/
import kr.co.semo.service.Ge_memberService;

@Controller
public class AdminController {
	@Autowired WebHelper webHelper;
	@Autowired RegexHelper regexHelper;
	@Autowired Co_memberService co_memberService;
	@Autowired Ge_memberService ge_memberService;
	
	@Value("#{servletContext.contextPath}")
	String contextPath;
	
	@RequestMapping(value = "/Admin.do", method = RequestMethod.GET)
	public ModelAndView list(Model model) {
		
		String keyword = webHelper.getString("keyword",""); //검색어
		int nowPage = webHelper.getInt("page",1);
		int totalCount = 0;
		int listCount = 12;
		int pageCount = 5;
		
		Ge_member input = new Ge_member();
		input.setName(keyword);
		List<Ge_member> output = null;
		PageData pageData = null;
		
		try {
			totalCount = ge_memberService.getGe_memberCount(input);
			pageData = new PageData(nowPage, totalCount, listCount, pageCount);
			
			Ge_member.setOffset(pageData.getOffset());
			Ge_member.setListCount(pageData.getListCount());
			
			output = ge_memberService.getGe_memberList(input);
		} catch (Exception e) {
			e.getLocalizedMessage();
		}  
		
		model.addAttribute("userinfo", output);
		model.addAttribute("pageData", pageData);
		model.addAttribute("keyword", keyword);
		
		return new ModelAndView("Admin");
	}
	
	// 중개사 회원 승인/비승인 페이지 
	@RequestMapping(value = "Admin_approval")
	public String adminApproval(Model model) {
		
		
		
		
		return "Admin_infochange";
	}
}
