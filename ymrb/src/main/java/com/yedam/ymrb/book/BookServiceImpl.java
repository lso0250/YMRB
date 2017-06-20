package com.yedam.ymrb.book;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yedam.ymrb.board.BoardVO;






@Service("bookService")
public class BookServiceImpl implements BookService {
	@Autowired
	private BookDAOMybatis bookDAO;
    

    public void insertBook(BookVO vo) {
    	bookDAO.insertBook(vo);
    }
    public BookVO bookView(BookVO vo) {  	
        return bookDAO.bookView(vo);
    }
    //조회수
    public void updateBook(BookVO vo) {
    	bookDAO.updateBook(vo);
    }
    public void updateBook1(BookVO vo) {
    	bookDAO.updateBook1(vo);
    }
    public void updateBook2(BookVO vo) {
    	bookDAO.updateBook2(vo);
    }
    public List<BookVO> getBookList(BookVO vo) {
        return bookDAO.getBookList(vo);
    }
    public List<BookVO> getSeriseList(BookVO vo) {
        return bookDAO.getSeriseList(vo);
    }
    public BookVO codetitle(BookVO vo) {  	
        return bookDAO.codetitle(vo);
    }
    public List<BookVO> getBookList1(BookVO vo) {
        return bookDAO.getBookList1(vo);
    }
    public List<BookVO> getBookList2(BookVO vo) {
        return bookDAO.getBookList2(vo);
    }
    public List<BookVO> getBookList3(BookVO vo) {
        return bookDAO.getBookList3(vo);
    }
    public List<BookVO> getBookList4(BookVO vo) {
        return bookDAO.getBookList4(vo);
    }
	public List<BookVO> searchResult(BookVO vo){
		return bookDAO.searchResult(vo);
	}

	@Override
	public int searchResultCount(BookVO vo) {
		// TODO Auto-generated method stub
		return bookDAO.searchResultCount(vo);
	}
	@Override
	public int getBookList1Count(BookVO vo) {
		// TODO Auto-generated method stub
		return bookDAO.getBookList1Count(vo);
	}

}
