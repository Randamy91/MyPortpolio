package kr.co.semo.service.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.semo.model.Ge_member;
import kr.co.semo.service.Ge_memberService;
import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
public class Ge_memberServiceImpl implements Ge_memberService{

	@Autowired
    SqlSession sqlSession;

    @Override
    public Ge_member getGe_memberItem(Ge_member input) throws Exception {
        Ge_member result = null;

        try {
            result = sqlSession.selectOne("Ge_memberMapper.selectItem", input);

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

    public List<Ge_member> getGe_memberList(Ge_member input) throws Exception {
        List<Ge_member> result = null;

        try {
            result = sqlSession.selectList("Ge_memberMapper.selectList", input);

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
    public int getGe_memberCount(Ge_member input) throws Exception {
        int result = 0;
        
        try {
            result = sqlSession.selectOne("Ge_memberMapper.selectCountAll", input);
        } catch (Exception e) {
            log.error(e.getLocalizedMessage());
            throw new Exception("데이터 조회에 실패했습니다.");
        }
        
        return result;
    }

    @Override
    public int addGe_member(Ge_member input) throws Exception {
        int result = 0;

        try {
            result = sqlSession.insert("Ge_memberMapper.insertItem", input);

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
    public int editGe_member(Ge_member input) throws Exception {
        int result = 0;

        try {
            result = sqlSession.update("Ge_memberMapper.updateItem", input);

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
    public int deleteGe_member(Ge_member input) throws Exception {
        int result = 0;

        try {
            result = sqlSession.delete("Ge_memberMapper.deleteItem", input);

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
    
    //login service
    @Override
    public Ge_member getLoginuser_item(Ge_member input) throws Exception {
    	
    	Ge_member result = null;
    	
    	try {
			result = sqlSession.selectOne("Ge_memberMapper.selectLoginUser", input);
			
			if (result == null) {
				throw new NullPointerException("result=null");
			}
		} catch (NullPointerException e) {
			log.error(e.getLocalizedMessage());
            throw new Exception("검색된 회원이 없습니다.");
		} catch (Exception e) {
			log.error(e.getLocalizedMessage());
            throw new Exception("데이터 검색에 실패했습니다..");
		}
    	
    	return result;
    }

	@Override
	public int editGe_memberName(Ge_member input) throws Exception {
		int result = 0;

        try {
            result = sqlSession.update("Ge_memberMapper.updateItemName", input);

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
	public int editGe_memberRecent(Ge_member input) throws Exception {
		int result = 0;

        try {
            result = sqlSession.update("Ge_memberMapper.updateRecent", input);

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
	   public Ge_member getEmail_item2(Ge_member input) throws Exception {
	      Ge_member result = null;

	      try {
	         result = sqlSession.selectOne("Ge_memberMapper.checkEmail2", input);

	         if (result == null) {
	            throw new NullPointerException("result=null");
	         }
	      } catch (NullPointerException e) {
	         log.error(e.getLocalizedMessage());
	         throw new Exception("가입된 이메일이 아닙니다.");
	      } catch (Exception e) {
	         log.error(e.getLocalizedMessage());
	         throw new Exception("이메일 검색에 실패했습니다.");
	      }

	      return result;
	   }
	    
	    @Override
	    public int getPassword_item2(Ge_member input2) throws Exception {
	       int result = 0;
	       
	       try {
	            result = sqlSession.update("Ge_memberMapper.updatePassword2", input2);

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
}
