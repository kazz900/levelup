package com.gs.levelup.user.model.service;

import java.util.ArrayList;

import com.gs.levelup.common.Paging;
import com.gs.levelup.common.Search;
import com.gs.levelup.common.SearchDate;
import com.gs.levelup.user.model.vo.User;

public interface UserService {

	public User selectLogin(User User);
	public User selectUser(String userid);

	public ArrayList<User> selectList(Paging paging); // 페이징 처리된 목록 조회
	public int selectListCount(); 
	public int selectSearchIdCount(String keyword);

	// 검색 관련
	public ArrayList<User> selectSearchUserId(Search search);
	
}
