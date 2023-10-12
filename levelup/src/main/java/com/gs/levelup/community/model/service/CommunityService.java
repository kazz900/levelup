package com.gs.levelup.community.model.service;

import java.util.ArrayList;

import com.gs.levelup.common.Paging;
import com.gs.levelup.common.Search;
import com.gs.levelup.common.SearchDate;
import com.gs.levelup.community.model.vo.Community;
import com.gs.levelup.notice.model.vo.Notice;

public interface CommunityService {

	public ArrayList<Community> selectCommunityTop();

	public int selectListCount();

	public ArrayList<Community> selectList(Paging paging);

	public int insertCommunity(Community community);

	public Community selectCommunity(int boardNo);

	public int updateReadCount(int boardNo);

	public int updateCommunity(Community community);

	public int selectSearchTitleCount(String keyword);

	public ArrayList<Community> selectSearchTitle(Search search);

	public int selectSearchContentCount(String keyword);

	public ArrayList<Community> selectSearchContent(Search search);

	public int selectSearchDateCount(SearchDate searchDate);

	public ArrayList<Community> selectSearchDate(Search search);

	public int deleteCommunity(String boardId);
	
	
	

}
