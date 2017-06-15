package com.yedam.ymrb.cart;

public class CartVO {
	private int cart_num;
	private int book_num;
	private int mem_num;
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
	@Override
	public String toString() {
		return "CartVO [cart_num=" + cart_num + ", book_num=" + book_num
				+ ", mem_num=" + mem_num + "]";
	}
	
	
}
