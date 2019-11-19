package kr.co.semo.model;

import lombok.Data;

@Data
public class Ge_member {
	private int id;
	private String name;
	private String email_id;
	private String user_pw;
	private String tel_num;
	private String reg_date;
	private String recent_date;
	
	// LIMIT 절에서 사용할 조회시작 위치 
	private static int offset;
	
	// LIMIT 절에서 사용할 조회할 데이터 수
	private static int listCount;

	public static int getOffset() {
		return offset;
	}

	public static void setOffset(int offset) {
		Ge_member.offset = offset;
	}

	public static int getListCount() {
		return listCount;
	}

	public static void setListCount(int listCount) {
		Ge_member.listCount = listCount;
	}
}
