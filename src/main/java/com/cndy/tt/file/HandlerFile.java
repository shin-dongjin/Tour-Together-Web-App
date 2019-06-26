package com.cndy.tt.file;

import java.io.File;
import java.io.IOException;
import java.net.URLEncoder;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.FileUtils;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

public class HandlerFile {
	//public static final String FILE_STORE="C:/GY/IT/sts-bundle/sts-3.9.4.RELEASE/workspace/TourTogether/STORE";
	
	private MultipartHttpServletRequest multipartRequest;
	private String filePath;
	private Map<String, String> fileNames;
	private String oldName;
	private HttpServletResponse resp;
	private byte[] fileByte;
	
	// upload
	public HandlerFile(MultipartHttpServletRequest multipartRequest, String filePath) {
		this.multipartRequest = multipartRequest;
		this.filePath = filePath;
		fileNames = new HashMap<String, String>();
	}
	// down
	public HandlerFile(HttpServletResponse resp, String filePath, String saveName, String oldName) {
		this.resp = resp;
		this.filePath = filePath + "/" + saveName;
		this.oldName = oldName;
	}
	// delete
	public HandlerFile(String filePath, String saveName) {
		this.filePath = filePath + "/" + saveName;
	}	
	
	// upload
	public Map<String, String> getUploadFileName() {
		upload();
		return fileNames;
	}
	// down
	public byte[] getDownloadFileByte() {
		dowonload();
		return fileByte;
	}
	// delete
	public void deleteFileExecute() {
		File file = new File(filePath);
		if(file.exists()) {
			file.delete();
		}
	}
	
	// 파일 업로드 처리
	private void upload() {
		File fStore = new File(filePath);
    	if(!fStore.exists()) fStore.mkdirs();
    	
		Iterator<String> itr = multipartRequest.getFileNames();
		StringBuffer sb = null;
		while (itr.hasNext()) { // 받은 파일들을 모두 돌린다.
			MultipartFile mpf = multipartRequest.getFile(itr.next());
			sb = new StringBuffer();
			String oldFileName = mpf.getOriginalFilename(); // 파일명
			String saveFileName = sb.append(new SimpleDateFormat("yyyyMMddhhmmss").format(System.currentTimeMillis()))
									.append(UUID.randomUUID().toString())
									.append(oldFileName.substring(oldFileName.lastIndexOf("."))).toString();
			String fileFullPath = filePath + "/" + saveFileName; // 파일 전체 경로
			System.out.println("HandlerFile oldFileName: "+oldFileName);
			System.out.println("HandlerFile saveFileName: "+saveFileName);
			System.out.println("HandlerFile fileFullPath: "+fileFullPath);
			
			try {
				// 파일 저장
				mpf.transferTo(new File(fileFullPath));
				
				fileNames.put("oldFileName", oldFileName);
				fileNames.put("saveFileName", saveFileName);
				fileNames.put("fileFullPath", fileFullPath);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}
	// down
	private void dowonload() {
		try {
			fileByte = FileUtils.readFileToByteArray(new File(filePath));
			resp.setContentType("application/octet-stream");
			resp.setContentLength(fileByte.length);
			// 다운로드시 변경할 파일명
			resp.setHeader("Content-Disposition", "attachment; fileName=\"" + URLEncoder.encode(oldName, "UTF-8") + "\";");
			resp.setHeader("Content-Transfer-Encoding", "binary");
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}