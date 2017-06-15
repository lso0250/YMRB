package com.yedam.ymrb.reply;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("replyService")
public class ReplyServiceImpl implements ReplyService {

	@Autowired
	
	private ReplyDAOMybatis replyDAO;
	
	public void insertReply(ReplyVO vo) {
		// TODO Auto-generated method stub
		replyDAO.insertReply(vo);
		System.out.println("등록 댓글번호 : " + vo.getReply_num());		
	}

	public void updateReply(ReplyVO vo) {
		// TODO Auto-generated method stub
		replyDAO.updateReply(vo);
	}

	public void deleteReply(ReplyVO vo) {
		// TODO Auto-generated method stub
		replyDAO.deleteReply(vo);
	}

	public List<Map<String, Object>> getReplyList(ReplyVO vo) {
		// TODO Auto-generated method stub
		return replyDAO.getReplyList(vo);
	}
	
}
