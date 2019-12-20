package kr.co.semo.controllers;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.semo.model.Maemul;
import kr.co.semo.service.MaemulService;

@Controller
public class Ge_maemulInterest {
	
	@Autowired MaemulService maemulservice;
	
	@RequestMapping(value = "geMaemulInterest")
	public String geMaemulInterest(
			Model model, HttpServletRequest request) {
		
		Cookie[] cookie = request.getCookies();
		String maemulNums = null;
		
		for (int i = 0; i < cookie.length; i++) {
			if (cookie[i].getName().equals("maemul_num")){
				maemulNums = cookie[i].getValue();
			}
		}
		
		String[] maemulNum = maemulNums.split("A");
		List<Maemul> outputList = new ArrayList<Maemul>();
		
		
		for (int i = 0; i < maemulNum.length; i++) {
			Maemul input = new Maemul();
			Maemul output = new Maemul();
			input.setMaemul_num(Integer.parseInt(maemulNum[i]));
			try {
				output = maemulservice.getMaemulItem(input);
				outputList.add(output);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		for (int i = 0; i < outputList.size(); i++) {
			System.out.println(outputList.get(i));
		}
		
		
		
		return "Maemul.interest";
	}
}
