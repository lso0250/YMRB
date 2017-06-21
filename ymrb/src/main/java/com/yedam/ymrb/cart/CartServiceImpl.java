package com.yedam.ymrb.cart;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yedam.ymrb.buylist.BuyVO;
import com.yedam.ymrb.user.UserVO;


@Service("cartService")
public class CartServiceImpl implements CartService {
	@Autowired
	//private UserMapper userDAO;
	private CartMybatis cartDAO;
	public void insertCart(CartVO vo){
		cartDAO.insertCart(vo);
	}
	public void deleteCart(CartVO vo){
		cartDAO.deleteCart(vo);
	}
	public void cartInsert(BuyVO vo) {
    	cartDAO.cartInsert(vo);
    }
	public List<UserVO> cartList(CartVO vo){
		return cartDAO.cartList(vo);
	}
}
