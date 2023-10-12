package com.gs.levelup.payment.model.dao;

import java.util.ArrayList;
<<<<<<< main
import java.util.List;
=======
>>>>>>> kimjihyuk

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

<<<<<<< main
import com.gs.levelup.common.Paging;
import com.gs.levelup.common.Search;
import com.gs.levelup.common.SearchDate;
=======
>>>>>>> kimjihyuk
import com.gs.levelup.payment.model.vo.Payment;

@Repository("paymentDao")
public class PaymentDao {
	@Autowired	//root-context.xml 에서 생성한 객체를 자동 연결함
	private SqlSessionTemplate sqlSessionTemplate;
	
	public Payment selectPayment(String paymentId) {
		return null;
	}
	
	public int inserPayment(Payment payment) {
		return 0;
	}
	
	public int updatePayment(Payment payment) {
		return 0;
	}
	
	public int deletePayment(Payment payment) {
		return 0;
	}
	
	public ArrayList<Payment> selectList() {
		return null;
	}

<<<<<<< main
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


=======
	public int selectListCount() {
		return 0;
	}
	
>>>>>>> kimjihyuk
}
