package com.yedam.ymrb.buylist;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service("buyService")
public class BuyServiceImpl implements BuyService {
	@Autowired
    //private BoardDAOSpring boardDAO;   
	private BuyDAOMybatis buyDAO;
	
	public void insertBuy(BuyVO vo) {
    	buyDAO.insertBuy(vo);
    }
	public void insertBuy1(BuyVO vo) {
    	buyDAO.insertBuy1(vo);
    }
	@Override
	public List<BuyVO> BuyList(BuyVO vo) {
		// TODO Auto-generated method stub
		return buyDAO.BuyList(vo);
	}
	@Override
	public int buylistCount(BuyVO vo) {
		// TODO Auto-generated method stub
		return buyDAO.buylistCount(vo);
	}
}
