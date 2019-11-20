package kr.co.semo.model;

import lombok.Data;

@Data
public class Item_file {
	private String content_type;    
	private String edit_date;       
	private String file_dir;        
	private String file_name;       
	private int file_size;          
	private int id;                 
	private int maemul_register_id; 
	private String origin_name;     
	private String reg_date;
}