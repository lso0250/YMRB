package com.yedam.ymrb.book;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;





@Repository
public class BookDAOMybatis {
	
	
	@Autowired
	private SqlSessionTemplate mybatis;
	
	public void insertBook(BookVO vo) {
       
        mybatis.insert("BookDAO.insertBook", vo);
    }
	public void insertBook2(BookVO vo) {
	       
        mybatis.insert("BookDAO.insertBook2", vo);
    }
	public BookVO bookView(BookVO vo) {
       
        return (BookVO) mybatis.selectOne("BookDAO.bookView", vo);
    }
	public BookVO codetitle(BookVO vo){
		return (BookVO) mybatis.selectOne("BookDAO.codetitle", vo);
	}
	public List<BookVO> getBookList(BookVO vo) {
	      
        return mybatis.selectList("BookDAO.getBookList", vo);
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
}
