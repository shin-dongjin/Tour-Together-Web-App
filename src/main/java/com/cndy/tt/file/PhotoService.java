package com.cndy.tt.file;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

@Service("photoService")
public class PhotoService {
	
	@Resource(name="photoDao")
	private PhotoDao photoDao;
	
	public void insertService(Photo photo) {
		photoDao.insert(photo);
	}
	
	public List<Photo> selectService(String email){
		return photoDao.select(email);
	}
	
	public String selectPathService(long diary_no){
		return photoDao.selectPath(diary_no);
	}
}
