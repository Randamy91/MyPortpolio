package kr.co.semo.service;

import java.util.List;

import kr.co.semo.model.Member_file;

public interface Member_fileService {
	public Member_file getMember_fileItem(Member_file input) throws Exception;

	public List<Member_file> getMember_fileList(Member_file input) throws Exception;

	public int getMember_fileCount(Member_file input) throws Exception;

	public int addMember_file(Member_file input) throws Exception;

	public int editMember_file(Member_file input) throws Exception;

	public int deleteMember_file(Member_file input) throws Exception;
	
	public Member_file getMember_filename(Member_file input) throws Exception;
}
