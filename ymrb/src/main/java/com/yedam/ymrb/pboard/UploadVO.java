package com.yedam.ymrb.pboard;

import org.springframework.web.multipart.MultipartFile;

public class UploadVO {

	private int file_num;
	private String file_name;
	private int pboard_num;
	private MultipartFile[] uploadFile;
	private String attachFilename;
	
	
	public int getFile_num() {
		return file_num;
	}
	public void setFile_num(int file_num) {
		this.file_num = file_num;
	}
	
	public String getFile_name() {
		return file_name;
	}
	public void setFile_name(String file_name) {
		this.file_name = file_name;
	}
	
	public int getPboard_num() {
		return pboard_num;
	}
	public void setPboard_num(int pboard_num) {
		this.pboard_num = pboard_num;
	}
	public MultipartFile[] getUploadFile() {
		return uploadFile;
	}
	public void setUploadFile(MultipartFile[] uploadFile) {
		this.uploadFile = uploadFile;
	}
	public String getAttachFilename() {
		return attachFilename;
	}
	public void setAttachFilename(String attachFilename) {
		this.attachFilename = attachFilename;
	}
	
	
}
