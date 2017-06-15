package com.yedam.ymrb.buylist;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository
public class BuyDAOMybatis {
	@Autowired
	private SqlSessionTemplate mybatis;
	
	public void insertBuy(BuyVO vo) {
       
        mybatis.insert("BuyDAO.insertBuy", vo);
    }
	public void insertBuy1(BuyVO vo) {
	       
        mybatis.insert("BuyDAO.insertBuy1", vo);
    }
}
