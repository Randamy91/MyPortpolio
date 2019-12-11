package kr.co.semo.service;

import java.util.List;

import kr.co.semo.model.Ge_member;

public interface Ge_memberService {
	
	public Ge_member getGe_memberItem(Ge_member input) throws Exception;

	public List<Ge_member> getGe_memberList(Ge_member input) throws Exception;

	public int getGe_memberCount(Ge_member input) throws Exception;

	public int addGe_member(Ge_member input) throws Exception;

	public int editGe_member(Ge_member input) throws Exception;
	
	public int editGe_memberName(Ge_member input) throws Exception;
	
	public int editGe_memberRecent(Ge_member input) throws Exception;

	public int deleteGe_member(Ge_member input) throws Exception;
	
	public Ge_member getLoginuser_item(Ge_member input) throws Exception;
	
	public Ge_member getEmail_item2(Ge_member input) throws Exception;
	
	public int getPassword_item2(Ge_member input2) throws Exception;
}

