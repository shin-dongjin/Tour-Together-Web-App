package com.cndy.tt.diary;

import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

@Service("diaryService")
public class DiaryServiceImpl implements DiaryService {
	@Resource(name="diaryDao")
	private DiaryDao diaryDao;
	
	@Override
	public List<Diary> listService() {
		return diaryDao.list();
	}

	@Override
	public boolean insertService(Diary diary) {
		return diaryDao.insert(diary);
	}

	@Override
	public void editService(Diary diary) {
		diaryDao.edit(diary);
	}

	@Override
	public void deleteService(long diary_no) {
		diaryDao.delete(diary_no);
	}

	@Override
	public List<Diary> contentService(long diary_no) {
		System.out.println(" DiaryServiceImpl diary_no : "+ diary_no);
		
		diaryDao.updateCountRead(diary_no);
		List<Diary> content = diaryDao.content(diary_no);
		
		System.out.println("DiaryServiceImpl : diary content "+content.get(0).getDiary_content()
			+" count read: "+content.get(0).getCount_read());
		return content;
	}

	@Override
	public HashMap<String, Integer> indexService() {
		HashMap<String, Integer> diary = new HashMap<String, Integer>();
		diary.put("diaryThisMonth", diaryDao.thisMonth());
		diary.put("diaryThisWeek", diaryDao.thisWeek());
		
		return diary;
	}

	@Override
	public void userLikeService(long diary_no) {
		diaryDao.userLike(diary_no);
	}
}
