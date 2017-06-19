package com.yedam.ymrb.book;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yedam.ymrb.board.BoardVO;

@Repository
public class BookDAOMybatis {
	
	
	@Autowired
	private SqlSessionTemplate mybatis;
	
	public void insertBook(BookVO vo) {
        mybatis.insert("BookDAO.insertBook", vo);
    }
	public BookVO bookView(BookVO vo) {    
        return (BookVO) mybatis.selectOne("BookDAO.bookView", vo);
    }
	//조회수
	public void updateBook(BookVO vo) {   
        mybatis.update("BookDAO.updateBook", vo);
    }
	public void updateBook1(BookVO vo) { 
        mybatis.update("BookDAO.updateBook1", vo);
    }
	public void updateBook2(BookVO vo) { 
        mybatis.update("BookDAO.updateBook2", vo);
    }
	public List<BookVO> getBookList(BookVO vo) {      
        return mybatis.selectList("BookDAO.getBookList", vo);
    }
	public List<BookVO> getSeriseList(BookVO vo) {	      
        return mybatis.selectList("BookDAO.getSeriseList", vo);
    }	


	public BookVO codetitle(BookVO vo){
		return (BookVO) mybatis.selectOne("BookDAO.codetitle", vo);
	}
	public List<BookVO> getBookList1(BookVO vo) {
	      
        return mybatis.selectList("BookDAO.getBookList1", vo);
    }
	public List<BookVO> getBookList2(BookVO vo) {
	      
        return mybatis.selectList("BookDAO.getBookList2", vo);
    }
	public List<BookVO> getBookList3(BookVO vo) {
	      
        return mybatis.selectList("BookDAO.getBookList3", vo);
    }
	public List<BookVO> getBookList4(BookVO vo) {
	      
        return mybatis.selectList("BookDAO.getBookList4", vo);
    }
	public List<BookVO> serchResult(BookVO vo) {
		return mybatis.selectList("BookDAO.serchResult", vo);
	}

    public int serchResultCount(BookVO vo){
    	return mybatis.selectOne("BookDAO.serchResultCount", vo);
    }
    public int getBookList1Count(BookVO vo){
    	return mybatis.selectOne("BookDAO.getBookList1Count", vo);
    }
}
