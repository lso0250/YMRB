package com.yedam.ymrb.book;

import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

public class BookVO extends com.yedam.ymrb.util.SearchVO{
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
	private String codeContents2;
	private String codeContents3;
	private String codeContents4;
	private String codeContents5;
	private String codeContents6;
	private String code_contents;
	private String code_contents2;
	private Date bookDate;
	private int bookHit;
	private int [] chackBox;
	private String key;
	private String keyword;

	public String getCodeContents2() {
		return codeContents2;
	}
	public void setCodeContents2(String codeContents2) {
		this.codeContents2 = codeContents2;
	}
	public String getCodeContents3() {
		return codeContents3;
	}
	public void setCodeContents3(String codeContents3) {
		this.codeContents3 = codeContents3;
	}
	public String getCodeContents4() {
		return codeContents4;
	}
	public void setCodeContents4(String codeContents4) {
		this.codeContents4 = codeContents4;
	}
	public String getCodeContents5() {
		return codeContents5;
	}
	public void setCodeContents5(String codeContents5) {
		this.codeContents5 = codeContents5;
	}
	public String getCodeContents6() {
		return codeContents6;
	}
	public void setCodeContents6(String codeContents6) {
		this.codeContents6 = codeContents6;
	}
	public String getKey() {
		return key;
	}
	public void setKey(String key) {
		this.key = key;
	}
	public String getKeyword() {
		return keyword;
	}
	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}
	public String getCodeContents() {
		return codeContents;
	}
	public void setCodeContents(String codeContents) {
		this.codeContents = codeContents;
	}
	public String getCode_contents() {
		return code_contents;
	}
	public void setCode_contents(String code_contents) {
		this.code_contents = code_contents;
	}
	public String getCode_contents2() {
		return code_contents2;
	}
	public void setCode_contents2(String code_contents2) {
		this.code_contents2 = code_contents2;
	}
	public int getBookHit() {
		return bookHit;
	}
	public void setBookHit(int bookHit) {
		this.bookHit = bookHit;
	}
	public int[] getChackBox() {
		return chackBox;
	}
	public void setChackBox(int[] chackBox) {
		this.chackBox = chackBox;
	}
	public Date getBookDate() {
		return bookDate;
	}
	public void setBookDate(Date bookDate) {
		this.bookDate = bookDate;
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
