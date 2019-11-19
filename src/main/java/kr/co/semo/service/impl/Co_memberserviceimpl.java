package kr.co.semo.service.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.semo.model.Co_member;
import kr.co.semo.service.Co_memberservice;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class Co_memberserviceimpl implements Co_memberservice{

    @Autowired
    SqlSession sqlSession;

    @Override
    public Co_member getCo_memberItem(Co_member input) throws Exception {
        Co_member result = null;

        try {
            result = sqlSession.selectOne("Co_memberMapper.selectItem", input);

            if (result == null) {
                throw new NullPointerException("result=null");
            }
        } catch (NullPointerException e) {
            log.error(e.getLocalizedMessage());
            throw new Exception("조회된 데이터가 없습니다.");
        } catch (Exception e) {
            log.error(e.getLocalizedMessage());
            throw new Exception("데이터 조회에 실패했습니다.");
        }

        return result;
    }

    public List<Co_member> getCo_memberList(Co_member input) throws Exception {
        List<Co_member> result = null;

        try {
            result = sqlSession.selectList("Co_memberMapper.selectList", input);

            if (result == null) {
                throw new NullPointerException("result=null");
            }
        } catch (NullPointerException e) {
            log.error(e.getLocalizedMessage());
            throw new Exception("조회된 데이터가 없습니다.");
        } catch (Exception e) {
            log.error(e.getLocalizedMessage());
            throw new Exception("데이터 조회에 실패했습니다.");
        }

        return result;
    }

    @Override
    public int getCo_memberCount(Co_member input) throws Exception {
        int result = 0;
        
        try {
            result = sqlSession.selectOne("Co_memberMapper.selectCountAll", input);
        } catch (Exception e) {
            log.error(e.getLocalizedMessage());
            throw new Exception("데이터 조회에 실패했습니다.");
        }
        
        return result;
    }

    @Override
    public int addCo_member(Co_member input) throws Exception {
        int result = 0;

        try {
            result = sqlSession.insert("Co_memberMapper.insertItem", input);

            if (result == 0) {
                throw new NullPointerException("result=0");
            }
        } catch (NullPointerException e) {
            log.error(e.getLocalizedMessage());
            throw new Exception("저장된 데이터가 없습니다.");
        } catch (Exception e) {
            log.error(e.getLocalizedMessage());
            throw new Exception("데이터 저장에 실패했습니다.");
        }

        return result;
    }

    @Override
    public int editCo_member(Co_member input) throws Exception {
        int result = 0;

        try {
            result = sqlSession.update("Co_memberMapper.updateItem", input);

            if (result == 0) {
                throw new NullPointerException("result=0");
            }
        } catch (NullPointerException e) {
            log.error(e.getLocalizedMessage());
            throw new Exception("수정된 데이터가 없습니다.");
        } catch (Exception e) {
            log.error(e.getLocalizedMessage());
            throw new Exception("데이터 수정에 실패했습니다.");
        }

        return result;
    }

    @Override
    public int deleteCo_member(Co_member input) throws Exception {
        int result = 0;

        try {
            result = sqlSession.delete("Co_memberMapper.deleteItem", input);

            if (result == 0) {
                throw new NullPointerException("result=0");
            }
        } catch (NullPointerException e) {
            log.error(e.getLocalizedMessage());
            throw new Exception("삭제된 데이터가 없습니다.");
        } catch (Exception e) {
            log.error(e.getLocalizedMessage());
            throw new Exception("데이터 삭제에 실패했습니다.");
        }

        return result;
    }
}
