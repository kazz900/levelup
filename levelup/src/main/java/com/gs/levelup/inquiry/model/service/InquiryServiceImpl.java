package com.gs.levelup.inquiry.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gs.levelup.common.Paging;
import com.gs.levelup.common.Search;
import com.gs.levelup.common.SearchDate;
import com.gs.levelup.inquiry.model.dao.InquiryDao;
import com.gs.levelup.inquiry.model.vo.Inquiry;

@Service("inquiryService")
public class InquiryServiceImpl implements InquiryService{
	
	@Autowired
	private InquiryDao inquiryDao;
	
	public ArrayList<Inquiry> selectList(Paging paging){
		return inquiryDao.selectList(paging);
	}
	
	public int insertInquiryAnswer(Inquiry inquiry) {
		return inquiryDao.insertInquiryAnswer(inquiry);
	}
	
	public int updateInquiryAnswer(Inquiry inquiry) {
		return inquiryDao.updateInquiryAnswer(inquiry);
	}
	
	public int deleteInquiryAnswer(String inquiryId){
		return inquiryDao.deleteInquiryAnswer(inquiryId);
	}
	
	public int selectListCount() {
		return inquiryDao.selectListCount();
	}
	
	public int selectSearchUserIDCount(String keyword){
		return inquiryDao.selectSearchUserIDCount(keyword);
	}
	
	public int selectSearchTypeCount(String keyword) {
		return inquiryDao.selectSearchTypeCount(keyword);
	}
	
	public int selectSearchDateCount(SearchDate date) {
		return inquiryDao.selectSearchDateCount(date);
	}
	
	public ArrayList<Inquiry> selectSearchUserID(Search search){
		return inquiryDao.selectSearchUserID(search);
	}
	
	public ArrayList<Inquiry> selectSearchType(Search search){
		return inquiryDao.selectSearchType(search);
	}
	public ArrayList<Inquiry> selectSearchDate(Search search){
		return inquiryDao.selectSearchDate(search);
	}

}
