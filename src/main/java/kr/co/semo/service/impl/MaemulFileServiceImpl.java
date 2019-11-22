package kr.co.semo.service.impl;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.semo.helper.UploadItem;
import kr.co.semo.service.MaemulFileService;
import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
public class MaemulFileServiceImpl implements MaemulFileService {

	@Autowired
    SqlSession sqlSession;

	@Override
	public int AddFile(UploadItem fileitem) throws Exception {
		int result = 0;
		
		try {
			result = sqlSession.insert("Member_fileMapper.insertItem", fileitem);
			
		} catch(NullPointerException e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("저장된 데이터가 없습니다.");
		} catch(Exception e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("데이터 저장에 실패했습니다.");
		}
		return result;
	}
	
}

