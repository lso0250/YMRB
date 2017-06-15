package com.yedam.ymrb.cart;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;




@Controller
public class CartController {
	@Autowired
	CartService cartService;
	
	@RequestMapping("insertCart.do")
	public void insertCart(CartVO vo){
		cartService.insertCart(vo);
	}
}
