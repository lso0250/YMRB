package com.yedam.ymrb.book;

import java.io.File;
import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.yedam.ymrb.genre.Genre2VO;
import com.yedam.ymrb.genre.GenreService;
import com.yedam.ymrb.genre.GenreVO;



@Controller
public class BookControll {
	
	@Autowired GenreService genreService;
	
	@Autowired
	private BookService bookService;
	
	//등록폼
	@RequestMapping("/bookInsert.do")
	public String bookinsert(Model model){
		
		GenreVO genrevo = new GenreVO();
		genrevo.setCodelist("분야");
		model.addAttribute("genre1", genreService.getGenreList(genrevo));

		return "/book/bookinsert";
	}
	//등록
	@RequestMapping(value="/bookInsert.do" , method=RequestMethod.POST) 
	public String  insertBook(BookVO vo, Genre2VO vo2)   //command 객체
		throws IllegalStateException, IOException {  
		MultipartFile file = vo.getUploadFile();
		File saveFile = new File("D:/eGovFrameDev-3.5.1-64bit/workspace/ymrb/src/main/webapp/upload/",file.getOriginalFilename());
		file.transferTo(saveFile);  //서버에 파일 저장
		vo.setBookAttactment(file.getOriginalFilename());
		
		file = vo.getImageFile();
		saveFile = new File("D:/eGovFrameDev-3.5.1-64bit/workspace/ymrb/src/main/webapp/image/",file.getOriginalFilename());
		file.transferTo(saveFile);  //서버에 파일 저장
		vo.setBookImage(file.getOriginalFilename());
		String a = vo.getBookAgeLimit() ;
		if(a =="12세"){
			a="12";
		}else if(a == "전체 이용물"){
				a="0";
			
		}else if(a == "15세"){
			a="15";
			
		}else if(a == "19세"){
		a="19";
		
}
		
		
		 bookService.insertBook(vo); //부모책 추가
		
		 
		//북넘버 받아서 장르 분야 추가 
		
		 
		String[] list = vo.getCodecontent();
		String[] list2 = vo.getCodecontent2();
		
		for(int i=0; i<list.length; i++){
			
			vo2.setBooknum(vo.getBookNum());
			vo2.setCodecontents(list[i]);
			vo2.setCodecontents2(list2[i]);
			genreService.genreInsert(vo2);
		
		}
	
	
		
		
		String[] serise1 = vo.getTitleserise();
		String[] serise2 = vo.getDateserise();
		MultipartFile[] serise3 = vo.getFileserise();
		if(serise1.length >= 1){
			
		BookVO childvo = new BookVO();	
			
		for(int i=0; i<serise1.length; i++){
			
			file = serise3[i];
			saveFile = new File("D:/eGovFrameDev-3.5.1-64bit/workspace/ymrb/src/main/webapp/upload/",file.getOriginalFilename());
			file.transferTo(saveFile);  //서버에 파일 저장
			childvo.setBookAttactment(file.getOriginalFilename());
			
			childvo.setParentNum(vo.getBookNum());
			childvo.setBookTitle(serise1[i]);
			childvo.setBookPublishDate(serise2[i]);
			
			
			bookService.insertBook(vo);
		}
	}
		 //자식 책 추가
		return "redirect:/bookInsert.do";
	}	
	
