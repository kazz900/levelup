package com.gs.levelup.community.model.dao;

import java.util.ArrayList;

import com.gs.levelup.common.Paging;
import com.gs.levelup.common.Search;
import com.gs.levelup.common.SearchDate;
import com.gs.levelup.community.model.vo.Community;

public class CommunityDao {

	public ArrayList<Community> selectCommunityTop() {
		// TODO Auto-generated method stub
		return null;
	}

	public int selectListCount() {
		// TODO Auto-generated method stub
		return 0;
	}

	public ArrayList<Community> selectList(Paging paging) {
		// TODO Auto-generated method stub
		return null;
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
