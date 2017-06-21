package com.yedam.ymrb.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class webControll {

	@RequestMapping("/reader/")
	public String reader(){
		return "/popup/reader/index3";
	}
	@RequestMapping("/reader2/")
	public String reader2(){
		return "/popup/reader/index2";
	}

}
