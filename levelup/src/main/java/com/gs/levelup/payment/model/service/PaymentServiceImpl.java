package com.gs.levelup.payment.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gs.levelup.payment.model.dao.PaymentDao;
import com.gs.levelup.payment.model.vo.Payment;

@Service("paymentService")
public class PaymentServiceImpl implements PaymentService{

	@Autowired
	private PaymentDao paymentDao;
	
	@Override
	public Payment selectPayment(String paymentId) {
		return paymentDao.selectPayment(paymentId);
	}

	@Override
	public int inserPayment(Payment payment) {
		return paymentDao.inserPayment(payment);
	}

	@Override
	public int updatePayment(Payment payment) {
		return paymentDao.updatePayment(payment);
	}

	@Override
	public int deletePayment(Payment payment) {
		return paymentDao.deletePayment(payment);
	}

	@Override
	public ArrayList<Payment> selectList() {
		return paymentDao.selectList();
	}

	@Override
	public int selectListCount() {
		return paymentDao.selectListCount();
	}
	
}
