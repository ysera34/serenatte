package org.serene.latte.dto;

public class PageDTO {
	
	private int pageSize; // 페이징당 보여주기 갯수
	private int firstPageNo; // 첫번째 페이지 번호
	private int finalPageNo; // 마지막 페이지 번호
	private int startPageNo; // 시작 페이지(특정 페이징 네비에서의 시작 번호)
	private int endPageNo; // 끝 페이지(특정 페이징 네비에서의 끝 번호)
	private int prevPageNo; // 이전 페이지 번호
	private int nextPageNo; // 다음 페이지 번호
	private int pageNo; // 페이지 번호
	private int totalCount; // 게시 글 전체수
	
	public PageDTO() {}
	public PageDTO(int pageSize, int firstPageNo, int prevPageNo,
			int startPageNo, int pageNo, int endPageNo, int nextPageNo,
			int finalPageNo, int totalCount) {
		this.pageSize = pageSize;
		this.firstPageNo = firstPageNo;
		this.prevPageNo = prevPageNo;
		this.startPageNo = startPageNo;
		this.pageNo = pageNo;
		this.endPageNo = endPageNo;
		this.nextPageNo = nextPageNo;
		this.finalPageNo = finalPageNo;
		this.totalCount = totalCount;
	}
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	public int getFirstPageNo() {
		return firstPageNo;
	}
	public void setFirstPageNo(int firstPageNo) {
		this.firstPageNo = firstPageNo;
	}
	public int getPrevPageNo() {
		return prevPageNo;
	}
	public void setPrevPageNo(int prevPageNo) {
		this.prevPageNo = prevPageNo;
	}
	public int getStartPageNo() {
		return startPageNo;
	}
	public void setStartPageNo(int startPageNo) {
		this.startPageNo = startPageNo;
	}
	public int getPageNo() {
		return pageNo;
	}
	public void setPageNo(int pageNo) {
		this.pageNo = pageNo;
	}
	public int getEndPageNo() {
		return endPageNo;
	}
	public void setEndPageNo(int endPageNo) {
		this.endPageNo = endPageNo;
	}
	public int getNextPageNo() {
		return nextPageNo;
	}
	public void setNextPageNo(int nextPageNo) {
		this.nextPageNo = nextPageNo;
	}
	public int getFinalPageNo() {
		return finalPageNo;
	}
	public void setFinalPageNo(int finalPageNo) {
		this.finalPageNo = finalPageNo;
	}
	public int getTotalCount() {
		return totalCount;
	}
	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
	}
	@Override
	public String toString() {
		return "PageDTO [pageSize=" + pageSize + ", firstPageNo=" + firstPageNo
				+ ", prevPageNo=" + prevPageNo + ", startPageNo=" + startPageNo
				+ ", pageNo=" + pageNo + ", endPageNo=" + endPageNo
				+ ", nextPageNo=" + nextPageNo + ", finalPageNo=" + finalPageNo
				+ ", totalCount=" + totalCount + "]";
	}
	
}
