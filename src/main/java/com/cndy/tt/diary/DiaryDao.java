package com.cndy.tt.diary;

import java.util.List;

public interface DiaryDao {
	List<Diary> list();
	boolean insert(Diary diary);
	void edit(Diary diary);
	void delete(long diary_no);
	List<Diary> content(long diary_no);
	void updateCountRead(long diary_no);
	int thisMonth();
	int thisWeek();
	void userLike(long diary_no);
}
