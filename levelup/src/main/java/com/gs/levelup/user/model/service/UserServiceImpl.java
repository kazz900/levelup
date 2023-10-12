package com.gs.levelup.user.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gs.levelup.common.Paging;
import com.gs.levelup.common.Search;
import com.gs.levelup.user.model.dao.UserDao;
import com.gs.levelup.user.model.vo.User;

@Service("userService")
public class UserServiceImpl implements UserService{
	
	@Autowired
	private UserDao userDao;
	
	public UserServiceImpl() {}

	@Override
	public User selectLogin(User User) {
		return userDao.selectLogin(User);
	}

	@Override
	public User selectUser(String userid) {
		return userDao.selectMember(userid);
	}

	@Override
	public ArrayList<User> selectList(Paging paging) {
		return userDao.selectList();
	}

	@Override
	public int selectListCount() {
		return userDao.selectListCount();
	}

	@Override
	public int selectSearchIdCount(String keyword) {
		return userDao.selectSearchIdCount(keyword);
	}

	@Override
	public ArrayList<User> selectSearchUserId(Search search) {
		return userDao.selectSearchUserId(search);
	}

}