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
	//글등록
	public void insertBook(BookVO vo) {
        mybatis.insert("BookDAO.insertBook", vo);
    }
	//자식 삭제
	public void deleteBook(BookVO vo) {
        mybatis.delete("BookDAO.deleteBook", vo);
    }
	//상세보기
	public BookVO bookView(BookVO vo) {    
        return (BookVO) mybatis.selectOne("BookDAO.bookView", vo);
    }
	//조회수
	public void updateBook(BookVO vo) {   
        mybatis.update("BookDAO.updateBook", vo);
    }
	//부모글수정
	public void updateBook1(BookVO vo) { 
        mybatis.update("BookDAO.updateBook1", vo);
    }
	//자식글수정
	public void updateBook2(BookVO vo) { 
        mybatis.update("BookDAO.updateBook2", vo);
    }
	public List<BookVO> getBookList(BookVO vo) {      
        return mybatis.selectList("BookDAO.getBookList", vo);
    }
	//시리즈조회
	public List<BookVO> getSeriseList(BookVO vo) {	      
        return mybatis.selectList("BookDAO.getSeriseList", vo);
    }	
	//타이틀조회
	public BookVO codetitle(BookVO vo){
		return (BookVO) mybatis.selectOne("BookDAO.codetitle", vo);
	}
	//메뉴리스트 
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
	//검색결과
	public List<BookVO> searchResult(BookVO vo) {
		return mybatis.selectList("BookDAO.searchResult", vo);
	}
	//검색결과카운트
    public int searchResultCount(BookVO vo){
    	return mybatis.selectOne("BookDAO.searchResultCount", vo);
    }
    public int getBookList1Count(BookVO vo){
    	return mybatis.selectOne("BookDAO.getBookList1Count", vo);
    }
}
