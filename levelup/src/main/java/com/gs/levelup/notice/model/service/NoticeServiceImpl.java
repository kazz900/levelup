package com.gs.levelup.notice.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gs.levelup.common.Paging;
import com.gs.levelup.common.Search;
import com.gs.levelup.common.SearchDate;
import com.gs.levelup.notice.model.dao.NoticeDao;
import com.gs.levelup.notice.model.vo.Notice;

@Service("noticeService")
public class NoticeServiceImpl implements NoticeService{
	@Autowired	//자동 DI 처리됨 : 자동 객체 생성됨
	private NoticeDao noticeDao;
	
	@Override
	public ArrayList<Notice> selectList(Paging paging){
		return noticeDao.selectList(paging);
	}
	@Override
	public Notice selectOne(String noticeId) {
		return noticeDao.selectOne(noticeId);
	}
	@Override
	public int insertNotice(Notice notice) {
		return noticeDao.insertNotice(notice);
	}
	@Override
	public int updateNotice(Notice notice) {
		return noticeDao.updateNotice(notice);
	}
	@Override
	public int deleteNotice(String noticeId) {
		return noticeDao.deleteNotice(noticeId);
	}
	@Override
	public int selectListCount() {
		return noticeDao.selectListCount();
	}
	@Override
	public int selectSearchTitleCount(String keyword) {
		return noticeDao.selectSearchTitleCount(keyword);
	}
	@Override
	public int selectSearchContentCount(String keyword) {
		return noticeDao.selectSearchContentCount(keyword);
	}
	@Override
	public int selectSearchDateCount(SearchDate date) {
		return noticeDao.selectSearchDateCount(date);
	}
	@Override
	public ArrayList<Notice> selectSearchTitle(Search search) {
		return noticeDao.selectSearchTitle(search);
	}
	@Override
	public ArrayList<Notice> selectSearchContent(Search search) {
		return noticeDao.selectSearchContent(search);
	}
	@Override
	public ArrayList<Notice> selectSearchDate(Search search) {
		return noticeDao.selectSearchDate(search);
	}
	@Override
	public void updateReadCount(String noticeId) {
		noticeDao.updateReadCount(noticeId);
	}
}
