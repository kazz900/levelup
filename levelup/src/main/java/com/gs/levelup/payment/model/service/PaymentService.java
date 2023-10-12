package com.gs.levelup.payment.model.service;

import java.util.ArrayList;

<<<<<<< main
import com.gs.levelup.common.Paging;
import com.gs.levelup.common.Search;
import com.gs.levelup.common.SearchDate;
import com.gs.levelup.payment.model.vo.Payment;

public interface PaymentService {
	
	public ArrayList<Payment> selectList(Paging paging);	
	public int insertPayment(Payment payment);	
	public int updatePayment(Payment payment);	
	public int deletePayment(String paymentId);	
	public int selectListCount();
	public int selectSearchUserIDCount(String keyword);
	public int selectSearchItemCount(String keyword);
	public int selectSearchDateCount(SearchDate date);
	public ArrayList<Payment> selectSearchUserID(Search search);
	public ArrayList<Payment> selectSearchItem(Search search);
	public ArrayList<Payment> selectSearchDate(Search search);
=======
import com.gs.levelup.payment.model.vo.Payment;
>>>>>>> kimjihyuk

public interface PaymentService {
	public Payment selectPayment(String paymentId);
	public int inserPayment(Payment payment);
	public int updatePayment(Payment payment);
	public int deletePayment(Payment payment);
	public ArrayList<Payment> selectList();
	public int selectListCount();
}
