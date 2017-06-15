package com.yedam.ymrb.book;

import java.io.File;
import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.yedam.ymrb.buylist.BuyService;
import com.yedam.ymrb.buylist.BuyVO;
import com.yedam.ymrb.genre.Genre2VO;
import com.yedam.ymrb.genre.GenreService;
import com.yedam.ymrb.genre.GenreVO;



@Controller
public class BookControll {
	@Autowired BuyService buyService;
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
		File saveFile = new File("D:/eGovFrameDev-3.5.1-64bit/workspace/ymrb3/src/main/webapp/upload/",file.getOriginalFilename());
		file.transferTo(saveFile);  //서버에 파일 저장
		vo.setBookAttactment(file.getOriginalFilename());
		file = vo.getImageFile();
		saveFile = new File("D:/eGovFrameDev-3.5.1-64bit/workspace/ymrb3/src/main/webapp/image/",file.getOriginalFilename());
		file.transferTo(saveFile);  //서버에 파일 저장
		vo.setBookImage(file.getOriginalFilename());	
		 bookService.insertBook(vo); //부모책 추가
		 vo.setParentNum(vo.getBookNum());
		
		 //북넘버 받아서 장르 분야 추가 
		String[] list = vo.getCodecontent();
		String[] list2 = vo.getCodecontent2();
		
		for(int i=0; i<list.length; i++){	
			vo2.setBookNum(vo.getBookNum());
			vo2.setCodecontents(list[i]);
			vo2.setCodecontents2(list2[i]);  
			genreService.genreInsert(vo2);
		}
	
