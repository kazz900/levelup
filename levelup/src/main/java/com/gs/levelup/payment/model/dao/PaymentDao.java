package com.gs.levelup.payment.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

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

	public int selectListCount() {
		return 0;
	}
	
}
