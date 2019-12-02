package kr.co.semo.service.impl;

import retrofit2.Call;
import retrofit2.http.GET;
import retrofit2.http.Headers;
import retrofit2.http.Query;
import kr.co.semo.model.Kakao;

public interface ApiKakaoService {
	public static final String BASE_URL = "https://dapi.kakao.com";

	
	/**
	 * 주소의 좌표값을 받기위한 REST API 요청 
	 */
	@Headers("Authorization: KakaoAK 8ab3f4ccdf39f74c027fdb40daa49392")
	@GET("/v2/local/search/address.json")
	Call<Kakao> getMap(@Query("query") String query);
	
}
