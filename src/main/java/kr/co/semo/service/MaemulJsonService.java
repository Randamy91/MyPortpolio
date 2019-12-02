package kr.co.semo.service;

import java.util.List;

import kr.co.semo.model.MaemulJson;

public interface MaemulJsonService {
	
	public List<MaemulJson> getJson(MaemulJson input) throws Exception;

}
