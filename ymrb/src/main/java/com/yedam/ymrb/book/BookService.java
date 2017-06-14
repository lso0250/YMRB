package com.yedam.ymrb.book;

import java.util.List;





public interface BookService {

	//글 등록
	void insertBook(BookVO vo);
	void insertBook2(BookVO vo);
	
	//상세 조회
	BookVO bookView(BookVO vo);
	List<BookVO> getBookList(BookVO vo);
	List<BookVO> getBookList2(BookVO vo);
	List<BookVO> getBookList3(BookVO vo);
	List<BookVO> getBookList4(BookVO vo);
	BookVO codetitle(BookVO vo);
}
