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
		
		try {
			output = maemulJsonService.getJson(input);
		} catch(Exception e) {
			webHelper.getJsonError(e.getLocalizedMessage());
		}
		
		Map<String,Object> data = new HashMap<String, Object>();
		
		data.put("positions", output);
		
		return data;
	}

}
