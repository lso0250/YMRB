package com.yedam.ymrb.genre;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;






@Service("genreService")
public class GenreServiceImpl implements GenreService{

	
	@Autowired
    //private BoardDAOSpring boardDAO;   
	private GenreDAOMybatis genreDAO;
	
	
	public List<GenreVO> getGenreList(GenreVO vo) {
    	      return genreDAO.getGenreList(vo);
    	    }
	public List<Genre2VO> getGenreList2(Genre2VO vo) {
	      return genreDAO.getGenreList2(vo);
	    }
    public void genreInsert(Genre2VO vo) {
    	
    	genreDAO.genreInsert(vo);
      
    }
    public void updateGenre(Genre2VO vo) {
    	genreDAO.updateGenre(vo);
    }
}
