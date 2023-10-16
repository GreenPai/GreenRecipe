package com.green.user.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.green.recipe.vo.RecipeVo;
import com.green.user.dao.UserDao;
import com.green.user.vo.UserVo;

@Repository("userDao")
public class UserDaoImpl implements UserDao {

	@Autowired
	private  SqlSession sqlSession;
	
	@Override
	public void insertUser(UserVo vo) {
		
		// sqlSession :Mybatis 라이브러리를 사용한다
		sqlSession.insert("User.UserInsert", vo);

	}
	

	@Override
	public List<UserVo> getUserList() {
		
		
		List<UserVo>  userList =  sqlSession.selectList("User.getUserList");
		
		return userList;
	}

	@Override
	public UserVo getView(UserVo vo) {
		
		UserVo  user  =  sqlSession.selectOne("User.getUser", vo);
		
		return  user;
	}

	@Override
	public void deleteUser(UserVo vo) {
		
		sqlSession.delete( "User.UserDelete", vo );
		
	}

	@Override
	public void updateUser(UserVo vo) {
						
		sqlSession.update("User.UserUpdate", vo);
		
	}

	@Override
	public int dupCheck(UserVo vo) {
		int cnt  =  sqlSession.selectOne("User.DupCheck", vo);
		
		return  cnt;
	}


	@Override
	public UserVo userCheck(String userid) {
		
		UserVo user = sqlSession.selectOne("User.UserCheck", userid);
	    return user;
	}


	@Override
	public UserVo userName(String userid) {
		UserVo username = sqlSession.selectOne("User.UserName",userid);
		return username;
	}


	


	

}





