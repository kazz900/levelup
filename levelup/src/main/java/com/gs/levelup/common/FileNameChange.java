package com.gs.levelup.common;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.text.SimpleDateFormat;

public class FileNameChange {

	public static String change(String originalFileName,String formatStr){
		String renameFileName = null;
		
		//바꿀 파일명에 대한 문자열 만들기
		//게시글 등록 요청 시점의 날짜정보를 이용함
		SimpleDateFormat sdf = new SimpleDateFormat(formatStr);
		
		//변경할 파일명 만들기
		renameFileName = sdf.format(new java.sql.Date(System.currentTimeMillis()));
		
		return renameFileName;
	}
}
