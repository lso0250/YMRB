package com.yedam.ymrb.pboard;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("pboardService")
public class PBoardServiceImpl implements PBoardService {
	
	@Autowired
	
	private PBoardDAOMybatis pboardDAO;

	public void insertPBoard(PBoardVO vo) {
		pboardDAO.insertPBoard(vo);
		System.out.println("등록 게시글번호 : " + vo.getPboard_num());
		
	}

	public void updatePBoard(PBoardVO vo) {
		pboardDAO.updatePBoard(vo);
		
	}

	public void deletePBoard(PBoardVO vo) {
		pboardDAO.deletePBoard(vo);
		
	}

	public PBoardVO getPBoard(PBoardVO vo) {
		return pboardDAO.getPBoard(vo);
	}
	
	public List<Map<String, Object>> getPBoardList(PBoardVO vo) {
		return pboardDAO.getPBoardList(vo);
	}

}
