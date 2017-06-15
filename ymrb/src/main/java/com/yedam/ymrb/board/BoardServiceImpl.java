package com.yedam.ymrb.board;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("boardService")
public class BoardServiceImpl implements BoardService {
	
	@Autowired
    //private BoardDAOSpring boardDAO;   
	private BoardDAOMybatis boardDAO;
    
    public void insertBoard(BoardVO vo) {
        boardDAO.insertBoard(vo);
        System.out.println("등록 게시글번호: " + vo.getBoard_num());
        //트랜잭션 테스트
        //boardDAO.insertBoard(vo);
    }

    public void updateBoard(BoardVO vo) {
        boardDAO.updateBoard(vo);
    }

    public void deleteBoard(BoardVO vo) {
        boardDAO.deleteBoard(vo);
    }

    public BoardVO getBoard(BoardVO vo) {  	
        return boardDAO.getBoard(vo);
    }

    public List<Map<String, Object>> getBoardList(BoardVO vo) {
        return boardDAO.getBoardList(vo);
    }
    
}
