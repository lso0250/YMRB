package com.yedam.ymrb.cash;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yedam.ymrb.book.BookVO;

@Service("cashService")
public class CashServiceImpl implements CashService {
	@Autowired
	private CashDAOMybatis cashDAO;

	public void insertCash(CashVO vo) {
		cashDAO.insertCash(vo);
	}
	public void updateCash(CashVO vo) {
		cashDAO.updateCash(vo);
	}
	public List<CashVO> cashList(CashVO vo) {
		// TODO Auto-generated method stub
		return cashDAO.cashList(vo);
	}
}
