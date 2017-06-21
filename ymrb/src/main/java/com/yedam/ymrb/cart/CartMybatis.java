package com.yedam.ymrb.cart;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yedam.ymrb.buylist.BuyVO;
import com.yedam.ymrb.user.UserVO;

@Repository
public class CartMybatis {
	@Autowired
	private SqlSessionTemplate mybatis;
	
	public void insertCart(CartVO vo) {
        mybatis.insert("CartDAO.insertCart", vo);   
    }
	public void cartInsert(BuyVO vo) {
        mybatis.insert("CartDAO.cartInsert", vo);
    }	
	public List<UserVO> cartList(CartVO vo) {
        return mybatis.selectList("CartDAO.CartList", vo);       
	}
	public void deleteCart(CartVO vo) {
        mybatis.insert("CartDAO.deleteCart", vo);   
    }
}
