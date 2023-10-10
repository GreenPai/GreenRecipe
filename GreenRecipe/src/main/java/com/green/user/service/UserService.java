package com.green.user.service;

import java.util.List;

import com.green.user.vo.UserVo;

public interface UserService {

	void insertUser(UserVo vo);

	List<UserVo> getUserList();

	UserVo getView(UserVo vo);

	void deleteUser(UserVo vo);

	int dupCheck(UserVo vo);

	void userUpdate(UserVo vo);

}
