package com.gs.levelup.notice.model.service;

import java.util.ArrayList;

import com.gs.levelup.common.Paging;
import com.gs.levelup.common.Search;
import com.gs.levelup.common.SearchDate;
import com.gs.levelup.notice.model.vo.Notice;


public interface NoticeService {
	public ArrayList<Notice> selectList(Paging paging);
	public Notice selectOne(String noticeId);
	public int insertNotice(Notice notice);
	public int updateNotice(Notice notice);
	public int deleteNotice(String noticeId);
	public int selectListCount();
	public int selectSearchTitleCount(String keyword);
	public int selectSearchContentCount(String keyword);
	public int selectSearchDateCount(SearchDate date);
	public ArrayList<Notice> selectSearchTitle(Search search);
	public ArrayList<Notice> selectSearchContent(Search search);
	public ArrayList<Notice> selectSearchDate(Search search);
	public void updateReadCount(String noticeId);
	
}
