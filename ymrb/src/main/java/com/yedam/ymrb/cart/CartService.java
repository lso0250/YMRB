package com.yedam.ymrb.cart;

import com.yedam.ymrb.buylist.BuyVO;

public interface CartService {

	public void insertCart(CartVO vo);
	void cartInsert(BuyVO vo);
}
