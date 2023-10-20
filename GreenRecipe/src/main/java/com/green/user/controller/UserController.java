package com.green.user.controller;

import java.lang.reflect.Member;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.green.recipe.vo.RecipeVo;
import com.green.user.service.UserService;
import com.green.user.vo.UserVo;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;



@Controller
public class UserController {
	
	@Autowired
	private  UserService   userService;
	
	// 회원목록조회	 /User/List
	@RequestMapping("/User/List")
	public  String  list( Model model  ) {
		
		// db 조회 정보가지고 온다
		List<UserVo>  userList = userService.getUserList();
		model.addAttribute( "userList" , userList);
		
		return  "user/login"; 
	}
	
	//회원가입 - > 약관동의
	@RequestMapping("/User/Agree")
	public String agree() throws Exception {
        return "/user/agree";
    }	
	
	//회원가입  /User/WriteForm
	@RequestMapping("/User/WriteForm")
	public  String  writeform(@RequestParam(value="agree", defaultValue="false") Boolean agree) throws Exception {
        if(!agree){
		return  "redirect:/";  
		} else {
			return  "/user/write";
		}
	}
	
	//회원가입 -> 저장 
	@RequestMapping("/User/Write")
	public  String  write(	UserVo  vo ) {
		
		// 회원정보저장
		userService.insertUser(vo);					
		
		return "index";   // 목록 조회
	}

	// 회원중복체크
	 @RequestMapping("/User/DupCheck")
	  public String dupCheck( UserVo vo, Model model) {		  
			int cnt = userService.dupCheck( vo );
			model.addAttribute("cnt", cnt);
		  return "user/dupcheck";		  
	  }
	 
	// 닉네임중복체크
	 @RequestMapping("/User/NickDupCheck")
	  public String nicDupCheck( UserVo vo, Model model) {		  
			int cnt = userService.nickDupCheck( vo );
			model.addAttribute("cnt", cnt);
		  return "user/nickdupcheck";		  
	  }
	
	// 회원정보보기  
	@RequestMapping("/User/View")
	public  String   view( UserVo vo, Model model ) {
		
		UserVo user = userService.getView( vo );
		model.addAttribute("user", user);
		
		return  "user/view";    
	}
	
	// 회원삭제  // /User/Delete
	@RequestMapping("/User/Delete/{userid}")
	public   String   delete(  
	    UserVo vo	
		) {
				
		userService.deleteUser( vo );
		
		return "redirect:/User/List";
	}
	
	// 회원정보 수정
	@RequestMapping("/User/UpdateForm")
	public String updateForm(UserVo vo, Model model) {
		
		// 수정할 정보를 조회한다.
		UserVo user  = userService.getView(vo);
		model.addAttribute("user", user);
		
		return "user/update";
	}
	
	// 수정 정보 저장
	@RequestMapping("/User/Update")
	public String update(UserVo vo) {
		
		userService.userUpdate(vo);
		
		return "redirect:/User/List";
	}
	
	
	// 로그인 버튼 눌렀을때 로그인 양식으로 넘어감
	@RequestMapping("/User/Login")
	public ModelAndView login() {
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("user/login");		
		

		return mv;
	}
   
	//로그인 아이디/비밀번호 적고 로그인 눌렀을때 검사 
	@RequestMapping("/User/Login2")
	public ModelAndView login2(@RequestParam("userid") String userid, @RequestParam("passwd") String passwd, HttpServletRequest request) {
	
		 // userService.loginCheck 메서드를 호출하여 로그인 검사
		UserVo username= userService.username(userid);
	    String loginResult = userService.loginCheck(userid, passwd);
        
	    String name=username.getUsername();
	    String email=username.getEmail();
	    System.out.println(name);
	    System.out.println(email);
        
	    if ("login_success".equals(loginResult)) {
	        // 로그인 성공 처리 
	        ModelAndView mv = new ModelAndView();
	        mv.setViewName("index");
	        
	        HttpSession session = request.getSession();
	        session.setAttribute("userid", userid); // 아이디
	        session.setAttribute("userpw", passwd); // 비밀번호
	        session.setAttribute("loginMember", name); // 유저이름
	        session.setAttribute("useremail", email); // 이메일        
	        return mv;
	        
	        
	    } else if ("wrong_password".equals(loginResult)) {
	        // 비밀번호가 일치하지 않는 경우 
	        ModelAndView mv = new ModelAndView();
	        mv.addObject("loginError", "비밀번호가 일치하지 않습니다.");
	        mv.setViewName("user/login"); 
	        return mv;
	    } else {
	        // 사용자를 찾을 수 없는 경우 처리
	        ModelAndView mv = new ModelAndView();
	        mv.addObject("loginError", "사용자를 찾을 수 없습니다.");
	        mv.setViewName("user/login"); 
	        return mv;
	    }		
		
	
}

	@RequestMapping("/logout")
	public String logout(HttpServletRequest request) {
	    HttpSession session = request.getSession();
	    if (session != null) {
	        session.invalidate(); // 세션 무효화
	    }
	    return "/index"; 
	}	
	
	
	
	
	
	
}














