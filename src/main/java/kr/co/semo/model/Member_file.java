package kr.co.semo.model;

import lombok.Data;

@Data
public class Member_file {
	private int co_member_id;    
	private String content_type; 
	private String edit_date;    
	private String file_dir;     
	private String file_name;    
	private int file_size;       
	private String file_type;    
	private int id;              
	private String origin_name;  
	private String reg_date;
}
