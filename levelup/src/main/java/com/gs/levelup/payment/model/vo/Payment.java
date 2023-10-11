package com.gs.levelup.payment.model.vo;

import java.sql.Date;

public class Payment {
	private String paymentId;
	private int itemId;
	private int charId;
	private int accountId;
	private int amout;
	private Date paymentDate;
	private String paymentStatus;
	private Date refundDate;
	private String refundCause;
	
	public Payment() {}

	public Payment(String paymentId, int itemId, int charId, int accountId, int amout, Date paymentDate,
			String paymentStatus, Date refundDate, String refundCause) {
		super();
		this.paymentId = paymentId;
		this.itemId = itemId;
		this.charId = charId;
		this.accountId = accountId;
		this.amout = amout;
		this.paymentDate = paymentDate;
		this.paymentStatus = paymentStatus;
		this.refundDate = refundDate;
		this.refundCause = refundCause;
	}

	public String getPaymentId() {
		return paymentId;
	}

	public void setPaymentId(String paymentId) {
		this.paymentId = paymentId;
	}

	public int getItemId() {
		return itemId;
	}

	public void setItemId(int itemId) {
		this.itemId = itemId;
	}

	public int getCharId() {
		return charId;
	}

	public void setCharId(int charId) {
		this.charId = charId;
	}

	public int getAccountId() {
		return accountId;
	}

	public void setAccountId(int accountId) {
		this.accountId = accountId;
	}

	public int getAmout() {
		return amout;
	}

	public void setAmout(int amout) {
		this.amout = amout;
	}

	public Date getPaymentDate() {
		return paymentDate;
	}

	public void setPaymentDate(Date paymentDate) {
		this.paymentDate = paymentDate;
	}

	public String getPaymentStatus() {
		return paymentStatus;
	}

	public void setPaymentStatus(String paymentStatus) {
		this.paymentStatus = paymentStatus;
	}

	public Date getRefundDate() {
		return refundDate;
	}

	public void setRefundDate(Date refundDate) {
		this.refundDate = refundDate;
	}

	public String getRefundCause() {
		return refundCause;
	}

	public void setRefundCause(String refundCause) {
		this.refundCause = refundCause;
	}

	@Override
	public String toString() {
		return "Payment [paymentId=" + paymentId + ", itemId=" + itemId + ", charId=" + charId + ", accountId="
				+ accountId + ", amout=" + amout + ", paymentDate=" + paymentDate + ", paymentStatus=" + paymentStatus
				+ ", refundDate=" + refundDate + ", refundCause=" + refundCause + "]";
	}
	
	
}
