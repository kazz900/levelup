package com.gs.levelup.user.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.gs.levelup.common.Paging;
import com.gs.levelup.common.Search;
import com.gs.levelup.user.model.vo.User;

@Repository("userDao")
public class UserDao {
	
	@Autowired
	private org.mybatis.spring.SqlSessionTemplate sqlSessionTemplateMaria;

	@Autowired
	private org.mybatis.spring.SqlSessionTemplate sqlSessionTemplate;
	
	public User selectLogin(User user) {
		return sqlSessionTemplateMaria.selectOne("userMapper.selectLogin",user);
	}

	public User selectMember(String userid) {
		// TODO Auto-generated method stub
		return null;
	}

	public ArrayList<User> selectList(Paging paging) {
		List<User> list = sqlSessionTemplateMaria.selectList("userMapper.selectList",paging);
		return (ArrayList<User>)list;
	}

	public int selectListCount() {
		return sqlSessionTemplateMaria.selectOne("userMapper.selectListCount");
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
