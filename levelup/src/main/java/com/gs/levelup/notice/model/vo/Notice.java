package com.gs.levelup.notice.model.vo;

import java.sql.Date;

public class Notice {
	private String noticeId;
	private String employeeId;
	private String departmentId;
	private String teamId;
	private String noticeTitle;
	private String noticeContent;
	private Date editDate;
	private String attachementFilename;
	private int readCount;
	
	public Notice() {}

	public Notice(String noticeId, String employeeId, String departmentId, String teamId, String noticeTitle,
			String noticeContent, Date editDate, String attachementFilename, int readCount) {
		super();
		this.noticeId = noticeId;
		this.employeeId = employeeId;
		this.departmentId = departmentId;
		this.teamId = teamId;
		this.noticeTitle = noticeTitle;
		this.noticeContent = noticeContent;
		this.editDate = editDate;
		this.attachementFilename = attachementFilename;
		this.readCount = readCount;
	}

	public String getNoticeId() {
		return noticeId;
	}

	public void setNoticeId(String noticeId) {
		this.noticeId = noticeId;
	}

	public String getEmployeeId() {
		return employeeId;
	}

	public void setEmployeeId(String employeeId) {
		this.employeeId = employeeId;
	}

	public String getDepartmentId() {
		return departmentId;
	}

	public void setDepartmentId(String departmentId) {
		this.departmentId = departmentId;
	}

	public String getTeamId() {
		return teamId;
	}

	public void setTeamId(String teamId) {
		this.teamId = teamId;
	}

	public String getNoticeTitle() {
		return noticeTitle;
	}

	public void setNoticeTitle(String noticeTitle) {
		this.noticeTitle = noticeTitle;
	}

	public String getNoticeContent() {
		return noticeContent;
	}

	public void setNoticeContent(String noticeContent) {
		this.noticeContent = noticeContent;
	}

	public Date getEditDate() {
		return editDate;
	}

	public void setEditDate(Date editDate) {
		this.editDate = editDate;
	}

	public String getAttachementFilename() {
		return attachementFilename;
	}

	public void setAttachementFilename(String attachementFilename) {
		this.attachementFilename = attachementFilename;
	}

	public int getReadCount() {
		return readCount;
	}

	public void setReadCount(int readCount) {
		this.readCount = readCount;
	}

	@Override
	public String toString() {
		return "Notice [noticeId=" + noticeId + ", employeeId=" + employeeId + ", departmentId=" + departmentId
				+ ", teamId=" + teamId + ", noticeTitle=" + noticeTitle + ", noticeContent=" + noticeContent
				+ ", editDate=" + editDate + ", attachementFilename=" + attachementFilename + ", readCount=" + readCount
				+ "]";
	}
	
	
}