	//단건 조회
	@RequestMapping("/bookview.do")
	public String bookView(Model model, BookVO vo){
		
		model.addAttribute("book", bookService.bookView(vo));
		

		return "/book/bookView";
	}
		//전체분류 화면
			@RequestMapping("/menu.do")
			public String  getBookList(BookVO vo, Model model) throws Exception {
				model.addAttribute("getBookList2", bookService.getBookList2(vo));
				model.addAttribute("getBookList3", bookService.getBookList3(vo));
				model.addAttribute("getBookList4", bookService.getBookList4(vo));
				model.addAttribute("book", bookService.codetitle(vo));
				System.out.println(model);
				return "menu/menu";
			}
		//소설
			@RequestMapping("/reader/menulist.do")
			public String  getBookList2(BookVO vo, Model model) throws Exception {
				model.addAttribute("getBookList2", bookService.getBookList2(vo));
				model.addAttribute("getBookList3", bookService.getBookList3(vo));
				model.addAttribute("getBookList4", bookService.getBookList4(vo));
				model.addAttribute("book", bookService.codetitle(vo));
				return "book/storylist";
			}
		//경영경제
			@RequestMapping("/reader/menulist2.do")
			public String  getBookList3(BookVO vo, Model model) throws Exception {
				model.addAttribute("getBookList2", bookService.getBookList2(vo));
				model.addAttribute("getBookList3", bookService.getBookList3(vo));
				model.addAttribute("getBookList4", bookService.getBookList4(vo));
				model.addAttribute("book", bookService.codetitle(vo));
				return "book/businesslist";
			}
		//어린이청소년
			@RequestMapping("/reader/menulist3.do")
			public String  getBookList4(BookVO vo, Model model) throws Exception {
				model.addAttribute("getBookList2", bookService.getBookList2(vo));
				model.addAttribute("getBookList3", bookService.getBookList3(vo));
				model.addAttribute("getBookList4", bookService.getBookList4(vo));
				model.addAttribute("book", bookService.codetitle(vo));
				return "book/childlist";
			}
		//잡지
			@RequestMapping("/reader/menulist4.do")
			public String  getBookList5(BookVO vo, Model model) throws Exception {
				model.addAttribute("getBookList2", bookService.getBookList2(vo));
				model.addAttribute("getBookList3", bookService.getBookList3(vo));
				model.addAttribute("getBookList4", bookService.getBookList4(vo));
				model.addAttribute("book", bookService.codetitle(vo));
				return "book/magazinelist";
			}
		//인문사회역사
			@RequestMapping("/reader/menulist5.do")
			public String  getBookList6(BookVO vo, Model model) throws Exception {
				model.addAttribute("getBookList2", bookService.getBookList2(vo));
				model.addAttribute("getBookList3", bookService.getBookList3(vo));
				model.addAttribute("getBookList4", bookService.getBookList4(vo));
				model.addAttribute("book", bookService.codetitle(vo));
				return "book/historylist";
			}
		//자기계발
			@RequestMapping("/reader/menulist6.do")
			public String  getBookList7(BookVO vo, Model model) throws Exception {
				model.addAttribute("getBookList2", bookService.getBookList2(vo));
				model.addAttribute("getBookList3", bookService.getBookList3(vo));
				model.addAttribute("getBookList4", bookService.getBookList4(vo));
				model.addAttribute("book", bookService.codetitle(vo));
				return "book/selfImprovementlist";
			}
		//여행
			@RequestMapping("/reader/menulist7.do")
			public String  getBookList8(BookVO vo, Model model) throws Exception {
				model.addAttribute("getBookList2", bookService.getBookList2(vo));
				model.addAttribute("getBookList3", bookService.getBookList3(vo));
				model.addAttribute("getBookList4", bookService.getBookList4(vo));
				model.addAttribute("book", bookService.codetitle(vo));
				return "book/travellist";
			}
		//분야,장르별 목록 조회
			@RequestMapping("/reader/fulllist.do")
			public String  getFullList(BookVO vo, Model model) throws Exception {
				model.addAttribute("getBookList", bookService.getBookList(vo));
				model.addAttribute("book", bookService.codetitle(vo));
				return "book/fulllist";
			}
		//무료책 목록 조회
			@RequestMapping("/reader/freebook.do")
			public String  getFreeBook(BookVO vo, Model model) throws Exception {			
				model.addAttribute("getBookList", bookService.getBookList4(vo));
				model.addAttribute("book", bookService.codetitle(vo));
				return "book/freebook";
			}

	}


