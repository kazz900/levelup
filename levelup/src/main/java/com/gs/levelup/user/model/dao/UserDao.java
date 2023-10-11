package com.gs.levelup.user.model.dao;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.gs.levelup.common.Search;
import com.gs.levelup.user.model.vo.User;

@Repository("userDao")
public class UserDao {
	
	@Autowired
	private org.mybatis.spring.SqlSessionTemplate sqlSessionTemplate;

	public User selectLogin(User user) {
		// TODO Auto-generated method stub
		return null;
	}

	public User selectMember(String userid) {
		// TODO Auto-generated method stub
		return null;
	}

	public ArrayList<User> selectList() {
		// TODO Auto-generated method stub
		return null;
	}

	public int selectListCount() {
		// TODO Auto-generated method stub
		return 0;
	}

	public int selectSearchIdCount(String keyword) {
		// TODO Auto-generated method stub
		return 0;
	}

	public ArrayList<User> selectSearchUserId(Search search) {
		// TODO Auto-generated method stub
		return null;
	}

}
