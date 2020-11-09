package com.kh.common;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;

import com.oreilly.servlet.multipart.FileRenamePolicy;

public class MyFileRenamePolicy implements FileRenamePolicy {
	
	// 기존의 (원본파일)을 전달받아서 수정명 작업을 다 마친 수정된 파일을 반환해주는 메소드
	
	@Override
	public File rename(File originFile) {
		
		String originName = originFile.getName();
		
		String folderPath =  "resources/product_upfiles/";
		
		String cat = null; // 카테고리 분류 (f : 기본이미지, s:추가이미지, th: 썸네일이미지
		
		 switch(originName.charAt(0)) {
		 case 'f': cat = "f";
		 case 's': cat = "s";
		 case 't': cat = "th";
		 }
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
		String currentTime = sdf.format(new Date());
		
		 
		 // 파일 확장자명
		 int dot = originName.lastIndexOf(".");
		 String ext = originName.substring(dot); //ex) ".jpg"
		
		 //String fileName = folderPath + cat + currentTime + ext;
		 String fileName =  cat + currentTime + ext;
		 
		 return new File(originFile.getParent(), fileName);
		 
	}
}
