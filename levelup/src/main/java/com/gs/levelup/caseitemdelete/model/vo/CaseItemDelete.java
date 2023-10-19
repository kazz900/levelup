package com.gs.levelup.caseitemdelete.model.vo;

import java.sql.Date;


public class CaseItemDelete implements java.io.Serializable{
	private static final long serialVersionUID = -4244145355886312304L;

	private String documentId;
	public static long getSerialversionuid() {
		return serialVersionUID;
	}

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
	private int deleteItemId;
	private String managerId;
	private String itemName;
	private int itemAmount;
	
	public CaseItemDelete() {}

	public CaseItemDelete(String documentId, int userId, int itemId, int charId, String employeeId,
			String documentTitle, String documentContent, String attachementFilename, Date editDate, Date signDate,
			String documentStatus, int deleteItemId) {
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
		this.deleteItemId = deleteItemId;
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

	public int getDeleteItemId() {
		return deleteItemId;
	}

	public void setDeleteItemId(int deleteItemId) {
		this.deleteItemId = deleteItemId;
	}

	public String getManagerId() {
		return managerId;
	}

	public void setManagerId(String managerId) {
		this.managerId = managerId;
	}

	public String getItemName() {
		return itemName;
	}

	public void setItemName(String itemName) {
		this.itemName = itemName;
	}

	public int getItemAmount() {
		return itemAmount;
	}

	public void setItemAmount(int itemAmount) {
		this.itemAmount = itemAmount;
	}

	@Override
	public String toString() {
		return "CaseItemDelete [documentId=" + documentId + ", userId=" + userId + ", itemId=" + itemId + ", charId="
				+ charId + ", employeeId=" + employeeId + ", documentTitle=" + documentTitle + ", documentContent="
				+ documentContent + ", attachementFilename=" + attachementFilename + ", editDate=" + editDate
				+ ", signDate=" + signDate + ", DocumentStatus=" + documentStatus + ", deleteItemId=" + deleteItemId
				+ ", deleteItemNo=" + "]";
	}
}
