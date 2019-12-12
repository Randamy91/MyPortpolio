package kr.co.semo.controllers;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import kr.co.semo.helper.WebHelper;
import kr.co.semo.model.MaemulJson;
import kr.co.semo.service.MaemulJsonService;

@RestController
public class MaemulJsonRestController {
   
   @Autowired
   WebHelper webHelper;
   
   @Autowired
   MaemulJsonService maemulJsonService;
   
   
   @Value("#{servletContext.contextPath}")
   String ContextPath;
   
   @RequestMapping(value="/Mjson", method=RequestMethod.GET)
   public Map<String, Object> get_json() {
      
      MaemulJson input = new MaemulJson();
      List<MaemulJson> output = null; // null 까지 해야
      String select_sale = webHelper.getString("select_sale");
      int Fmin = webHelper.getInt("Fmin");
      int Fmax = webHelper.getInt("Fmax");
      int Wmin = webHelper.getInt("Wmin");
      int Wmax = webHelper.getInt("Wmax");
      int Amin = webHelper.getInt("Amin");
      int Amax = webHelper.getInt("Amax");
      String item_addrst = webHelper.getString("item_addrst");
      input.setSelect_sale(select_sale);
      input.setFmin(Fmin);
      input.setFmax(Fmax);
      input.setWmin(Wmin);
      input.setWmax(Wmax);
      input.setAmin(Amin);
      input.setAmax(Amax);
      input.setItem_addrst(item_addrst);
   
      try {
         output = maemulJsonService.getJson(input);
      } catch(Exception e) {
         webHelper.getJsonError(e.getLocalizedMessage());
      }
      
      Map<String,Object> data = new HashMap<String, Object>();
      System.out.println(output + "테스트입니다.");
      data.put("positions", output);      
      return data;
   }
   
   
   @RequestMapping(value="/Mjson", method=RequestMethod.POST)
   public Map<String, Object> test() {
      try {
         webHelper.upload();
      } catch (Exception e) {
         e.printStackTrace();
         return webHelper.getJsonError("실패");
      }
      Map<String, String> paramMap = webHelper.getParamMap();
      System.out.println(paramMap);
      Map<String,Object> data = new HashMap<String, Object>();   
      data.put("positions", paramMap);      
      return data;
   }

}