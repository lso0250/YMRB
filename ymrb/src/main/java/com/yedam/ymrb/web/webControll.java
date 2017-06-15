package com.yedam.ymrb.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class webControll {

	
	@RequestMapping("/comic.do")
	public String comic(){
		return "/menu/comic";
	}//fantasy
	@RequestMapping("/fantasy.do")
	public String fantasy(){
		return "/menu/fantasy";
	}//romance
	@RequestMapping("/romance.do")
	public String romance(){
		return "/menu/romance";
	}
	
	@RequestMapping("bookSel.do")
	public String bookview(){
		return "/book/bookSel";
	}	

	@RequestMapping("/reader/")
	public String reader(){
		return "/popup/reader/index3";
	}
	@RequestMapping("/reader2/")
	public String reader2(){
		return "/popup/reader/index2";
	}

}
