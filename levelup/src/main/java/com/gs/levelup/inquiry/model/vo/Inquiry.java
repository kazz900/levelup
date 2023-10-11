package com.gs.levelup.inquiry.model.vo;

import java.sql.Date;

public class Inquiry {
	
	private String inquiryId;
	private int itemId;
	private String employeeId;
	private String inquiryTitle;
	private String inquiryContent;
	private String answerStatus;
	private Date editDate;
	private Date answerDate;
	private String answerContent;
	private String attachmentFileName;
	private String inquiryType;
	
	
	public Inquiry() {
		super();
	
	}


	public Inquiry(String inquiryId, int itemId, String employeeId, String inquiryTitle, String inquiryContent,
			String answerStatus, Date editDate, Date answerDate, String answerContent, String attachmentFileName,
			String inquiryType) {
		super();
		this.inquiryId = inquiryId;
		this.itemId = itemId;
		this.employeeId = employeeId;
		this.inquiryTitle = inquiryTitle;
		this.inquiryContent = inquiryContent;
		this.answerStatus = answerStatus;
		this.editDate = editDate;
		this.answerDate = answerDate;
		this.answerContent = answerContent;
		this.attachmentFileName = attachmentFileName;
		this.inquiryType = inquiryType;
	}


	public String getInquiryId() {
		return inquiryId;
	}


	public void setInquiryId(String inquiryId) {
		this.inquiryId = inquiryId;
	}


	public int getItemId() {
		return itemId;
	}


	public void setItemId(int itemId) {
		this.itemId = itemId;
	}


	public String getEmployeeId() {
		return employeeId;
	}


	public void setEmployeeId(String employeeId) {
		this.employeeId = employeeId;
	}


	public String getInquiryTitle() {
		return inquiryTitle;
	}


	public void setInquiryTitle(String inquiryTitle) {
		this.inquiryTitle = inquiryTitle;
	}


	public String getInquiryContent() {
		return inquiryContent;
	}


	public void setInquiryContent(String inquiryContent) {
		this.inquiryContent = inquiryContent;
	}


	public String getAnswerStatus() {
		return answerStatus;
	}


	public void setAnswerStatus(String answerStatus) {
		this.answerStatus = answerStatus;
	}


	public Date getEditDate() {
		return editDate;
	}


	public void setEditDate(Date editDate) {
		this.editDate = editDate;
	}


	public Date getAnswerDate() {
		return answerDate;
	}


	public void setAnswerDate(Date answerDate) {
		this.answerDate = answerDate;
	}


	public String getAnswerContent() {
		return answerContent;
	}


	public void setAnswerContent(String answerContent) {
		this.answerContent = answerContent;
	}


	public String getAttachmentFileName() {
		return attachmentFileName;
	}


	public void setAttachmentFileName(String attachmentFileName) {
		this.attachmentFileName = attachmentFileName;
	}


	public String getInquiryType() {
		return inquiryType;
	}


	public void setInquiryType(String inquiryType) {
		this.inquiryType = inquiryType;
	}


	@Override
	public String toString() {
		return "inquiry [inquiryId=" + inquiryId + ", itemId=" + itemId + ", employeeId=" + employeeId
				+ ", inquiryTitle=" + inquiryTitle + ", inquiryContent=" + inquiryContent + ", answerStatus="
				+ answerStatus + ", editDate=" + editDate + ", answerDate=" + answerDate + ", answerContent="
				+ answerContent + ", attachmentFileName=" + attachmentFileName + ", inquiryType=" + inquiryType + "]";
	}
	
	
	

}
