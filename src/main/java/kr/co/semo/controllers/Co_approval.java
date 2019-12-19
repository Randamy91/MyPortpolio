package kr.co.semo.controllers;


import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


import kr.co.semo.model.Co_member;
import kr.co.semo.service.Co_memberService;

@Controller
public class Co_approval {
	@Autowired Co_memberService co_memberService;
	
	@RequestMapping(value = "/coApproval", method = RequestMethod.GET)
	public String list(Model model, HttpServletRequest request, HttpServletResponse response) {
		
		//중개사 Approval 여부를 확인하기위해 session에 등록된 중개사 id 추출
		HttpSession session = request.getSession();
		int userId = (int) session.getAttribute("userNum");
		System.out.println("●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●" + userId + "●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●");
		
		
		Co_member input = new Co_member();
		input.setId(userId);
		
		Co_member output = new Co_member();
		
		try {
			output = co_memberService.getCo_memberItem(input);
		} catch (Exception e) {
			e.getLocalizedMessage();
		}
		
		String coApproval = output.getApproval();
		
		//index 페이지에서의 JSTL을 활용한 Alert을 띄우기 위한 addAttribute
		model.addAttribute("coApproval",coApproval);
		
		if (coApproval.equals("Y")) {
			return "Maemul_register";
		} else {
			
			response.setContentType("text/html; charset=UTF-8");
			 
			PrintWriter out;
			try {
				out = response.getWriter();
				out.println("<script>alert('권한 심사 중 이거나 권한이 없습니다.'); location.href='index.do';</script>");
				out.flush();
			} catch (IOException e) {
				e.getLocalizedMessage();
			}

			return "index";
		}
	}
}
