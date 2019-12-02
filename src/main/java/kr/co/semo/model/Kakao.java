package kr.co.semo.model;

import java.util.List;

import com.google.gson.annotations.SerializedName;

import lombok.Data;

@Data
public class Kakao {
	@SerializedName("documents") private List<Documents> documents;

	@Data
	public static class Documents {
		@SerializedName("address_name")	private String address_name;
		@SerializedName("y") private String y;
		@SerializedName("x") private String x;
		@SerializedName("address_type") private String address_type;
		@SerializedName("address") private Address address;
		
		@Data
		public static class Address {
			@SerializedName("address_name") private String address_name;
			@SerializedName("region_1depth_name") private String region_1depth_name;
			@SerializedName("region_2depth_name") private String region_2depth_name;
			@SerializedName("region_3depth_name") private String region_3depth_name;
			@SerializedName("region_3depth_h_name") private String region_3depth_h_name;
			@SerializedName("h_code") private String h_code;
			@SerializedName("b_code") private String b_code;
			@SerializedName("mountain_yn") private String mountain_yn; // Y or N
			@SerializedName("main_address_no") private String main_address_no;
			@SerializedName("sub_address_no") private String sub_address_no; // 결과값 없으면 ""
			@SerializedName("zip_code") private String zip_code;
			@SerializedName("x") private String x;
			@SerializedName("y") private String y;
		}
		
		@SerializedName("road_address") private Road_address road_address;
	
			@Data
			public static class Road_address {
				@SerializedName("address_name") private String address_name;
				@SerializedName("region_1depth_name") private String region_1depth_name;
				@SerializedName("region_2depth_name") private String region_2depth_name;
				@SerializedName("region_3depth_name") private String region_3depth_name;
				@SerializedName("road_name") private String road_name;
				@SerializedName("underground_yn") private String underground_yn; 		// 지하여부 Y,N boolean????
				@SerializedName("main_building_no") private String main_building_no;
				@SerializedName("sub_building_no") private String sub_building_no;
				@SerializedName("building_name") private String building_name;
				@SerializedName("zone_no")	private String zone_no;
				@SerializedName("y") private String y;
				@SerializedName("x") private String x;
			}
	}
}
