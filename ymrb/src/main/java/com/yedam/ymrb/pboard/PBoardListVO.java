package com.yedam.ymrb.pboard;

import java.util.List;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement(name="pboardList")
@XmlAccessorType(XmlAccessType.FIELD)
public class PBoardListVO {
	@XmlElement(name="pboard")
	private List<PBoardVO> pboardList;
	
	public List<PBoardVO> getBoardList(){
		return pboardList;
	}
	
	public void setBoardList(List<PBoardVO> pboardList) {
		this.pboardList = pboardList;
	}
}
