package com.yedam.ymrb.user;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.yedam.ymrb.mail.SendEmail;

@Controller
public class UserController {

	@Autowired
	UserService userService;
	
	//등록폼
	@RequestMapping(value={"/userInsert.do", "/userIns.do"})
	public String userInsert(){
		return "/popup/user/contact";
	}	
	//등록
	@RequestMapping(value="/userInsert.do", 
			        method = RequestMethod.POST)
	public String userInsert(UserVO userVO, 
			                 HttpServletRequest request){
		System.out.println("등록:" + userVO);
/*		UserVO  vo = new UserVO();
		vo.setName(request.getParameter("name"));
		vo.setId(request.getParameter("id"));
		System.out.println("파라미터:" + vo);*/
		userService.insertUser(userVO);
		return "/popup/alert";
	}
	
	@RequestMapping("/checkId.do")
	@ResponseBody
	public String checkId(UserVO vo){
		if(userService.checkId(vo)){ 
			return "true";
		}
		else{
			return "false";
		}
	}
	@RequestMapping("/checkNic.do")
	@ResponseBody
	public String checkNic(UserVO vo){
		if(userService.checkNic(vo)){ 
			return "true";
		}
		else{
			return "false";
		}
	}
	
	@RequestMapping("/findId.do")
	public ModelAndView findId(UserVO vo){
		UserVO user = userService.findId(vo);
		String id=null;
		if(user !=null)
			id = user.getMem_id();
		ModelAndView mv = new ModelAndView();
		if(id != null){
			
			mv.addObject("id",id);
			mv.setViewName("/popup/user/idFinder");
			return mv;
		}
		else{
			mv.addObject("id","fail");
			mv.setViewName("/popup/user/idFinder");
			return mv;
		}
	}
	@RequestMapping("/findPw.do")
	public ModelAndView findPw(UserVO vo){
		boolean flag = userService.findPw(vo);
		ModelAndView mv = new ModelAndView();
		
		if(flag){
			String email = vo.getMem_email();
			String msg = "";
			for(int i = 0; i < 8; i++){
				//char upperStr = (char)(Math.random() * 26 + 65);
				char lowerStr = (char)(Math.random() * 26 + 97);
				if(i%2 == 0){
					msg += (int)(Math.random() * 10);
				}else{
				   msg += lowerStr;
				}
			}
			vo.setMem_pw(msg);
			userService.tempPw(vo);
			SendEmail.Send(email,msg);
			mv.addObject("flag",flag);
			mv.setViewName("/popup/user/pwFinder");
			return mv;
		}
		else{
			mv.addObject("flag",flag);
			mv.setViewName("/popup/user/pwFinder");
			return mv;
		}
	}
	
	
	@RequestMapping("/test.do")
	public String test() {
		return "/popup/admin/memUpdate";
	}
	
	@RequestMapping(value="/testForm.do", method=RequestMethod.GET)
	public String testForm(HttpServletRequest request, Model model) throws Exception {
	    return "/popup/user/test2";
	}
	//목록
	@RequestMapping("/getUserList.do")
	public ModelAndView getUserList(UserVO vo, ModelAndView mv){
		//List<Map<String, Object>> list = userService.getUserList(vo);
		List<UserVO> list = userService.getUserListVO(vo);
		mv.addObject("list", list);
		mv.setViewName("/admin/memList");
		//model.addAttribute("list",list);
		System.out.println(mv.getModel());
		return mv;
		//return "user/userList";
	}
	
	
	
	//로그인폼
	@RequestMapping("/login.do")
	public String loginForm() {
		return "/popup/user/login";
	}
	
	
	@RequestMapping("/findIdForm.do")
	public String findId() {
		return "/popup/user/findId";
	}
	@RequestMapping("/findPwForm.do")
	public String findPw() {
		return "/popup/user/findPw";
	}
	
	
	@RequestMapping("/updateForm.do")
	public ModelAndView updateForm(UserVO vo) {
		ModelAndView mv = new ModelAndView();
		UserVO user = userService.getUser(vo);
		mv.addObject("user", user);
		mv.setViewName("/user/update");
		return mv;
	}
	
	@RequestMapping("/updateAForm.do")
	public ModelAndView updateAdmin(UserVO vo) {
		ModelAndView mv = new ModelAndView();
		UserVO user = userService.getUser(vo);
		mv.addObject("user", user);
		mv.setViewName("/popup/admin/memUpdate");
		return mv;
	}
	
	//로그인
	@RequestMapping(value="/login.do", method = RequestMethod.POST )
	public String login(/*@ModelAttribute("user") UserVO vo,*/	//커맨드객체
		@RequestParam String mem_id,
		@RequestParam(value="mem_pw") String mem_pw,
		Model model, HttpSession session) {
			UserVO vo = new UserVO();
			vo.setMem_id(mem_id);
			vo.setMem_pw(mem_pw);
			UserVO result = userService.login(vo);
			if ( result != null ) {
					session.setAttribute("login", result);
		//페이지이동
		//return "redirect:/getBoardList.do";
					model.addAttribute("msg","로그인되었습니다.");
					//model.addAttribute("url","/getBoardList.do");
					return "/popup/alert";
			} else {
				return "/popup/user/login";
		}
	}
	//로그아웃
	@RequestMapping("/logout.do")
	public String logout(HttpSession session) {
		session.invalidate();
		return "/popup/alert";
	}	
}
