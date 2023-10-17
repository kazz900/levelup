package com.gs.levelup.caseitemchange.model.vo;

import java.sql.Date;


public class CaseItemChange implements java.io.Serializable{
	private static final long serialVersionUID = -9037080188106481236L;

	public static long getSerialversionuid() {
		return serialVersionUID;
	}



	private String documentId;
	private int userId;
	private int itemId;
	private int charId;
	private String employeeId;
	private String documentTitle;
	private String documentContent;
	private String attachementFilename;
	private Date editDate;
	private Date signDate;
	private String documentStatus;
	private int replaceItemId;
	private int replaceItemNo;
	
	public CaseItemChange() {}
	
	

	public CaseItemChange(String documentId, int userId, int itemId, int charId, String employeeId,
			String documentTitle, String documentContent, String attachementFilename, Date editDate, Date signDate,
			String documentStatus, int replaceItemId, int replaceItemNo) {
		super();
		this.documentId = documentId;
		this.userId = userId;
		this.itemId = itemId;
		this.charId = charId;
		this.employeeId = employeeId;
		this.documentTitle = documentTitle;
		this.documentContent = documentContent;
		this.attachementFilename = attachementFilename;
		this.editDate = editDate;
		this.signDate = signDate;
		this.documentStatus = documentStatus;
		this.replaceItemId = replaceItemId;
		this.replaceItemNo = replaceItemNo;
	}



	public String getDocumentId() {
		return documentId;
	}

	public void setDocumentId(String documentId) {
		this.documentId = documentId;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
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

	public String getEmployeeId() {
		return employeeId;
	}

	public void setEmployeeId(String employeeId) {
		this.employeeId = employeeId;
	}

	public String getDocumentTitle() {
		return documentTitle;
	}

	public void setDocumentTitle(String documentTitle) {
		this.documentTitle = documentTitle;
	}

	public String getDocumentContent() {
		return documentContent;
	}

	public void setDocumentContent(String documentContent) {
		this.documentContent = documentContent;
	}

	public String getAttachementFilename() {
		return attachementFilename;
	}

	public void setAttachementFilename(String attachementFilename) {
		this.attachementFilename = attachementFilename;
	}

	public Date getEditDate() {
		return editDate;
	}

	public void setEditDate(Date editDate) {
		this.editDate = editDate;
	}

	public Date getSignDate() {
		return signDate;
	}

	public void setSignDate(Date signDate) {
		this.signDate = signDate;
	}

	public String getDocumentStatus() {
		return documentStatus;
	}

	public void setDocumentStatus(String documentStatus) {
		this.documentStatus = documentStatus;
	}

	public int getReplaceItemId() {
		return replaceItemId;
	}

	public void setReplaceItemId(int replaceItemId) {
		this.replaceItemId = replaceItemId;
	}

	public int getReplaceItemNo() {
		return replaceItemNo;
	}

	public void setReplaceItemNo(int replaceItemNo) {
		this.replaceItemNo = replaceItemNo;
	}



	@Override
	public String toString() {
		return "CaseItemChange [documentId=" + documentId + ", userId=" + userId + ", itemId=" + itemId + ", charId="
				+ charId + ", employeeId=" + employeeId + ", documentTitle=" + documentTitle + ", documentContent="
				+ documentContent + ", attachementFilename=" + attachementFilename + ", editDate=" + editDate
				+ ", signDate=" + signDate + ", DocumentStatus=" + documentStatus + ", replaceItemId=" + replaceItemId
				+ ", replaceItemNo=" + replaceItemNo + "]";
	}

	
}
