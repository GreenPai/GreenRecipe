package com.green.user.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.green.user.service.UserService;
import com.green.user.vo.UserVo;

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
		
		return  "user/list"; 
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
		
		return "redirect:/User/List";   // 목록 조회
	}

	// 회원중복체크
	 @RequestMapping("/User/DupCheck")
	  public String dupCheck( UserVo vo, Model model) {		  
			int cnt = userService.dupCheck( vo );
			model.addAttribute("cnt", cnt);
		  return "user/dupcheck";		  
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
}
















