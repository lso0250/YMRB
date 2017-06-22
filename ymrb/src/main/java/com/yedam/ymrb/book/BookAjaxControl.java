package com.yedam.ymrb.book;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.yedam.ymrb.buylist.BuyService;
import com.yedam.ymrb.genre.Genre2VO;
import com.yedam.ymrb.genre.GenreService;
@Controller

public class BookAjaxControl {
	
	@Autowired BuyService buyService;
	@Autowired GenreService genreService;
	@Autowired
	private BookService bookService;
	
	@RequestMapping("/genreInsert.do")   //get 
	public @ResponseBody Genre2VO genreInsert( Genre2VO vo2) 
	{
		
		genreService.genreInsert(vo2);
		return vo2;
	}
	@RequestMapping("/updateGenre.do")   //get 
	public @ResponseBody Genre2VO updateGenre( Genre2VO vo2) 
	{
		
		genreService.updateGenre(vo2);
		return vo2;
	}
	
	
	@RequestMapping("/deleteGenre.do")   //get 
	public @ResponseBody Genre2VO deleteGenre( Genre2VO vo2) 
	{
		
		genreService.deleteGenre(vo2);
		return vo2;
	}
	@RequestMapping("/updateBook1.do")   //get 
	public @ResponseBody String updateBook1( BookVO vo) throws IllegalStateException, IOException 
	{
		
		BookVO bookvo = bookService.bookView(vo);
		
		bookvo.setBookNum(vo.getBookNum());
		
		String path = "D:/eGovFrameDev-3.5.1-64bit/workspace/ymrb3/src/main/webapp/upload/";
		String path2 = "D:/eGovFrameDev-3.5.1-64bit/workspace/ymrb3/src/main/webapp/image/";
		System.out.println("아아아"+vo.getUploadFile());
		MultipartFile file = vo.getUploadFile();
		System.out.println(vo.getUploadFile());
		if(file != null && file.getSize()>0){
			try{
				//이전 파일 삭제
				File delFile = new File(path,bookvo.getBookAttactment());
				delFile.delete();			
					
			}catch(Exception e){
				e.printStackTrace();
			}
			
			//파일 저장
			File saveFile = new File(path,file.getOriginalFilename());
			file.transferTo(saveFile);  //서버에 파일 저장
			vo.setBookAttactment(file.getOriginalFilename());
			System.out.println("나나나나나나"+vo.getBookAttactment());
		}
		
		file = vo.getImageFile();
		if(file != null && file.getSize()>0){
			//이전 파일 삭제
			try{
				File delFile2 = new File(path2,bookvo.getBookImage());
				delFile2.delete();	
			}catch(Exception e){
				e.printStackTrace();
			}
			
			//파일 저장
			File saveFile = new File(path2,file.getOriginalFilename());
			file.transferTo(saveFile);  //서버에 파일 저장
			vo.setBookImage(file.getOriginalFilename());
		}
		
		bookService.updateBook1(vo);
		return "";
	}
	@RequestMapping("/seriseInsert.do")   //get 
	public @ResponseBody Map<String, Object> insertBook( BookVO vo2) throws IllegalStateException, IOException 
	{
		
		BookVO bookvo2 = bookService.bookView(vo2);
		
		
		
		bookvo2.setParentNum(vo2.getBookNum());
		bookvo2.setBookPublishDate(vo2.getBookPublishDate());
		bookvo2.setBookTitle(vo2.getBookTitle());
		
		MultipartFile file2 = vo2.getUploadFile();
		System.out.println("북"+bookvo2);
		
		System.out.println("나나나"+vo2.getUploadFile()+vo2.getBookTitle()+vo2.getBookPublishDate()+vo2.getBookNum());
		File insertfile = new File("D:/eGovFrameDev-3.5.1-64bit/workspace/ymrb3/src/main/webapp/upload/",file2.getOriginalFilename());
		file2.transferTo(insertfile);  //서버에 파일 저장
		bookvo2.setBookAttactment(file2.getOriginalFilename());	
		bookService.insertBook(bookvo2);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("bookNum", bookvo2.getBookNum());
		
		return map;
	}
/*	시리즈 수정*/
	@RequestMapping("/seriseUpdate.do")   //get 
	public @ResponseBody String updateBook2( BookVO vo2) throws IllegalStateException, IOException 
	{
		System.out.println("나나나"+vo2+vo2.getUploadFile());
		String path = "D:/eGovFrameDev-3.5.1-64bit/workspace/ymrb3/src/main/webapp/upload/";
		BookVO bookvo2 = bookService.bookView(vo2);
		
		
		bookvo2.setBookTitle(vo2.getBookTitle());
		bookvo2.setBookPublishDate(vo2.getBookPublishDate());
		
		
	
		MultipartFile file2 = vo2.getUploadFile();
		
		if(file2 != null && file2.getSize()>0){
			//이전 파일 삭제
			try{
				File delFile2 = new File(path,bookvo2.getBookAttactment());
				delFile2.delete();	
			}catch(Exception e){
				e.printStackTrace();
			}
			
			File updatefile = new File(path,file2.getOriginalFilename());
			file2.transferTo(updatefile);  //서버에 파일 저장
			bookvo2.setBookAttactment(file2.getOriginalFilename());
		}
			
		
		
		bookService.updateBook2(bookvo2);
		return "" ;

		
	}
	//자식 책 삭제
	@RequestMapping("/deleteBook.do")   //get 
	public @ResponseBody BookVO deleteBook( BookVO vo2) 
	{
		
		bookService.deleteBook(vo2);
		return vo2;
	}
}


