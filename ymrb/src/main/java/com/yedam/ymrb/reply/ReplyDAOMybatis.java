package com.yedam.ymrb.reply;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ReplyDAOMybatis {

	@Autowired
	private SqlSessionTemplate mybatis;
	
	public void insertReply(ReplyVO vo){
		System.out.println("===> Mybatis로 insertReply() 기능 처리");
        mybatis.insert("ReplyDAO.insertReply", vo);
	}
	
	public void updateReply(ReplyVO vo){
		System.out.println("===> Mybatis로 updateReply() 기능 처리");
        mybatis.update("ReplyDAO.updateReply", vo);
	}
	
	public void deleteReply(ReplyVO vo){
		System.out.println("===> Mybatis로 deleteReply() 기능 처리");
        mybatis.delete("ReplyDAO.deleteReply", vo);
	}
	
	public List<Map<String,Object>> getReplyList(ReplyVO vo){
		System.out.println("===> Mybatis로 getReplyList() 기능 처리");
        return mybatis.selectList("ReplyDAO.getReplyList()", vo);
	}
}
