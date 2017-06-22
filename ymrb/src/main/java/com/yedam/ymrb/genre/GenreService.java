package com.yedam.ymrb.genre;

import java.util.List;





public interface GenreService {

	List<GenreVO> getGenreList(GenreVO vo);
	void genreInsert(Genre2VO vo);
	List<Genre2VO> getGenreList2(Genre2VO vo);
	void updateGenre(Genre2VO vo);
	void deleteGenre(Genre2VO vo);
}
