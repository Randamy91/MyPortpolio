package kr.co.semo.service;

import java.util.List;

import kr.co.semo.model.Maemul;

public interface Maemulservice {
	public Maemul getMaemulItem(Maemul input) throws Exception;

	public List<Maemul> getMaemulList(Maemul input) throws Exception;

	public int getMaemulCount(Maemul input) throws Exception;

	public int addMaemul(Maemul input) throws Exception;

	public int editMaemul(Maemul input) throws Exception;

	public int deleteMaemul(Maemul input) throws Exception;
}
