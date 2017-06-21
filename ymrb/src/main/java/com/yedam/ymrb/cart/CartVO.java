package com.yedam.ymrb.cart;

public class CartVO {
	private int cart_num;
	private int book_num;
	private int mem_num;
	private String book_title;
	private String book_writer;
	private int book_price;
	private int book_rent;
	private String book_image;
	public int getCart_num() {
		return cart_num;
	}
	public void setCart_num(int cart_num) {
		this.cart_num = cart_num;
	}
	public int getBook_num() {
		return book_num;
	}
	public void setBook_num(int book_num) {
		this.book_num = book_num;
	}
	public int getMem_num() {
		return mem_num;
	}
	public void setMem_num(int mem_num) {
		this.mem_num = mem_num;
	}
	public String getBook_title() {
		return book_title;
	}
	public void setBook_title(String book_title) {
		this.book_title = book_title;
	}
	public String getBook_writer() {
		return book_writer;
	}
	public void setBook_writer(String book_writer) {
		this.book_writer = book_writer;
	}
	public int getBook_price() {
		return book_price;
	}
	public void setBook_price(int book_price) {
		this.book_price = book_price;
	}
	public int getBook_rent() {
		return book_rent;
	}
	public void setBook_rent(int book_rent) {
		this.book_rent = book_rent;
	}
	public String getBook_image() {
		return book_image;
	}
	public void setBook_image(String book_image) {
		this.book_image = book_image;
	}
	@Override
	public String toString() {
		return "CartVO [cart_num=" + cart_num + ", book_num=" + book_num
				+ ", mem_num=" + mem_num + ", book_title=" + book_title
				+ ", book_writer=" + book_writer + ", book_price=" + book_price
				+ ", book_rent=" + book_rent + ", book_image=" + book_image
				+ "]";
	}
	
	
	
}