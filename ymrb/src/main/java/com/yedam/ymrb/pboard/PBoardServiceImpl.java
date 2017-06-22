package com.yedam.ymrb.pboard;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;



@Service("pboardService")
public class PBoardServiceImpl implements PBoardService {
	
	@Autowired
	
	private PBoardDAOMybatis pboardDAO;

	public void insertPBoard(PBoardVO vo) {
		pboardDAO.insertPBoard(vo);
	
	}
	public void insertUpload(UploadVO vo) {
		pboardDAO.insertUpload(vo);
	
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
	public List<UploadVO> getUploadFile(UploadVO vo) {
	      return pboardDAO.getUploadFile(vo);
	    }
}