		String[] serise1 = vo.getTitleserise();
		String[] serise2 = vo.getDateserise();
		MultipartFile[] serise3 = vo.getFileserise();
		if(serise1.length >= 1){
			vo.setParentNum(vo.getBookNum());	
		for(int i=0; i<serise1.length; i++){	
			file = serise3[i];
			saveFile = new File("D:/eGovFrameDev-3.5.1-64bit/workspace/ymrb3/src/main/webapp/upload/",file.getOriginalFilename());
			file.transferTo(saveFile);  //서버에 파일 저장
			vo.setBookAttactment(file.getOriginalFilename());		
			vo.setBookTitle(serise1[i]);
			vo.setBookPublishDate(serise2[i]);
			bookService.insertBook(vo);
		}
	}
		 //자식 책 추가
		return "redirect:/menu.do";
	}	
	//수정 폼
	@RequestMapping("/bookUpdateForm.do")   //get 
	public String  bookUpdateForm(BookVO vo,
			Model model,GenreVO genrevo,Genre2VO genre2vo) {
		
		genrevo.setCodelist("분야");
		model.addAttribute("genre1", genreService.getGenreList(genrevo));
		model.addAttribute("genre2", genreService.getGenreList2(genre2vo));
		model.addAttribute("book", bookService.bookView(vo));
		model.addAttribute("serise", bookService.getSeriseList(vo));
		
		return "book/bookUpdate";
	}	
	//수정
	@RequestMapping("/bookUpdate.do")   //get 
	public String  bookUpdate(@ModelAttribute("book") BookVO vo,
							Genre2VO vo2) throws IllegalStateException, IOException 
	{
		//부모책 수정
		MultipartFile file1 = vo.getUploadFile();
		File saveFile = new File("D:/eGovFrameDev-3.5.1-64bit/workspace/ymrb3/src/main/webapp/upload/",file1.getOriginalFilename());
		vo.setBookAttactment(file1.getOriginalFilename());
		file1 = vo.getImageFile();
		saveFile = new File("D:/eGovFrameDev-3.5.1-64bit/workspace/ymrb3/src/main/webapp/image/",file1.getOriginalFilename());
		vo.setBookImage(file1.getOriginalFilename());
		bookService.updateBook1(vo);
		
		//장르 분야 수정
		vo.setParentNum(vo.getBookNum());
		
		//북넘버 받아서 장르 분야 추가 	 
		String[] list = vo.getCodecontent();
		String[] list2 = vo.getCodecontent2();
		for(int i=0; i<list.length; i++){		
			vo2.setBookNum(vo.getBookNum());
			vo2.setCodecontents(list[i]);
			vo2.setCodecontents2(list2[i]);  
			genreService.updateGenre(vo2);
		}
		
		//시리즈 수정
		String[] serise1 = vo.getTitleserise();
		String[] serise2 = vo.getDateserise();
		MultipartFile[] serise3 = vo.getFileserise();
		if(serise1.length >= 1){
			vo.setParentNum(vo.getBookNum());	
		for(int i=0; i<serise1.length; i++){	
			file1 = serise3[i];
			saveFile = new File("D:/eGovFrameDev-3.5.1-64bit/workspace/ymrb3/src/main/webapp/upload/",file1.getOriginalFilename());
			vo.setBookAttactment(file1.getOriginalFilename());
			vo.setBookTitle(serise1[i]);
			vo.setBookPublishDate(serise2[i]);		
			bookService.updateBook2(vo);
		}
	}	
		return "book/bookView";
	}	
	
	//도서상세보기 조회
	@RequestMapping("/bookview.do")
	public String bookView(Model model, BookVO vo){
		bookService.updateBook(vo);
		model.addAttribute("book", bookService.bookView(vo));
		model.addAttribute("serise", bookService.getSeriseList(vo));	
		return "/popup/book/bookView";
	}
	// 대여 클릭시
	 @RequestMapping(value="/rentBox.do" , method=RequestMethod.POST) 
	  public String rentBox (BookVO vo, BuyVO buyvo){
	   int[] booknu = vo.getChackBox();
	   if(booknu != null){
			for(int i=0; i<booknu.length; i++){		
				 	buyvo.setBookNum(booknu[i]);
				 	buyService.insertBuy(buyvo);
			}		
	   }else{
		   buyvo.setBookNum(vo.getBookNum());
		   	buyService.insertBuy(buyvo);
	   }
	    return "redirect:/menu.do";
	 }
	// 구입 클릭시
		 @RequestMapping(value="/buyBox.do" , method=RequestMethod.POST) 
		  public String buyBox (BookVO vo, BuyVO buyvo){
		   int[] booknu = vo.getChackBox();
		   if(booknu != null){
				for(int i=0; i<booknu.length; i++){
					 	buyvo.setBookNum(booknu[i]);
					 	buyService.insertBuy1(buyvo);;
				}		
		   }else{
			   buyvo.setBookNum(vo.getBookNum());
			buyService.insertBuy1(buyvo);
		   } 
		    return "redirect:/menu.do";
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
			@RequestMapping("/menulist.do")
			public String  getBookList2(BookVO vo, Model model) throws Exception {
				model.addAttribute("getBookList2", bookService.getBookList2(vo));
				model.addAttribute("getBookList3", bookService.getBookList3(vo));
				model.addAttribute("getBookList4", bookService.getBookList4(vo));
				model.addAttribute("book", bookService.codetitle(vo));
				return "book/storylist";
			}
		//경영경제
			@RequestMapping("/menulist2.do")
			public String  getBookList3(BookVO vo, Model model) throws Exception {
				model.addAttribute("getBookList2", bookService.getBookList2(vo));
				model.addAttribute("getBookList3", bookService.getBookList3(vo));
				model.addAttribute("getBookList4", bookService.getBookList4(vo));
				model.addAttribute("book", bookService.codetitle(vo));
				return "book/businesslist";
			}
		//어린이청소년
			@RequestMapping("/menulist3.do")
			public String  getBookList4(BookVO vo, Model model) throws Exception {
				model.addAttribute("getBookList2", bookService.getBookList2(vo));
				model.addAttribute("getBookList3", bookService.getBookList3(vo));
				model.addAttribute("getBookList4", bookService.getBookList4(vo));
				model.addAttribute("book", bookService.codetitle(vo));
				return "book/childlist";
			}
		//잡지
			@RequestMapping("/menulist4.do")
			public String  getBookList5(BookVO vo, Model model) throws Exception {
				model.addAttribute("getBookList2", bookService.getBookList2(vo));
				model.addAttribute("getBookList3", bookService.getBookList3(vo));
				model.addAttribute("getBookList4", bookService.getBookList4(vo));
				model.addAttribute("book", bookService.codetitle(vo));
				return "book/magazinelist";
			}
		//인문사회역사
			@RequestMapping("/menulist5.do")
			public String  getBookList6(BookVO vo, Model model) throws Exception {
				model.addAttribute("getBookList2", bookService.getBookList2(vo));
				model.addAttribute("getBookList3", bookService.getBookList3(vo));
				model.addAttribute("getBookList4", bookService.getBookList4(vo));
				model.addAttribute("book", bookService.codetitle(vo));
				return "book/historylist";
			}
		//자기계발
			@RequestMapping("/menulist6.do")
			public String  getBookList7(BookVO vo, Model model) throws Exception {
				model.addAttribute("getBookList2", bookService.getBookList2(vo));
				model.addAttribute("getBookList3", bookService.getBookList3(vo));
				model.addAttribute("getBookList4", bookService.getBookList4(vo));
				model.addAttribute("book", bookService.codetitle(vo));
				return "book/selfImprovementlist";
			}
		//여행
			@RequestMapping("/menulist7.do")
			public String  getBookList8(BookVO vo, Model model) throws Exception {
				model.addAttribute("getBookList2", bookService.getBookList2(vo));
				model.addAttribute("getBookList3", bookService.getBookList3(vo));
				model.addAttribute("getBookList4", bookService.getBookList4(vo));
				model.addAttribute("book", bookService.codetitle(vo));
				return "book/travellist";
			}
		//분야,장르별 목록 조회
			@RequestMapping("/fulllist.do")
			public String  getFullList(BookVO vo, Model model) throws Exception {
				model.addAttribute("getBookList", bookService.getBookList1(vo));
				model.addAttribute("book", bookService.codetitle(vo));
				return "book/fulllist";
			}
		//무료책 목록 조회
			@RequestMapping("/freebook.do")
			public String  getFreeBook(BookVO vo, Model model) throws Exception {			
				model.addAttribute("getBookList", bookService.getBookList4(vo));
				model.addAttribute("book", bookService.codetitle(vo));
				return "book/freebook";
			}

	}


