package com.yedam.ymrb.buylist;

import java.util.List;



public interface BuyService {
	
	
	void insertBuy(BuyVO vo);
	void insertBuy1(BuyVO vo);
	//전체리스트조회
	List<BuyVO> BuyList(BuyVO vo);
	//카운트조회
	int buylistCount(BuyVO vo); 
}
