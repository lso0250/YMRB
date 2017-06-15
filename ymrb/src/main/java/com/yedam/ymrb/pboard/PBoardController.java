package com.yedam.ymrb.pboard;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;



@Controller
public class PBoardController {

	@Resource PBoardService pboardService;
	
	//단건조회
	@RequestMapping("/getPBoard.do")
	public String getPBoard(PBoardVO vo, Model model){
		System.out.println(vo);
		
		model.addAttribute("pboard",pboardService.getPBoard(vo));
		return "pboard/getPBoard";
	}
	
	//리스트
	@RequestMapping("/getPBoardList.do")
	public String getPBoardList(PBoardVO vo, Model model) throws Exception {
		model.addAttribute("pboardList", pboardService.getPBoardList(vo));
		return "pboard/getPBoardList";
	}
	
/*	//등록
	@RequestMapping(value="/pboardInsert.do")
	public String insertPBoard(PBoardVO vo) {
		System.out.println(vo);
		pboardService.insertPBoard(vo);
		return "redirect:/getPBoardList.do";
	}
	*/
	//등록
	@RequestMapping(value="/pboard/pboardTest.do", method=RequestMethod.POST) 
	public String boardTest(PBoardVO vo) 
			throws IllegalStateException, IOException {  //command 객체
		MultipartFile file = vo.getUploadFile();
		File saveFile = new File("D:/egov/workspace/ymrb/src/main/webapp/pboardimg/" + file.getOriginalFilename());
		file.transferTo(saveFile);
		vo.setAttachFilename(file.getOriginalFilename());
		pboardService.insertPBoard(vo);
		return "redirect:/getPBoardList.do";
	}
	
	//등록폼
	@RequestMapping("/pboardInsert.do")
	public String pboardInsertForm() {
		return "pboard/pboardInsert";
	}
	
	//수정폼
	@RequestMapping("/pboardUpdateForm.do")
	public String pboardUpdateForm(@ModelAttribute("pboard") PBoardVO vo, Model model) {
		System.out.println(vo);
		model.addAttribute("pboard", pboardService.getPBoard(vo));
		return "pboard/pboardUpdate";
	}
	//수정
	@RequestMapping(value="/pboardUpdate.do")
	public String updatePBoard(@ModelAttribute("pboard") PBoardVO vo, Model model) {
		pboardService.updatePBoard(vo);
		return "redirect:/getPBoardList.do";
	}
	
	//삭제
	@RequestMapping(value="/pboardDelete.do")
	public String deletePBoard(@ModelAttribute("pboard") PBoardVO vo, Model model) {
		pboardService.deletePBoard(vo);
		return "redirect:/getPBoardList.do";
	}
	
	@RequestMapping("/ajaxgetPBoardList.do")
	public @ResponseBody Map<String, List<Map<String, Object>>> ajaxGetPBoardList(PBoardVO vo) {
		List<Map<String, Object>> list = pboardService.getPBoardList(vo);
		HashMap map = new HashMap();
		map.put("data", list);
		return map;
	}

/**
 * 첨부파일로 등록된 파일에 대하여 다운로드를 제공한다.
 *
 * @param commandMap
 * @param response
 * @throws Exception
 */
/*@RequestMapping(value = "/FileDown.do")
public void cvplFileDownload(@RequestParam Map<String, Object> commandMap, HttpServletRequest request, HttpServletResponse response) throws Exception {

	String num = (String) commandMap.get("num");


	PBoardVO pboardVO = new PBoardVO();
	pboardVO.setPboard_num(Integer.parseInt(num));
	PBoardVO result = pboardService.getPBoard(pboardVO);

	File uFile = new File("D:/egov/workspace/ymrb/src/main/webapp/pboardimg/", result.getAttachFilename());
	long fSize = uFile.length();

	if (fSize > 0) {
		String mimetype = "application/x-msdownload";

		response.setContentType(mimetype);
		setDisposition(result.getAttachFilename(), request, response);

		BufferedInputStream in = null;
		BufferedOutputStream out = null;

		try {
			in = new BufferedInputStream(new FileInputStream(uFile));
			out = new BufferedOutputStream(response.getOutputStream());

			FileCopyUtils.copy(in, out);
			out.flush();
		} catch (IOException ex) {
			ex.printStackTrace();
		} finally {
			in.close();
			out.close();
		}

	} else {
		response.setContentType("application/x-msdownload");

		PrintWriter printwriter = response.getWriter();
		
		printwriter.println("<html>");
		printwriter.println("<br><br><br><h2>Could not get file name:<br>" + result.getAttachFilename() + "</h2>");
		printwriter.println("<br><br><br><center><h3><a href='javascript: history.go(-1)'>Back</a></h3></center>");
		printwriter.println("<br><br><br>&copy; webAccess");
		printwriter.println("</html>");
		
		printwriter.flush();
		printwriter.close();
	}
}
*/
/**
 * Disposition 지정하기.
 *
 * @param filename
 * @param request
 * @param response
 * @throws Exception
 */
private void setDisposition(String filename, HttpServletRequest request, HttpServletResponse response) throws Exception {
	String browser = getBrowser(request);

	String dispositionPrefix = "attachment; filename=";
	String encodedFilename = null;

	if (browser.equals("MSIE")) {
		encodedFilename = URLEncoder.encode(filename, "UTF-8").replaceAll("\\+", "%20");
	} else if (browser.equals("Trident")) { // IE11 문자열 깨짐 방지
		encodedFilename = URLEncoder.encode(filename, "UTF-8").replaceAll("\\+", "%20");
	} else if (browser.equals("Firefox")) {
		encodedFilename = "\"" + new String(filename.getBytes("UTF-8"), "8859_1") + "\"";
	} else if (browser.equals("Opera")) {
		encodedFilename = "\"" + new String(filename.getBytes("UTF-8"), "8859_1") + "\"";
	} else if (browser.equals("Chrome")) {
		StringBuffer sb = new StringBuffer();
		for (int i = 0; i < filename.length(); i++) {
			char c = filename.charAt(i);
			if (c > '~') {
				sb.append(URLEncoder.encode("" + c, "UTF-8"));
			} else {
				sb.append(c);
			}
		}
		encodedFilename = sb.toString();
	} else {
		throw new IOException("Not supported browser");
	}

	response.setHeader("Content-Disposition", dispositionPrefix + encodedFilename);

	if ("Opera".equals(browser)) {
		response.setContentType("application/octet-stream;charset=UTF-8");
	}
}

/**
 * 브라우저 구분 얻기.
 *
 * @param request
 * @return
 */
private String getBrowser(HttpServletRequest request) {
	String header = request.getHeader("User-Agent");
	if (header.indexOf("MSIE") > -1) {
		return "MSIE";
	} else if (header.indexOf("Trident") > -1) { // IE11 문자열 깨짐 방지
		return "Trident";
	} else if (header.indexOf("Chrome") > -1) {
		return "Chrome";
	} else if (header.indexOf("Opera") > -1) {
		return "Opera";
	}
	return "Firefox";
	}
}
