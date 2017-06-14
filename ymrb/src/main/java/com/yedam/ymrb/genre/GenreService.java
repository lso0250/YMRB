package com.yedam.ymrb.genre;

import java.util.List;



public interface GenreService {

	List<GenreVO> getGenreList(GenreVO vo);
	void genreInsert(Genre2VO vo);
}
