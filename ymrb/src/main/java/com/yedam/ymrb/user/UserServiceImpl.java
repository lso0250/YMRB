package com.yedam.ymrb.user;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("userService")
public class UserServiceImpl implements UserService {

	@Autowired
	//private UserMapper userDAO;
	private UserDAOMybatis userDAO;
	
	public void insertUser(UserVO vo) {
		userDAO.insertUser(vo);
	}
	public void updateUser(UserVO vo) {
		userDAO.updateUser(vo);
	}
	public void deleteUser(UserVO vo) {
		userDAO.deleteUser(vo);
	}
	public UserVO getUser(UserVO vo) {
		return userDAO.getUser(vo);
	}
	public UserVO findId(UserVO vo){
		return userDAO.findId(vo);
	}
	public boolean findPw(UserVO vo){
		UserVO user = userDAO.findPw(vo);
		if(user != null){
			return true;  //비번 찾음
		}
		else{
			return false; //정보 없음
		}
	}
	public void tempPw(UserVO vo){
		userDAO.tempPw(vo);
	}
	public List<Map<String, Object>> getUserList(UserVO vo) {
		return userDAO.getUserList(vo);
	}
	@Override
	public List<UserVO> getUserListVO(UserVO vo) {
		return userDAO.getUserListVO(vo);
	}
	
	@Override
	public boolean checkId(UserVO vo) {
	
		//1. id로 단건조회
		UserVO result = userDAO.getUser(vo);
		System.out.println(vo);
		System.out.println(result);
		//2. ID 체크하고 
		if( result != null) {
			return false; // 사용 불가
		}
		return true; //사용가능
	}
	
	@Override
	public boolean checkNic(UserVO vo) {
		//1. nic로 단건조회
	
		UserVO result = userDAO.checkNic(vo);
		System.out.println(vo);
		System.out.println(result);
		//2. nic 체크하고 
		if( result != null) {
			System.out.println("false");
			return false; // 사용 불가
		}
		System.out.println("true");
		return true; //사용가능
	}
	
	@Override
	public UserVO login(UserVO vo) {
		//1. id로 단건조회
		UserVO result = userDAO.getUser(vo);
		//2. ID 체크하고 
		if( result != null) {
		//3. 패스워드 검사해서 일치하면 UsersVO
			if( result.getMem_pw().equals(vo.getMem_pw()) ) {
				return result;
			}
		}
		//4. 아니면 null 리턴
		return null;
	}
}
