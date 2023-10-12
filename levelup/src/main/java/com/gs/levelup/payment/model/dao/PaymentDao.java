package com.gs.levelup.payment.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.gs.levelup.common.Paging;
import com.gs.levelup.common.Search;
import com.gs.levelup.common.SearchDate;

import com.gs.levelup.payment.model.vo.Payment;

@Repository("paymentDao")
public class PaymentDao {
	@Autowired  
	private SqlSessionTemplate sqlSessionTemplate;


	public ArrayList<Payment> selectList(Paging paging){
		List<Payment> list = sqlSessionTemplate.selectList("paymentMapper.selectList", paging);
		return (ArrayList<Payment>)list;
	}
	
	public int insertPayment(Payment payment) {
		return sqlSessionTemplate.insert("paymentMapper.insertNotice", payment);
	}

	public int updatePayment(Payment payment) {
		return sqlSessionTemplate.update("paymentMapper.updateNotice", payment);
	}
	
	public int deletePayment(String paymentId) {
		return sqlSessionTemplate.delete("paymentMapper.deleteNotice", paymentId);
	}

	public int selectListCount() {
		return sqlSessionTemplate.selectOne("paymentMapper.getListCount");
	}

	public int selectSearchUserIDCount(String keyword) {
		return sqlSessionTemplate.selectOne("paymentMapper.getSearchTitleCount", keyword);
	}

	public int selectSearchItemCount(String keyword) {
		return sqlSessionTemplate.selectOne("paymentMapper.getSearchContentCount", keyword);
	}

	public int selectSearchDateCount(SearchDate date) {
		return sqlSessionTemplate.selectOne("paymentMapper.getSearchDateCount", date);
	}

	public ArrayList<Payment> selectSearchUserID(Search search) {
		List<Payment> list = sqlSessionTemplate.selectList("paymentMapper.selectSearchTitle", search);
		return (ArrayList<Payment>)list;
	}

	public ArrayList<Payment> selectSearchItem(Search search) {
		List<Payment> list = sqlSessionTemplate.selectList("paymentMapper.selectSearchContent", search);
		return (ArrayList<Payment>)list;
	}

	public ArrayList<Payment> selectSearchDate(Search search) {
		List<Payment> list = sqlSessionTemplate.selectList("paymentMapper.selectSearchDate", search);
		return (ArrayList<Payment>)list;
	}


}
