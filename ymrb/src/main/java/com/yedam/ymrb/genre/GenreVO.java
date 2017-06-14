package com.yedam.ymrb.genre;

public class GenreVO {
	private String codelist ;
	private String codecontents;
	private String codenum;
	public String getCodelist() {
		return codelist;
	}
	public void setCodelist(String codelist) {
		this.codelist = codelist;
	}
	public String getCodecontents() {
		return codecontents;
	}
	public void setCodecontents(String codecontents) {
		this.codecontents = codecontents;
	}
	public String getCodenum() {
		return codenum;
	}
	public void setCodenum(String codenum) {
		this.codenum = codenum;
	}
	@Override
	public String toString() {
		return "GenreVO [codelist=" + codelist + ", codecontents="
				+ codecontents + ", codenum=" + codenum + "]";
	} 
	
}
