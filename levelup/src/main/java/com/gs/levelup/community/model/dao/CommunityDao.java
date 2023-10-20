package com.gs.levelup.community.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.gs.levelup.common.Paging;
import com.gs.levelup.common.Search;
import com.gs.levelup.common.SearchDate;
import com.gs.levelup.community.model.vo.Community;

@Repository("communityDao")
public class CommunityDao {
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	public ArrayList<Community> selectCommunityTop() {
		// TODO Auto-generated method stub
		return null;
	}

	public int selectListCount() {
		return sqlSessionTemplate.selectOne("comMapper.selectListCount");
	}

	public ArrayList<Community> selectList(Paging paging) {
		List<Community> list = sqlSessionTemplate.selectList("comMapper.selectList",paging);
		return (ArrayList<Community>)list;
	}

	public int insertCommunity(Community community) {
		// TODO Auto-generated method stub
		return 0;
	}

	public Community selectCommunity(int boardNo) {
		// TODO Auto-generated method stub
		return null;
	}

	public int updateReadCount(int boardNo) {
		// TODO Auto-generated method stub
		return 0;
	}

	public int updateCommunity(Community community) {
		// TODO Auto-generated method stub
		return 0;
	}

	public int selectSearchTitleCount(String keyword) {
		// TODO Auto-generated method stub
		return 0;
	}

	public ArrayList<Community> selectSearchTitle(Search search) {
		// TODO Auto-generated method stub
		return null;
	}

	public int selectSearchContentCount(String keyword) {
		// TODO Auto-generated method stub
		return 0;
	}

	public ArrayList<Community> selectSearchContent(Search search) {
		// TODO Auto-generated method stub
		return null;
	}

	public int selectSearchDateCount(SearchDate searchDate) {
		// TODO Auto-generated method stub
		return 0;
	}

	public ArrayList<Community> selectSearchDate(Search search) {
		// TODO Auto-generated method stub
		return null;
	}

	public int deleteCommunity(String boardId) {
		// TODO Auto-generated method stub
		return 0;
	}

}
