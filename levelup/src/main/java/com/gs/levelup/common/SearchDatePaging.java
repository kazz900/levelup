package com.gs.levelup.common;

import java.sql.Date;

public class SearchDatePaging {
	private String keyword;
	private int startRow;  //페이지에 출력할 시작행
	private int endRow;   //페이지에 출력할 끝행
	private Date begin;
	private Date end;
	
	public SearchDatePaging() {}

	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

	public int getStartRow() {
		return startRow;
	}

	public void setStartRow(int startRow) {
		this.startRow = startRow;
	}

	public int getEndRow() {
		return endRow;
	}

	public void setEndRow(int endRow) {
		this.endRow = endRow;
	}

	public Date getBegin() {
		return begin;
	}

	public void setBegin(Date begin) {
		this.begin = begin;
	}

	public Date getEnd() {
		return end;
	}

	public void setEnd(Date end) {
		this.end = end;
	}

	@Override
	public String toString() {
		return "SearchDatePaging [keyword=" + keyword + ", startRow=" + startRow + ", endRow=" + endRow + ", begin="
				+ begin + ", end=" + end + "]";
	}
	
}
