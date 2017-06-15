package com.yedam.ymrb.reply;

import java.util.List;
import java.util.Map;

public interface ReplyService {
	//insert reply
	void insertReply(ReplyVO vo);
	
	//update reply
	void updateReply(ReplyVO vo);

	//delete reply
	void deleteReply(ReplyVO vo);
	
	//reply list
	List<Map<String, Object>> getReplyList(ReplyVO vo);
	
}
