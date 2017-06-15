package com.yedam.ymrb.genre;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;






@Repository
public class GenreDAOMybatis {

	
	@Autowired
	private SqlSessionTemplate mybatis;
	
	public List<GenreVO> getGenreList(GenreVO vo) {
        
        return mybatis.selectList("GenreDAO.getGenreList", vo);
    }	
	public void genreInsert(Genre2VO vo) {
       
        mybatis.insert("GenreDAO.genreInsert", vo);
    }
	//수정
	public List<Genre2VO> getGenreList2(Genre2VO vo) {
        
        return mybatis.selectList("GenreDAO.getGenreList2", vo);
    }	
	
	public void updateGenre(Genre2VO vo) {
        
        mybatis.update("GenreDAO.updateGenre", vo);
    }
}
