package com.yedam.ymrb.cart;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yedam.ymrb.user.UserVO;

@Repository
public class CartMybatis {
	@Autowired
	private SqlSessionTemplate mybatis;
	
	public void insertCart(CartVO vo) {
        System.out.println("===> Mybatis로 insertCart() 기능 처리");
        mybatis.insert("CartDAO.insertCart", vo);
        
    }
	
}
