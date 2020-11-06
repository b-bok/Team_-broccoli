package com.kh.common;

import java.io.File;

import com.oreilly.servlet.multipart.FileRenamePolicy;

public class MyFileRenamePolicy implements FileRenamePolicy {
	
	// 기존의 (원본파일)을 전달받아서 수정명 작업을 다 마친 수정된 파일을 반환해주는 메소드
	
	@Override
	public File rename(File originFile) {
		
		String originName = originFile.getName();
		
	
		
	}
}
