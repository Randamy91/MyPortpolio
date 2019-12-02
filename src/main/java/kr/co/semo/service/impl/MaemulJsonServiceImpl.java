package kr.co.semo.service.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.semo.model.MaemulJson;
import kr.co.semo.service.MaemulJsonService;
import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
public class MaemulJsonServiceImpl implements MaemulJsonService {
	
	@Autowired
	SqlSession sqlSession;
	
	@Override
	public List<MaemulJson> getJson(MaemulJson input) throws Exception {
		List<MaemulJson> result = null;
		try {
			result = sqlSession.selectList("MamulJson.selectList", input);
			if (result == null) {
				throw new NullPointerException("result == null");
			}
		} catch(NullPointerException e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("조회된 데이터가 없습니다.");
		} catch(Exception e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("데이터 조회에 실패했습니다.");
		}
		return result;
	}

}
