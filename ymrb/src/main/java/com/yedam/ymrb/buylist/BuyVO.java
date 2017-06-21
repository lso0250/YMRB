package com.yedam.ymrb.buylist;



public class BuyVO extends com.yedam.ymrb.book.BookVO{

	/**
	 * 
	 */
	private String rentListDate;
	private String rentStartDate;
	private int memNum;
	private int buyrent;
	private String buyDate;
	private int bookNum;
	private int rentNum;
	private int cartNum;
	public int getCartNum() {
		return cartNum;
	}
	public void setCartNum(int cartNum) {
		this.cartNum = cartNum;
	}
	public String getRentListDate() {
		return rentListDate;
	}
	public void setRentListDate(String rentListDate) {
		this.rentListDate = rentListDate;
	}
	public String getRentStartDate() {
		return rentStartDate;
	}
	public void setRentStartDate(String rentStartDate) {
		this.rentStartDate = rentStartDate;
	}
	public int getMemNum() {
		return memNum;
	}
	public void setMemNum(int memNum) {
		this.memNum = memNum;
	}
	public int getBuyrent() {
		return buyrent;
	}
	public void setBuyrent(int buyrent) {
		this.buyrent = buyrent;
	}
	public String getBuyDate() {
		return buyDate;
	}
	public void setBuyDate(String buyDate) {
		this.buyDate = buyDate;
	}
	public int getBookNum() {
		return bookNum;
	}
	public void setBookNum(int bookNum) {
		this.bookNum = bookNum;
	}
	public int getRentNum() {
		return rentNum;
	}
	public void setRentNum(int rentNum) {
		this.rentNum = rentNum;
	}
	
}
