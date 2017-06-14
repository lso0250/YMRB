package com.yedam.ymrb.book;

import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

public class BookVO {
	private int bookNum; 
	private int parentNum;
	private int childNum;
	private String bookTitle;
	private String bookWriter;
	private String bookPublisher; 
	private int bookprice; 
	private int bookRent;
	private String bookPublishDate;
	private String bookImage;
	private String bookAttactment; 
	private String bookContents;
	private String bookAgeLimit;
	private MultipartFile uploadFile;
	private MultipartFile imageFile;
	private String[] codecontent;
	private String[] codecontent2;
	private String[] titleserise;
	private String[] dateserise;
	private MultipartFile[] fileserise;
	private String codeContents;
	private Date bookDate;
	
	public Date getBookDate() {
		return bookDate;
	}
	public void setBookDate(Date bookDate) {
		this.bookDate = bookDate;
	}
	public String getCodeContents() {
		return codeContents;
	}
	public void setCodeContents(String codeContents) {
		this.codeContents = codeContents;
	}
	public MultipartFile[] getFileserise() {
		return fileserise;
	}
	public void setFileserise(MultipartFile[] fileserise) {
		this.fileserise = fileserise;
	}
	public String[] getTitleserise() {
		return titleserise;
	}
	public void setTitleserise(String[] titleserise) {
		this.titleserise = titleserise;
	}
	public String[] getDateserise() {
		return dateserise;
	}
	public void setDateserise(String[] dateserise) {
		this.dateserise = dateserise;
	}

	public String[] getCodecontent() {
		return codecontent;
	}
	public void setCodecontent(String[] codecontent) {
		this.codecontent = codecontent;
	}
	public String[] getCodecontent2() {
		return codecontent2;
	}
	public void setCodecontent2(String[] codecontent2) {
		this.codecontent2 = codecontent2;
	}
	public MultipartFile getImageFile() {
		return imageFile;
	}
	public void setImageFile(MultipartFile imageFile) {
		this.imageFile = imageFile;
	}
	public MultipartFile getUploadFile() {
		return uploadFile;
	}
	public void setUploadFile(MultipartFile uploadFile) {
		this.uploadFile = uploadFile;
	}
	public int getBookNum() {
		return bookNum;
	}
	public void setBookNum(int bookNum) {
		this.bookNum = bookNum;
	}
	public int getParentNum() {
		return parentNum;
	}
	public void setParentNum(int parentNum) {
		this.parentNum = parentNum;
	}
	public int getChildNum() {
		return childNum;
	}
	public void setChildNum(int childNum) {
		this.childNum = childNum;
	}
	public String getBookTitle() {
		return bookTitle;
	}
	public void setBookTitle(String bookTitle) {
		this.bookTitle = bookTitle;
	}
	public String getBookWriter() {
		return bookWriter;
	}
	public void setBookWriter(String bookWriter) {
		this.bookWriter = bookWriter;
	}
	public String getBookPublisher() {
		return bookPublisher;
	}
	public void setBookPublisher(String bookPublisher) {
		this.bookPublisher = bookPublisher;
	}
	public int getBookprice() {
		return bookprice;
	}
	public void setBookprice(int bookprice) {
		this.bookprice = bookprice;
	}
	public int getBookRent() {
		return bookRent;
	}
	public void setBookRent(int bookRent) {
		this.bookRent = bookRent;
	}
	public String getBookPublishDate() {
		return bookPublishDate;
	}
	public void setBookPublishDate(String bookPublishDate) {
		this.bookPublishDate = bookPublishDate;
	}
	public String getBookImage() {
		return bookImage;
	}
	public void setBookImage(String bookImage) {
		this.bookImage = bookImage;
	}
	public String getBookAttactment() {
		return bookAttactment;
	}
	public void setBookAttactment(String bookAttactment) {
		this.bookAttactment = bookAttactment;
	}
	public String getBookContents() {
		return bookContents;
	}
	public void setBookContents(String bookContents) {
		this.bookContents = bookContents;
	}
	public String getBookAgeLimit() {
		return bookAgeLimit;
	}
	public void setBookAgeLimit(String bookAgeLimit) {
		this.bookAgeLimit = bookAgeLimit;
	}
	@Override
	public String toString() {
		return "BookVO [bookNum=" + bookNum + ", parentNum=" + parentNum
				+ ", childNum=" + childNum + ", bookTitle=" + bookTitle
				+ ", bookWriter=" + bookWriter + ", bookPublisher="
				+ bookPublisher + ", bookprice=" + bookprice + ", bookRent="
				+ bookRent + ", bookPublishDate=" + bookPublishDate
				+ ", bookImage=" + bookImage + ", bookAttactment="
				+ bookAttactment + ", bookContents=" + bookContents
				+ ", bookAgeLimit=" + bookAgeLimit + "]";
	} 
	
}
