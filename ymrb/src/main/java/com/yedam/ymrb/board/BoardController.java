package com.yedam.ymrb.board;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
//@SessionAttributes("board")
public class BoardController {

	@Resource BoardService boardService;
	
    // 검색 조건 목록 설정
    @ModelAttribute("conditionMap")
    public Map<String, String> searchConditionMap() {
        Map<String, String> conditionMap = new HashMap<String, String>();
        conditionMap.put("제목", "board_title");
        conditionMap.put("내용", "board_contents");
        return conditionMap;
    }	
	
	//단건조회    
	@RequestMapping("/getBoard.do")
	public String getBoard(BoardVO vo, Model model){
		System.out.println(vo);

		model.addAttribute("board", boardService.getBoard(vo));
		return "board/getBoard";
	}
	 
	//다건조회  boardSelectAll
	@RequestMapping("/getBoardList.do")
	public String getBoardList(BoardVO vo, Model model) throws Exception {
		model.addAttribute("boardList", boardService.getBoardList(vo));
		return "board/getBoardList";
	}

	//등록      boardInsert
	@RequestMapping(value="/boardInsert2.do") 
	public String insertBoard(BoardVO vo) {  //command 객체
		System.out.println(vo);
		boardService.insertBoard(vo);
		return "redirect:/getBoardList.do";
	}	
	@RequestMapping(value="/board/boardTest.do") 
	public String boardTest(BoardVO vo) {  //command 객체
		System.out.println(vo);
		boardService.insertBoard(vo);
		return "redirect:/getBoardList.do";
	}
	//등록폼
	@RequestMapping("/boardInsert.do")   //get 
	public String boardInsertForm() {
		return "board/boardInsert";
	}
	
	//수정폼
	@RequestMapping("/boardUpdateForm.do")   //get 
	public String boardUpdateForm(@ModelAttribute("board") BoardVO vo, Model model) {
		System.out.println(vo);
		model.addAttribute("board", boardService.getBoard(vo));
		return "board/boardUpdate";
	}	
	
	//수정      boardUpdate
	@RequestMapping(value="/boardUpdate.do") 
	public String updateBoard(@ModelAttribute("board") BoardVO vo ) {  //command 객체
		boardService.updateBoard(vo);
		//status.setComplete();// 세션에 저장된 vo를 삭제
		return "redirect:/getBoardList.do";
	}

	//삭제      boardDelete
	@RequestMapping(value="/boardDelete.do") 
	public String deleteBoard(@ModelAttribute("board") BoardVO vo ) {  //command 객체
		boardService.deleteBoard(vo);
		//status.setComplete();// 세션에 저장된 vo를 삭제
		return "redirect:/getBoardList.do";
	}
	
	@RequestMapping("/ajaxgetBoardList.do")
	public @ResponseBody Map<String, List<Map<String, Object>>> ajaxGetBoardList(BoardVO vo) {
		List<Map<String, Object>> list = boardService.getBoardList(vo);
		HashMap map = new HashMap();
		map.put("data", list);
		return map;
	}

}
