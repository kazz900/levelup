package com.gs.levelup.community.model.vo;

import java.sql.Date;

public class Community {
	private String boardId;
	private String departmentId;
	private String employeeId;
	private String boardTitle;
	private String boardContent;
	private Date boardDate;
	private String attachementFilename;
	private String boardType;
	private int readCount;
	
	public Community() {}

	public Community(String boardId, String departmentId, String employeeId, String boardTitle, String boardContent,
			Date boardDate, String attachementFilename, String boardType, int readCount) {
		super();
		this.boardId = boardId;
		this.departmentId = departmentId;
		this.employeeId = employeeId;
		this.boardTitle = boardTitle;
		this.boardContent = boardContent;
		this.boardDate = boardDate;
		this.attachementFilename = attachementFilename;
		this.boardType = boardType;
		this.readCount = readCount;
	}

	public String getBoardId() {
		return boardId;
	}

	public void setBoardId(String boardId) {
		this.boardId = boardId;
	}

	public String getDepartmentId() {
		return departmentId;
	}

	public void setDepartmentId(String departmentId) {
		this.departmentId = departmentId;
	}

	public String getEmployeeId() {
		return employeeId;
	}

	public void setEmployeeId(String employeeId) {
		this.employeeId = employeeId;
	}

	public String getBoardTitle() {
		return boardTitle;
	}

	public void setBoardTitle(String boardTitle) {
		this.boardTitle = boardTitle;
	}

	public String getBoardContent() {
		return boardContent;
	}

	public void setBoardContent(String boardContent) {
		this.boardContent = boardContent;
	}

	public Date getBoardDate() {
		return boardDate;
	}

	public void setBoardDate(Date boardDate) {
		this.boardDate = boardDate;
	}

	public String getAttachementFilename() {
		return attachementFilename;
	}

	public void setAttachementFilename(String attachementFilename) {
		this.attachementFilename = attachementFilename;
	}

	public String getBoardType() {
		return boardType;
	}

	public void setBoardType(String boardType) {
		this.boardType = boardType;
	}

	public int getReadCount() {
		return readCount;
	}

	public void setReadCount(int readCount) {
		this.readCount = readCount;
	}

	@Override
	public String toString() {
		return "Community [boardId=" + boardId + ", departmentId=" + departmentId + ", employeeId=" + employeeId
				+ ", boardTitle=" + boardTitle + ", boardContent=" + boardContent + ", boardDate=" + boardDate
				+ ", attachementFilename=" + attachementFilename + ", boardType=" + boardType + ", readCount="
				+ readCount + "]";
	}
	
	
	
}
