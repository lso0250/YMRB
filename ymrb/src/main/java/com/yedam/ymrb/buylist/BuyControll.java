package com.yedam.ymrb.buylist;
import javax.annotation.Resource;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BuyControll {
	
	@Resource BuyService BuyService;
	@RequestMapping("/buylist.do")
	public String buylist(){
		return "/mypage/buylist";
	}
	@RequestMapping("/cash.do")
	public String cash(){
		return "/mypage/cash";
	}
	@RequestMapping("/cashdetail.do")
	public String cashdetail(){
		return "/mypage/cashdetail";
	}
	@RequestMapping("/mypage.do")
	public String mypage(){
		return "/mypage/mypage";
	}
	@RequestMapping("/rentlist.do")
	public String rentlist(){
		return "/mypage/rentlist";
	}
}
