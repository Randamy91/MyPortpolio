package kr.co.semo.controllers;

import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import kr.co.semo.helper.RegexHelper;
import kr.co.semo.helper.WebHelper;
import kr.co.semo.model.Co_member;
import kr.co.semo.model.Ge_member;
import kr.co.semo.service.Co_memberService;
import kr.co.semo.service.Ge_memberService;

@Controller
public class EditController {

   @Autowired
   WebHelper webHelper;

   @Autowired
   RegexHelper regexHelper;

   @Autowired
   Co_memberService co_memberService;

   @Autowired
   Ge_memberService ge_memberService;

   // Pw_reset 페이지
   @RequestMapping(value = "Pw_reset.do")
   public String pwReset(Locale locale, Model model, HttpServletResponse response, HttpServletRequest request) {
	   
	  HttpSession session = request.getSession();
	  String mailId = (String) session.getAttribute("mailId");
	  System.out.println("-------------------------" + mailId + "------------------------");
	  
	  model.addAttribute("mailId", mailId);
	  session.invalidate();
	   
      return "Pw_reset";
   }

   // Pw_resetok 페이지
   @RequestMapping(value = "Pw_resetok.do")
   public String resetOk(Locale locale, Model model) {
	  
	  
	   
      return "Pw_resetok";
   }

   /** 수정 폼에 대한 action 페이지 */
   @RequestMapping(value = "Pw_edit.do", method = RequestMethod.POST)
   public ModelAndView edit(Model model) {

	   
	   
      /** 1) 사용자가 입력한 파라미터 수신 및 유효성 검사 */
      String passwd = webHelper.getString("passwd");
      String email = webHelper.getString("email");

      if (email == null) {
         return webHelper.redirect(null, "이메일을 입력하세요.");
      }
      if (passwd == null) {
         return webHelper.redirect(null, "비밀번호를 입력하세요.");
      }
      if (!regexHelper.isEngNum(passwd)) {
         return webHelper.redirect(null, "비밀번호는 영어와 숫자로만 가능합니다.");
      }

      /** 2) 데이터 수정하기 */
      // 수정할 값들을 Beans에 담는다.
      Co_member input = new Co_member();
      input.setEmail_id(email);
      input.setUser_pw(passwd);

      Ge_member input2 = new Ge_member();
      input2.setEmail_id(email);
      input2.setUser_pw(passwd);

      try {
         try {
            // 공인중개사회원 데이터 수정
            co_memberService.getPassword_item(input);

            /** 3) 결과를 확인하기 위한 페이지 이동 */
            return webHelper.redirect("Pw_resetok.do", "수정되었습니다.");
         } catch (Exception e) {
            e.getLocalizedMessage();
         }
         try {
            // 일반회원 데이터 수정
            ge_memberService.getPassword_item2(input2);

            /** 3) 결과를 확인하기 위한 페이지 이동 */
            return webHelper.redirect("Pw_resetok.do", "수정되었습니다.");
         } catch (Exception e) {
            e.getLocalizedMessage();
            return webHelper.redirect(null, e.getLocalizedMessage());
         }
      } catch (Exception e) {
         return webHelper.redirect(null, e.getLocalizedMessage());
      }
   }

}