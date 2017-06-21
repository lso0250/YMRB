package com.yedam.ymrb.buylist;
import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.yedam.ymrb.util.PaginationInfo;

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
	public String rentlist(BuyVO vo, Model model){
		//페이징처리
		PaginationInfo paginationInfo = new PaginationInfo();
		paginationInfo.setCurrentPageNo(vo.getPageIndex());
		paginationInfo.setRecordCountPerPage(vo.getPageUnit());
		paginationInfo.setPageSize(vo.getPageSize());
		vo.setFirstIndex(paginationInfo.getFirstRecordIndex());
		vo.setLastIndex(paginationInfo.getLastRecordIndex());
		paginationInfo.setTotalRecordCount(BuyService.buylistCount(vo));
		model.addAttribute("paginationInfo", paginationInfo);
		//목록조회
		model.addAttribute("rentlist",BuyService.BuyList(vo));
		return "/mypage/rentlist";
	}
}
