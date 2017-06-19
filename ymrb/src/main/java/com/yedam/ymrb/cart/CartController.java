package com.yedam.ymrb.cart;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yedam.ymrb.book.BookVO;
import com.yedam.ymrb.buylist.BuyVO;




@Controller
public class CartController {
	@Autowired
	CartService cartService;
	
	@RequestMapping("insertCart.do")
	public void insertCart(CartVO vo){
		cartService.insertCart(vo);
	}
	// 대여 장바구니 클릭시
	@RequestMapping("/cartBox.do")
	public @ResponseBody BookVO rentBox2(BookVO vo, BuyVO buyvo) {
		int[] booknu = vo.getChackBox();
		if (booknu != null) {
			for (int i = 0; i < booknu.length; i++) {
				buyvo.setBookNum(booknu[i]);
				cartService.cartInsert(buyvo);
			}
		} else {
			buyvo.setBookNum(vo.getBookNum());
			cartService.cartInsert(buyvo);
		}
		return vo;
	}
}
