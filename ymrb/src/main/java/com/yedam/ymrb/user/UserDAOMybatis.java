package com.yedam.ymrb.user;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class UserDAOMybatis {
	
	@Autowired
	private SqlSessionTemplate mybatis;
/*	private SqlSession mybatis;	
	public UserDAOMybatis() {
		mybatis = SqlSessionFactoryBean.getSqlSessionInsance();
	}*/	
	
    public void insertUser(UserVO vo) {
        System.out.println("===> Mybatis로 insertUser() 기능 처리");
        mybatis.insert("UserDAO.insertUser", vo);
    }

    public void updateUser(UserVO vo) {
        System.out.println("===> Mybatis로 updateUser() 기능 처리");
        mybatis.update("UserDAO.updateUser", vo);
    }

    public void deleteUser(UserVO vo) {
        System.out.println("===> Mybatis로 deleteUser() 기능 처리");
        mybatis.delete("UserDAO.deleteUser", vo);
    }

    public UserVO getUser(UserVO vo) {
        System.out.println("===> Mybatis로 getUser() 기능 처리");
        return (UserVO) mybatis.selectOne("UserDAO.getUser", vo);
    }
    
    public UserVO checkNic(UserVO vo){
    	System.out.println("===> Mybatis로 checkNic() 기능 처리");
    	return (UserVO) mybatis.selectOne("UserDAO.checkNic", vo);
    }
    public UserVO findId(UserVO vo){
    	System.out.println("===> Mybatis로 findId() 기능 처리");
    	return (UserVO) mybatis.selectOne("UserDAO.findId", vo);
    }
    public UserVO findPw(UserVO vo){
    	System.out.println("===> Mybatis로 findPw() 기능 처리");
    	return (UserVO) mybatis.selectOne("UserDAO.findPw", vo);
    }
    public void tempPw(UserVO vo){
    	System.out.println("===> Mybatis로 findPw() 기능 처리");
    	mybatis.update("UserDAO.tempPw", vo);
    }

    public List<Map<String, Object>> getUserList(UserVO vo) {
        System.out.println("===> Mybatis로 getUserList() 기능 처리");
        return mybatis.selectList("UserDAO.getUserList", vo);
    }	
    public List<UserVO> getUserListVO(UserVO vo) {
        System.out.println("===> Mybatis로 getUserList() 기능 처리");
        return mybatis.selectList("UserDAO.getUserList", vo);
    }
 
}
