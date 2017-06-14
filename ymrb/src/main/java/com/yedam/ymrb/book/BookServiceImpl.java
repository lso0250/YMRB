package com.yedam.ymrb.book;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;






@Service("bookService")
public class BookServiceImpl implements BookService {

	@Autowired
    //private BoardDAOSpring boardDAO;   
	private BookDAOMybatis bookDAO;
    
    public void insertBook(BookVO vo) {
    	bookDAO.insertBook(vo);
       
        //트랜잭션 테스트
        //boardDAO.insertBoard(vo);
    }
    public void insertBook2(BookVO vo) {
    	bookDAO.insertBook2(vo);
       
        //트랜잭션 테스트
        //boardDAO.insertBoard(vo);
    }
    
    public BookVO bookView(BookVO vo) {  	
        return bookDAO.bookView(vo);
    }
    public BookVO codetitle(BookVO vo) {  	
        return bookDAO.codetitle(vo);
    }
    public List<BookVO> getBookList(BookVO vo) {
        return bookDAO.getBookList(vo);
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
    
}
