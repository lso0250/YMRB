package com.yedam.ymrb.cash;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;



@Repository
public class CashDAOMybatis {
	@Autowired
	private SqlSessionTemplate mybatis;
	
	public void insertCash(CashVO vo) {
        mybatis.insert("CashDAO.insertCash", vo);
    }
	public void updateCash(CashVO vo){
		mybatis.update("CashDAO.updateCash", vo);
	}
	//캐시사용내역 조회
	public List<CashVO> cashList(CashVO vo) {
		return mybatis.selectList("CashDAO.cashList", vo);
	}
}


