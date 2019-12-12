package kr.co.semo.model;

import lombok.Data;

@Data
public class MaemulJson {
   // 위도 
   private double lat;
   // 경도 
   private double lng; 
   // 월,매 구분 
   private String select_sale;
   private int maemul_num;
   // 보증금 , 매매가 
   private int Fmin;
   private int Fmax;
   // 월세
   private int Wmin;
   private int Wmax;
   // 면적
   private int Amin;
   private int Amax;
   // 주소검색 
   private String item_addrst;
}