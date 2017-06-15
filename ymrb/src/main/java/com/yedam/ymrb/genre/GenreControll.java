package com.yedam.ymrb.genre;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class GenreControll {
	
	@Autowired GenreService genreService;
	
	@RequestMapping("/genrelist.do")
	
	public @ResponseBody List<GenreVO> getGenreList(GenreVO vo) throws Exception {
	
		
		return genreService.getGenreList(vo);
	}
	
	@RequestMapping("/genrelist2.do")
	
	public @ResponseBody List<Genre2VO> getGenreList2(Genre2VO vo) throws Exception {
	
		
		return genreService.getGenreList2(vo);
	}
	
}
