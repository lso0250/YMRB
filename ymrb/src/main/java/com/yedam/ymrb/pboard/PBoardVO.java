package com.yedam.ymrb.pboard;

import java.sql.Date;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlTransient;

import org.springframework.web.multipart.MultipartFile;


@XmlAccessorType(XmlAccessType.FIELD)
public class PBoardVO {
	private int pboard_num;
	private String pboard_title;
	private String pboard_contents;
	private Date pboard_date;
	private int pboard_hits;
	private String mem_nic;
	private int mem_num;	
	@XmlTransient private MultipartFile[] uploadFile;
	@XmlTransient private String attachFilename;
	
	public int getPboard_num() {
		return pboard_num;
	}
	public void setPboard_num(int pboard_num) {
		this.pboard_num = pboard_num;
	}
	public String getPboard_title() {
		return pboard_title;
	}
	public void setPboard_title(String pboard_title) {
		this.pboard_title = pboard_title;
	}
	public String getPboard_contents() {
		return pboard_contents;
	}
	public void setPboard_contents(String pboard_contents) {
		this.pboard_contents = pboard_contents;
	}
	public Date getPboard_date() {
		return pboard_date;
	}
	public void setPboard_date(Date pboard_date) {
		this.pboard_date = pboard_date;
	}
	public int getPboard_hits() {
		return pboard_hits;
	}
	public void setPboard_hits(int pboard_hits) {
		this.pboard_hits = pboard_hits;
	}
	public int getMem_num() {
		return mem_num;
	}
	public void setMem_num(int mem_num) {
		this.mem_num = mem_num;
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
	public String getMem_nic() {
		return mem_nic;
	}
	public void setMem_nic(String mem_nic) {
		this.mem_nic = mem_nic;
	}
	@Override
	public String toString() {
		return "PBoardVO [pboard_num=" + pboard_num + ", pboard_title="
				+ pboard_title + ", pboard_contents=" + pboard_contents
				+ ", pboard_date=" + pboard_date + ", pboard_hits="
				+ pboard_hits + ", mem_nic=" + mem_nic + ", mem_num=" + mem_num
				+ "]";
	}
	
}
