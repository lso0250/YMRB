package com.yedam.ymrb.cash;

import java.util.List;



public interface CashService {
	
	
	void insertCash(CashVO vo);
	void updateCash(CashVO vo);
	List<CashVO> cashList(CashVO vo);
}
