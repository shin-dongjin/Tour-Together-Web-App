package com.cndy.tt.paging;

//1. PagingVo
public class PagingVo {
	
	private int pageCnt;		
	private int index;			
	private int pageStartNum;	
	private int listCnt;		
	private int total;			
	
	{
		pageCnt = 5; 
		index = 0;
		pageStartNum = 1;
		listCnt = 9;
	}
	
	public PagingVo() {}
	
	public int getStart() {
		return index*listCnt+1;
	}
	public int getLast() {
		return (index*listCnt)+listCnt;
	}
	public int getPageLastNum() {
		int remainListCnt = total-listCnt*(pageStartNum-1);
		int remainPageCnt = remainListCnt/listCnt;
		if(remainListCnt%listCnt != 0) {
			remainPageCnt++;
		}
		int pageLastNum = 0;
		if(remainListCnt <= listCnt) {
			pageLastNum = pageStartNum;
		}else if(remainPageCnt <= pageCnt) {
			pageLastNum = remainPageCnt+pageStartNum-1;
		}else {
			pageLastNum = pageCnt+pageStartNum-1;
		}
		return pageLastNum;
	}
	public boolean getLastChk() {
		int n = (int)Math.ceil((double)total/listCnt);
		return getPageLastNum()==n ? false : n==0 ? false : true;
	}
	
	public int getPageCnt() {
		return pageCnt;
	}
	public void setPageCnt(int pageCnt) {
		this.pageCnt = pageCnt;
	}
	public int getIndex() {
		return index;
	}
	public void setIndex(int index) {
		this.index = index;
	}
	public int getPageStartNum() {
		return pageStartNum;
	}
	public void setPageStartNum(int pageStartNum) {
		this.pageStartNum = pageStartNum;
	}
	public int getListCnt() {
		return listCnt;
	}
	public void setListCnt(int listCnt) {
		this.listCnt = listCnt;
	}
	public int getTotal() {
		return total;
	}
	public void setTotal(int total) {
		this.total = total;
	}
	
	@Override
	public String toString() {
		return "PagingDto [pageCnt=" + pageCnt + ", index=" + index + ", pageStartNum=" + pageStartNum + ", listCnt="
				+ listCnt + ", total=" + total + "]";
	}
	
}
