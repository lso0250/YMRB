package com.yedam.ymrb.reply;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class ReplyController {

	@Resource ReplyService replyService;
	
	//insert
	@RequestMapping(value="/reply/insertReply.do")
	public @ResponseBody ReplyVO insertReply(ReplyVO vo, HttpSession session){
		System.out.println(vo);
		replyService.insertReply(vo);
		System.out.println(vo);
		
		vo = replyService.getReply(vo);
		System.out.println(vo);
		return vo;

	}
	/*@RequestMapping(value="/insertReply.do")
	public String insertReply(ReplyVO vo) {
		replyService.insertReply(vo);
		return "redirect/getBoard.do";
	}*/

	//insert Form
	/*@RequestMapping("/replyInsert.do")
	public String replyInsertForm(){
		return "reply/replyInsert";
	}*/
	
	//list
	@RequestMapping(value="/reply/getReplyList.do")
	public @ResponseBody List<Map<String, Object>> getReplyList(ReplyVO vo, HttpSession session) throws Exception{
		System.out.println(vo);
		return replyService.getReplyList(vo);
	}
/*	@RequestMapping("/reply/getReplyList.do")
	public String getReplyList(ReplyVO vo, Model model) throws Exception{
		model.addAttribute("replyList",replyService.getReplyList(vo));
		return "reply/getReplyList";
	}*/
/*	
	
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
		return "redirect/getPBoard.do";
	}
	*/
	//delete
	@RequestMapping(value="/reply/deleteReply.do")
	public String deleteReply(ReplyVO vo, HttpSession session){
		System.out.println(vo);
		replyService.deleteReply(vo);
		
		return "redirect:reply/reply.do";
	}
	/*@RequestMapping(value="/replyDelete.do")
	public String deleteReply(@ModelAttribute("reply")ReplyVO vo, Model model){
		replyService.deleteReply(vo);
		return "redirect:/getPBoard.do";
		
	}*/
	
	
	
}
