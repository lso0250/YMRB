package com.yedam.ymrb.cart;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yedam.ymrb.user.UserService;

@Service("cartService")
public class CartServiceImpl implements CartService {
	@Autowired
	//private UserMapper userDAO;
	private CartMybatis cartDAO;
	public void insertCart(CartVO vo){
		cartDAO.insertCart(vo);
	}
}
