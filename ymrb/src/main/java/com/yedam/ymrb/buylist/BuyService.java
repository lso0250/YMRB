package com.yedam.ymrb.buylist;

import java.util.List;



public interface BuyService {
	
	
	void insertBuy(BuyVO vo);
	void insertBuy1(BuyVO vo);
	
	List<BuyVO> BuyList(BuyVO vo);
}
