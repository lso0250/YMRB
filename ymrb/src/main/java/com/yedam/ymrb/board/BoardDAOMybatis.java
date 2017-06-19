package com.yedam.ymrb.board;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;



@Repository
public class BoardDAOMybatis {
	
	@Autowired
	private SqlSessionTemplate mybatis;
/*	private SqlSession mybatis;	
	public BoardDAOMybatis() {
		mybatis = SqlSessionFactoryBean.getSqlSessionInsance();
	}*/	
	
    public void insertBoard(BoardVO vo) {
        System.out.println("===> Mybatis로 insertBoard() 기능 처리");
        mybatis.insert("BoardDAO.insertBoard", vo);
    }

    public void updateBoard(BoardVO vo) {
        System.out.println("===> Mybatis로 updateBoard() 기능 처리");
        mybatis.update("BoardDAO.updateBoard", vo);
    }

    public void deleteBoard(BoardVO vo) {
        System.out.println("===> Mybatis로 deleteBoard() 기능 처리");
        mybatis.delete("BoardDAO.deleteBoard", vo);
    }

    public BoardVO getBoard(BoardVO vo) {
        System.out.println("===> Mybatis로 getBoard() 기능 처리");
        mybatis.update("BoardDAO.boardHits",vo);
        return mybatis.selectOne("BoardDAO.getBoard", vo);
 
    }

    public List<Map<String, Object>> getBoardList(BoardVO vo) {
        System.out.println("===> Mybatis로 getBoardList() 기능 처리");
        return mybatis.selectList("BoardDAO.getBoardList", vo);
    }	

    
}
