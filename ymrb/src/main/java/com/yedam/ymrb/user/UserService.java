package com.yedam.ymrb.user;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.stereotype.Service;

public interface UserService {
	public void insertUser(UserVO vo);
	public void updateUser(UserVO vo);
	public void deleteUser(UserVO vo);
	public UserVO getUser(UserVO vo);
	public List<Map<String,Object>> 
	                  getUserList(UserVO vo);
	public List<UserVO> getUserListVO(UserVO vo);	
	public UserVO login(UserVO vo);
	public boolean checkId(UserVO vo);
	public boolean checkNic(UserVO vo);
	public UserVO findId(UserVO vo);
	public boolean findPw(UserVO vo);
	public void tempPw(UserVO vo);
}
