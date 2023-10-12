package com.gs.levelup.payment.model.service;

import java.util.ArrayList;
<<<<<<< main

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gs.levelup.common.Paging;
import com.gs.levelup.common.Search;
import com.gs.levelup.common.SearchDate;
import com.gs.levelup.payment.model.dao.PaymentDao;
import com.gs.levelup.payment.model.vo.Payment;

@Service("paymentService")
public class PaymentServiceImpl implements PaymentService {
		@Autowired
		private PaymentDao paymentDao;
		
		@Override
		public ArrayList<Payment> selectList(Paging paging){
			return paymentDao.selectList(paging);
		}
		
		
		@Override
		public int insertPayment(Payment payment) {
			return paymentDao.insertPayment(payment);
		}
		
		@Override
		public int updatePayment(Payment payment) {
			return paymentDao.updatePayment(payment);
		}
		
		@Override
		public int deletePayment(String paymentId) {
			return paymentDao.deletePayment(paymentId);
		}

		@Override
		public int selectListCount() {		
			return paymentDao.selectListCount();
		}

		@Override
		public int selectSearchUserIDCount(String keyword) {
			return paymentDao.selectSearchUserIDCount(keyword);
		}

		@Override
		public int selectSearchItemCount(String keyword) {		
			return paymentDao.selectSearchItemCount(keyword);
		}

		@Override
		public int selectSearchDateCount(SearchDate date) {		
			return paymentDao.selectSearchDateCount(date);
		}

		@Override
		public ArrayList<Payment> selectSearchUserID(Search search) {
			return paymentDao.selectSearchUserID(search);
		}

		@Override
		public ArrayList<Payment> selectSearchItem(Search search) {		
			return paymentDao.selectSearchItem(search);
		}

		@Override
		public ArrayList<Payment> selectSearchDate(Search search) {		
			return paymentDao.selectSearchDate(search);
		}

=======
>>>>>>> kimjihyuk

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
