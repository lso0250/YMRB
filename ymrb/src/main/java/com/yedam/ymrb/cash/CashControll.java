package com.yedam.ymrb.cash;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;




@Controller
public class CashControll {
	@Autowired
	CashService cashService;
	
	@RequestMapping("/insertCash.do")   //get 
	public @ResponseBody CashVO insertCash(CashVO vo2) 
	{
		if(vo2.getRadio() == 1){
			vo2.setMoney(2000);
			vo2.setPoint(120);
		}
		if(vo2.getRadio() == 2){
			vo2.setMoney(5000);
			vo2.setPoint(500);
		}
		if(vo2.getRadio() == 3){
			vo2.setMoney(10000);
			vo2.setPoint(1000);
		}
		if(vo2.getRadio() == 4){
			vo2.setMoney(20000);
			vo2.setPoint(2000);
		}
		if(vo2.getRadio() == 5){
			vo2.setMoney(30000);
			vo2.setPoint(4200);
		}
		if(vo2.getRadio() == 6){
			vo2.setMoney(50000);
			vo2.setPoint(7000);
		}
		if(vo2.getRadio() == 7){
			vo2.setMoney(70000);
			vo2.setPoint(9800);
		}
		if(vo2.getRadio() == 8){
			vo2.setMoney(100000);
			vo2.setPoint(18000);
		}
		if(vo2.getRadio() == 9){
			vo2.setMoney(200000);
			vo2.setPoint(36000);
		}
		if(vo2.getRadio() == 10){
			vo2.setMoney(300000);
			vo2.setPoint(54000);
		}
		
	
		cashService.insertCash(vo2);
		cashService.updateCash(vo2);

		return vo2;
	}
	@RequestMapping("/cashList.do")
	public String  cashList(CashVO vo, Model model) throws Exception {
		model.addAttribute("cashList", cashService.cashList(vo));
		return "mypage/cashdetail";
	}
	
}
