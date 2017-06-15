package com.yedam.ymrb.reply;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ReplyController {

	@Resource ReplyService replyService;
	
	//insert
	@RequestMapping(value="/insertReply.do")
	public String insertReply(ReplyVO vo) {
		replyService.insertReply(vo);
		return "redirectL/getBoard";
	}

	//insert Form
	@RequestMapping("/replyInsert.do")
	public String replyInsertForm(){
		return "reply/replyInsert";
	}
	
	//list
	@RequestMapping("getReplyList.do")
	public String getReplyList(ReplyVO vo, Model model) throws Exception{
		model.addAttribute("replyList",replyService.getReplyList(vo));
		return "reply/getReplyList";
	}
	
	//update Form
	@RequestMapping("/replyUpdateForm.do")
	public String replyUpdateForm(@ModelAttribute("reply") ReplyVO vo, Model model){
		System.out.println(vo);
		model.addAttribute("reply", replyService.getReplyList(vo));
		return "reply/replyUpdate";
	}
	
	//update
	@RequestMapping("/replyUpdate.do")
	public String replyUpdate(@ModelAttribute("reply") ReplyVO vo, Model model){
		replyService.updateReply(vo);
		return "redirectL/getPBoard.do";
	}
	
	//delete
	@RequestMapping(value="/replyDelete.do")
	public String deleteReply(@ModelAttribute("reply")ReplyVO vo, Model model){
		replyService.deleteReply(vo);
		return "redirect:/getPBoard.do";
		
	}
	
	
	
}
