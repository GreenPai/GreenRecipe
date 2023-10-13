package com.green.user.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.green.recipe.vo.RecipeVo;
import com.green.user.dao.UserDao;
import com.green.user.service.UserService;
import com.green.user.vo.UserVo;

@Service("userService")
public class UserServiceImpl implements UserService {

	@Autowired
	private  UserDao  userDao;
	
	@Override
	public void insertUser(UserVo vo) {
		
		userDao.insertUser( vo );

	}

	@Override
	public List<UserVo> getUserList() {
		
		List<UserVo>  userList  =  userDao.getUserList(); 
		return    userList;
	}

	@Override
	public UserVo getView(UserVo vo) {
		
		UserVo  user = userDao.getView(vo);
		
		return  user;
	}

	@Override
	public void deleteUser(UserVo vo) {
		
		userDao.deleteUser( vo );
		
	}


	@Override
	public int dupCheck(UserVo vo) {
		int cnt = userDao.dupCheck(vo);
		
		return  cnt;
	}

	@Override
	public void userUpdate(UserVo vo) {
		userDao.updateUser(vo);		
	}

	@Override
	public String loginCheck(String userid, String passwd) {
		UserVo user = userDao.userCheck(userid);

	    if (user == null) {
	        // 사용자를 찾을 수 없음
	        return "user_not_found";
	    }

	    if (user.getPasswd().equals(passwd)) {
	        // 비밀번호 일치
	        return "login_success";
	    } else {
	        // 비밀번호 불일치
	        return "wrong_password";
	    }
	}

	

	
}












