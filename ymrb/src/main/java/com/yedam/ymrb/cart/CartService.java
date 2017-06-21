package com.yedam.ymrb.cart;

import java.util.List;

import com.yedam.ymrb.buylist.BuyVO;
import com.yedam.ymrb.user.UserVO;

public interface CartService {

	public void insertCart(CartVO vo);
	void cartInsert(BuyVO vo);
	public List<UserVO> cartList(CartVO vo);
	public void deleteCart(CartVO vo);
}
