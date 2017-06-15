package com.yedam.ymrb.board;

import java.sql.Date;

public class BoardVO {
	private int board_num;
	private String board_title;
	private String board_contents;
	private Date board_date;
	private int board_hits;
	private int mem_num;
	
	
	public int getBoard_num() {
		return board_num;
	}
	public void setBoard_num(int board_num) {
		this.board_num = board_num;
	}
	public String getBoard_title() {
		return board_title;
	}
	public void setBoard_title(String board_title) {
		this.board_title = board_title;
	}
	public String getBoard_contents() {
		return board_contents;
	}
	public void setBoard_contents(String board_contents) {
		this.board_contents = board_contents;
	}
	public Date getBoard_date() {
		return board_date;
	}
	public void setBoard_date(Date board_date) {
		this.board_date = board_date;
	}
	public int getBoard_hits() {
		return board_hits;
	}
	public void setBoard_hits(int board_hits) {
		this.board_hits = board_hits;
	}
	public int getMem_num() {
		return mem_num;
	}
	public void setMem_num(int mem_num) {
		this.mem_num = mem_num;
	}
	@Override
	public String toString() {
		return "BoardVO [board_num=" + board_num + ", board_title="
				+ board_title + ", board_contents=" + board_contents
				+ ", board_date=" + board_date + ", board_hits=" + board_hits
				+ ", mem_num=" + mem_num + "]";
	}
	
	

}
