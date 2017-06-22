package com.yedam.ymrb.reply;

import java.sql.Date;

public class ReplyVO {
	private int reply_num;
	private String reply_contents;
	private Date reply_date;
	private int mem_num;
	private int book_num;
	private String mem_nic;
	
	
	public int getReply_num() {
		return reply_num;
	}
	public void setReply_num(int reply_num) {
		this.reply_num = reply_num;
	}
	public String getReply_contents() {
		return reply_contents;
	}
	public void setReply_contents(String reply_contents) {
		this.reply_contents = reply_contents;
	}
	public Date getReply_date() {
		return reply_date;
	}
	public void setReply_date(Date reply_date) {
		this.reply_date = reply_date;
	}
	public int getMem_num() {
		return mem_num;
	}
	public void setMem_num(int mem_num) {
		this.mem_num = mem_num;
	}
	public int getBook_num() {
		return book_num;
	}
	public void setBook_num(int book_num) {
		this.book_num = book_num;
	}
	public String getMem_nic() {
		return mem_nic;
	}
	public void setMem_nic(String mem_nic) {
		this.mem_nic = mem_nic;
	}
	@Override
	public String toString() {
		return "ReplyVO [reply_num=" + reply_num + ", reply_contents="
				+ reply_contents + ", reply_date=" + reply_date + ", mem_num="
				+ mem_num + ", book_num=" + book_num + ", mem_nic=" + mem_nic
				+ "]";
	}
	
}
