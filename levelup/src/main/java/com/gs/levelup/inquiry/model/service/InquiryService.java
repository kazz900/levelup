package com.gs.levelup.inquiry.model.service;

import java.util.ArrayList;

import com.gs.levelup.common.Paging;
import com.gs.levelup.common.Search;
import com.gs.levelup.common.SearchDate;
import com.gs.levelup.inquiry.model.vo.Inquiry;

public interface InquiryService {
	
	public ArrayList<Inquiry> selectList(Paging paging);	
	public int insertInquiryAnswer(Inquiry inquiry);	
	public int updateInquiryAnswer(Inquiry inquiry);	
	public int deleteInquiryAnswer(String inquiryId);	
	public int selectListCount();
	public int selectSearchUserIDCount(String keyword);
	public int selectSearchTypeCount(String keyword);
	public int selectSearchDateCount(SearchDate date);
	public ArrayList<Inquiry> selectSearchUserID(Search search);
	public ArrayList<Inquiry> selectSearchType(Search search);
	public ArrayList<Inquiry> selectSearchDate(Search search);
	public Inquiry selectInquiry(String inquiryId);


}
