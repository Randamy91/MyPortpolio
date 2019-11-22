package kr.co.semo.service;

import java.util.List;

import kr.co.semo.helper.UploadItem;;

public interface MaemulFileService {
	
	/**
	 * @param File 데이터를 담고 있는 beans
	 * @return UploadItem
	 * @throw Exception
	 */
	public int AddFile(UploadItem fileitem) throws Exception;
}
