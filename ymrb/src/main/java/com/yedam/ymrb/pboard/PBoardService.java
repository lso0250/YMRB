package com.yedam.ymrb.pboard;

import java.util.List;
import java.util.Map;

public interface PBoardService {

	//글등록
	void insertPBoard(PBoardVO vo);
	
	//글수정
	void updatePBoard(PBoardVO vo);
	
	//글삭제
	void deletePBoard(PBoardVO vo);
	
	//글 상세조회
	PBoardVO getPBoard(PBoardVO vo);
	
	//글목록조회
	List<Map<String, Object>> getPBoardList(PBoardVO vo);
	
}
