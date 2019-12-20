package kr.co.semo.service;

import java.util.List;

import kr.co.semo.model.Co_member;

public interface Co_memberService {
	public Co_member getCo_memberItem(Co_member input) throws Exception;

	public List<Co_member> getCo_memberList(Co_member input) throws Exception;

	public int getCo_memberCount(Co_member input) throws Exception;

	public int addCo_member(Co_member input) throws Exception;

	public int editCo_member(Co_member input) throws Exception;
	
	public int editCo_memberPw(Co_member input) throws Exception;

	public int deleteCo_member(Co_member input) throws Exception;
	
	public Co_member getLoginuser_item(Co_member input) throws Exception;
	
	public List<Co_member> getCo_searchList(Co_member co_input) throws Exception;
	
	public Co_member getEmail_item(Co_member input) throws Exception;
	   
	public int getPassword_item(Co_member input) throws Exception;
	
	public int editCo_approval(Co_member input) throws Exception;
	
	public int editCo_memberRecent(Co_member input) throws Exception;
	
}
