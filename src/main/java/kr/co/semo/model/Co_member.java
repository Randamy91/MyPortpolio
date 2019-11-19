package kr.co.semo.model;

import lombok.Data;

@Data
public class Co_member {
	
	private int id;
	private String co_name;
	private String broker_num;
	private String office_num;
	private String office_addr;
	private String tel_num;
	private String boss_name;
	private String assi_name;
	private String position;
	private String tel;
	private String email_id;
	private String user_pw;
	private String approval;
	private String reg_date;
	private String broker_img;
	private String recent_date;

	// LIMIT 절에서 사용할 조회시작 위치
	private static int offset;

	// LIMIT 절에서 사용할 조회할 데이터 수
	private static int listCount;

	public static int getOffset() {
		return offset;
	}

	public static void setOffset(int offset) {
		Co_member.offset = offset;
	}

	public static int getListCount() {
		return listCount;
	}

	public static void setListCount(int listCount) {
		Co_member.listCount = listCount;
	}
}
