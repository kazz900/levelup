package com.gs.levelup.caseitemdelete.model.vo;

import java.sql.Date;

public class CaseItemDelete {
	private String documentId;
	private int userId;
	private int itemId;
	private int charId;
	private String employeeId;
	private int deleteItemId;
	private int deleteItemNo;
	private String documentTitle;
	private String documentContent;
	private String attachementFilename;
	private Date editDate;
	private Date signDate;
	private String DocumentStatus;
	
	public CaseItemDelete() {}

	public CaseItemDelete(String documentId, int userId, int itemId, int charId, String employeeId, int deleteItemId,
			int deleteItemNo, String documentTitle, String documentContent, String attachementFilename, Date editDate,
			Date signDate, String documentStatus) {
		super();
		this.documentId = documentId;
		this.userId = userId;
		this.itemId = itemId;
		this.charId = charId;
		this.employeeId = employeeId;
		this.deleteItemId = deleteItemId;
		this.deleteItemNo = deleteItemNo;
		this.documentTitle = documentTitle;
		this.documentContent = documentContent;
		this.attachementFilename = attachementFilename;
		this.editDate = editDate;
		this.signDate = signDate;
		DocumentStatus = documentStatus;
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

	public int getDeleteItemId() {
		return deleteItemId;
	}

	public void setDeleteItemId(int deleteItemId) {
		this.deleteItemId = deleteItemId;
	}

	public int getDeleteItemNo() {
		return deleteItemNo;
	}

	public void setDeleteItemNo(int deleteItemNo) {
		this.deleteItemNo = deleteItemNo;
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
		return DocumentStatus;
	}

	public void setDocumentStatus(String documentStatus) {
		DocumentStatus = documentStatus;
	}

	@Override
	public String toString() {
		return "CaseItemDelete [documentId=" + documentId + ", userId=" + userId + ", itemId=" + itemId + ", charId="
				+ charId + ", employeeId=" + employeeId + ", deleteItemId=" + deleteItemId + ", deleteItemNo="
				+ deleteItemNo + ", documentTitle=" + documentTitle + ", documentContent=" + documentContent
				+ ", attachementFilename=" + attachementFilename + ", editDate=" + editDate + ", signDate=" + signDate
				+ ", DocumentStatus=" + DocumentStatus + "]";
	}
	
	

}
