package com.yedam.ymrb.genre;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yedam.ymrb.book.BookVO;




@Service("genreService")
public class GenreServiceImpl implements GenreService{

	
	@Autowired
    //private BoardDAOSpring boardDAO;   
	private GenreDAOMybatis genreDAO;
	
	
	public List<GenreVO> getGenreList(GenreVO vo) {
    	      return genreDAO.getGenreList(vo);
    	    }
    public void genreInsert(Genre2VO vo) {
    	
    	genreDAO.genreInsert(vo);
      
    }
}
