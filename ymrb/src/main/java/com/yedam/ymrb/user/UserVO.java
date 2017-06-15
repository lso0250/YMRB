package com.yedam.ymrb.user;

import java.sql.Date;

public class UserVO {
	private int mem_num;
	private String mem_id;
	private String mem_pw;
	private int mem_point;
	private String mem_like;
	private Date mem_birth;
	private String mem_nic;
	private String mem_phone;
	private String mem_email;
	public int getMem_num() {
		return mem_num;
	}
	public void setMem_num(int mem_num) {
		this.mem_num = mem_num;
	}
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	public String getMem_pw() {
		return mem_pw;
	}
	public void setMem_pw(String mem_pw) {
		this.mem_pw = mem_pw;
	}
	public int getMem_point() {
		return mem_point;
	}
	public void setMem_point(int mem_point) {
		this.mem_point = mem_point;
	}
	public String getMem_like() {
		return mem_like;
	}
	public void setMem_like(String mem_like) {
		this.mem_like = mem_like;
	}
	public Date getMem_birth() {
		return mem_birth;
	}
	public void setMem_birth(Date mem_birth) {
		this.mem_birth = mem_birth;
	}
	public String getMem_nic() {
		return mem_nic;
	}
	public void setMem_nic(String mem_nic) {
		this.mem_nic = mem_nic;
	}
	public String getMem_phone() {
		return mem_phone;
	}
	public void setMem_phone(String mem_phone) {
		this.mem_phone = mem_phone;
	}
	public String getMem_email() {
		return mem_email;
	}
	public void setMem_email(String mem_email) {
		this.mem_email = mem_email;
	}
	@Override
	public String toString() {
		return "UserVO [mem_num=" + mem_num + ", mem_id=" + mem_id
				+ ", mem_pw=" + mem_pw + ", mem_point=" + mem_point + ", mem_like="
				+ mem_like + ", mem_birth=" + mem_birth + ", mem_nic="
				+ mem_nic + ", mem_phone=" + mem_phone + ", mem_email="
				+ mem_email + "]";
	}
}
