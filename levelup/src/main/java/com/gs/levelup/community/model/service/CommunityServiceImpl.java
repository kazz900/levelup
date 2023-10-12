package com.gs.levelup.community.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gs.levelup.common.Paging;
import com.gs.levelup.common.Search;
import com.gs.levelup.common.SearchDate;
import com.gs.levelup.community.model.dao.CommunityDao;
import com.gs.levelup.community.model.vo.Community;

@Service("communityService")
public class CommunityServiceImpl implements CommunityService{

	@Autowired
	CommunityDao communityDao;
	
	@Override
	public ArrayList<Community> selectCommunityTop() {
		return communityDao.selectCommunityTop();
	}

	@Override
	public int selectListCount() {
		return communityDao.selectListCount();
	}

	@Override
	public ArrayList<Community> selectList(Paging paging) {
		return communityDao.selectList(paging);
	}

	@Override
	public int insertCommunity(Community community) {
		return communityDao.insertCommunity(community);
	}

	@Override
	public Community selectCommunity(int boardNo) {
		return communityDao.selectCommunity(boardNo);
	}

	@Override
	public int updateReadCount(int boardNo) {
		return communityDao.updateReadCount(boardNo);
	}

	@Override
	public int updateCommunity(Community community) {
		return communityDao.updateCommunity(community);
	}

	@Override
	public int selectSearchTitleCount(String keyword) {
		return communityDao.selectSearchTitleCount(keyword);
	}

	@Override
	public ArrayList<Community> selectSearchTitle(Search search) {
		return communityDao.selectSearchTitle(search);
	}

	@Override
	public int selectSearchContentCount(String keyword) {
		return communityDao.selectSearchContentCount(keyword);
	}

	@Override
	public ArrayList<Community> selectSearchContent(Search search) {
		return communityDao.selectSearchContent(search);
	}

	@Override
	public int selectSearchDateCount(SearchDate searchDate) {
		return communityDao.selectSearchDateCount(searchDate);
	}

	@Override
	public ArrayList<Community> selectSearchDate(Search search) {
		return communityDao.selectSearchDate(search);
	}

	@Override
	public int deleteCommunity(String boardId) {
		return communityDao.deleteCommunity(boardId);
	}

}
