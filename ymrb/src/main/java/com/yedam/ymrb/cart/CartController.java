package com.yedam.ymrb.cart;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.yedam.ymrb.book.BookVO;
import com.yedam.ymrb.buylist.BuyVO;
import com.yedam.ymrb.user.UserVO;




@Controller
public class CartController {
	@Autowired
	CartService cartService;
	
	@RequestMapping("insertCart.do")
	public void insertCart(CartVO vo){
		cartService.insertCart(vo);
	}
	@RequestMapping("cartList.do")
	@ResponseBody
	public List<UserVO> CartList(CartVO vo, Model mo){
		List<UserVO> cart = cartService.cartList(vo);
		mo.addAttribute("cart",cart);
		return cart;
	}
	@RequestMapping("shoppingCart.do")
	public ModelAndView cartList(CartVO vo) {
		ModelAndView mv = new ModelAndView();
		cartService.cartList(vo);
		mv.addObject("cart",cartService.cartList(vo));
		mv.setViewName("/popup/cart/cart3");
		return mv;
		
	}
	@RequestMapping("cartDel.do")
	@ResponseBody
	public boolean CartDel(CartVO vo){
		cartService.deleteCart(vo);
		return true;
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
