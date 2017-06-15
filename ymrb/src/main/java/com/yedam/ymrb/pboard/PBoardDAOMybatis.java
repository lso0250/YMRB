package com.yedam.ymrb.pboard;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;



@Repository
public class PBoardDAOMybatis {

	@Autowired
	private SqlSessionTemplate mybatis;
	
	public void insertPBoard(PBoardVO vo){
	    System.out.println("===> Mybatis로 insertPBoard() 기능 처리");
        mybatis.insert("BoardDAO.insertPBoard", vo);
    }

    public void updatePBoard(PBoardVO vo) {
        System.out.println("===> Mybatis로 updatePBoard() 기능 처리");
        mybatis.update("BoardDAO.updatePBoard", vo);
    }

    public void deletePBoard(PBoardVO vo) {
        System.out.println("===> Mybatis로 deletePBoard() 기능 처리");
        mybatis.delete("BoardDAO.deletePBoard", vo);
    }

    public PBoardVO getPBoard(PBoardVO vo) {
        System.out.println("===> Mybatis로 getPBoard() 기능 처리");
        mybatis.update("BoardDAO.pboardHits",vo);
        return mybatis.selectOne("BoardDAO.getPBoard", vo);
 
    }

    public List<Map<String, Object>> getPBoardList(PBoardVO vo) {
        System.out.println("===> Mybatis로 getPBoardList() 기능 처리");
        return mybatis.selectList("BoardDAO.getPBoardList", vo);
    }	
	
}
