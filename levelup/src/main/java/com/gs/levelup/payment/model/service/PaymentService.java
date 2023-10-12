package com.gs.levelup.payment.model.service;

import java.util.ArrayList;

import com.gs.levelup.payment.model.vo.Payment;

public interface PaymentService {
	public Payment selectPayment(String paymentId);
	public int inserPayment(Payment payment);
	public int updatePayment(Payment payment);
	public int deletePayment(Payment payment);
	public ArrayList<Payment> selectList();
	public int selectListCount();
}
