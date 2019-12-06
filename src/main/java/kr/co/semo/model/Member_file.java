package kr.co.semo.model;

import lombok.Data;

@Data
public class Member_file {
	    
	private String content_type; // 파일형식
	private String edit_date;    // 변경일시
	private String file_dir;     // 업로드된 파일경로
	private String file_name;    // 저장된 파일 이름
	private int file_size;       // 파일 크기
	private String file_type;    // 중개사등록증, 사업자등로증 구분. O/B
	private int id;              
	private String origin_name;  // 파일 원본 이름
	private String reg_date;	 // 등록 일시
	private int co_member_id;
}
